package api

import (
	"database/sql"
	"errors"
	"net/http"
	"strings"

	"github.com/gin-gonic/gin"
	"github.com/google/uuid"
	"github.com/jackc/pgx/v5"
)

var wishlistConstraintMessages = map[string]string{
	"idx_wishlists_name_lower": "wishlist name already exists",
}

func (h *Handler) CreateWishlist(c *gin.Context) {
	var req createWishlistRequest
	if err := c.ShouldBindJSON(&req); err != nil {
		writeError(c, http.StatusBadRequest, "invalid request body")
		return
	}
	name := strings.TrimSpace(req.Name)
	if name == "" {
		writeError(c, http.StatusBadRequest, "name is required")
		return
	}

	const query = `
		INSERT INTO wishlists (id, name)
		SELECT $1, $2
		WHERE (SELECT COUNT(*) FROM wishlists) < 5
		RETURNING id, name`
	var wl wishlistResponse
	err := h.Pool.QueryRow(c.Request.Context(), query, uuid.New(), name).Scan(&wl.ID, &wl.Name)
	if err != nil {
		if errors.Is(err, pgx.ErrNoRows) {
			writeError(c, http.StatusConflict, "maximum of 5 wishlists reached")
			return
		}
		status, msg := dbErrorStatus(err, wishlistConstraintMessages)
		writeError(c, status, msg)
		return
	}
	wl.ItemCount = 0

	c.JSON(http.StatusCreated, wl)
}

func (h *Handler) ListWishlists(c *gin.Context) {
	const query = `
		SELECT w.id, w.name, COUNT(wb.bond_isin) AS item_count
		FROM wishlists w
		LEFT JOIN wishlist_bonds wb ON wb.wishlist_id = w.id
		GROUP BY w.id, w.name
		ORDER BY w.name`

	rows, err := h.Pool.Query(c.Request.Context(), query)
	if err != nil {
		status, msg := dbErrorStatus(err, nil)
		writeError(c, status, msg)
		return
	}
	defer rows.Close()

	resp := make([]wishlistResponse, 0)
	for rows.Next() {
		var wl wishlistResponse
		if err := rows.Scan(&wl.ID, &wl.Name, &wl.ItemCount); err != nil {
			writeError(c, http.StatusInternalServerError, "internal error")
			return
		}
		resp = append(resp, wl)
	}
	if err := rows.Err(); err != nil {
		writeError(c, http.StatusInternalServerError, "internal error")
		return
	}

	c.JSON(http.StatusOK, resp)
}

func (h *Handler) GetWishlistDetail(c *gin.Context) {
	id, err := uuid.Parse(c.Param("wishlistId"))
	if err != nil {
		writeError(c, http.StatusBadRequest, "invalid wishlistId")
		return
	}

	const wishlistQuery = `SELECT id, name FROM wishlists WHERE id = $1`
	var wl wishlistResponse
	err = h.Pool.QueryRow(c.Request.Context(), wishlistQuery, id).Scan(&wl.ID, &wl.Name)
	if err != nil {
		if errors.Is(err, pgx.ErrNoRows) {
			writeError(c, http.StatusNotFound, "wishlist not found")
			return
		}
		status, msg := dbErrorStatus(err, nil)
		writeError(c, status, msg)
		return
	}

	const bondsQuery = `
		SELECT
			b.isin, b.bond_name, b.bond_yield::text, b.payout_frequency, b.maturity_date::text,
			b.min_investment::text, b.rating, b.logo_url, b.detail_url, b.tenure::text,
			wb.color, wb.is_pinned, wb.position
		FROM wishlist_bonds wb
		JOIN bonds b ON b.isin = wb.bond_isin
		WHERE wb.wishlist_id = $1
		ORDER BY wb.is_pinned DESC, wb.position ASC`

	rows, err := h.Pool.Query(c.Request.Context(), bondsQuery, id)
	if err != nil {
		status, msg := dbErrorStatus(err, nil)
		writeError(c, status, msg)
		return
	}
	defer rows.Close()

	bonds := make([]bondResponse, 0)
	for rows.Next() {
		var (
			b               bondResponse
			bondYield       sql.NullString
			payoutFrequency sql.NullString
			maturityDate    sql.NullString
			minInvestment   sql.NullString
			rating          sql.NullString
			logoURL         sql.NullString
			detailURL       sql.NullString
			color           sql.NullString
		)
		if err := rows.Scan(
			&b.Isin, &b.Name, &bondYield, &payoutFrequency, &maturityDate,
			&minInvestment, &rating, &logoURL, &detailURL, &b.TenureYears,
			&color, &b.IsPinned, &b.Position,
		); err != nil {
			writeError(c, http.StatusInternalServerError, "internal error")
			return
		}
		b.Yield = nullStringPtr(bondYield)
		b.PayoutFrequency = nullStringPtr(payoutFrequency)
		b.MaturityDate = nullStringPtr(maturityDate)
		b.MinInvestment = nullStringPtr(minInvestment)
		b.Rating = nullStringPtr(rating)
		b.ImgURL = nullStringPtr(logoURL)
		b.BondScannerURL = nullStringPtr(detailURL)
		b.Color = nullStringPtr(color)
		bonds = append(bonds, b)
	}
	if err := rows.Err(); err != nil {
		writeError(c, http.StatusInternalServerError, "internal error")
		return
	}

	c.JSON(http.StatusOK, wishlistDetailResponse{
		ID:        wl.ID,
		Name:      wl.Name,
		ItemCount: len(bonds),
		Bonds:     bonds,
	})
}

func (h *Handler) RenameWishlist(c *gin.Context) {
	id, err := uuid.Parse(c.Param("wishlistId"))
	if err != nil {
		writeError(c, http.StatusBadRequest, "invalid wishlistId")
		return
	}

	var req renameWishlistRequest
	if err := c.ShouldBindJSON(&req); err != nil {
		writeError(c, http.StatusBadRequest, "invalid request body")
		return
	}
	name := strings.TrimSpace(req.Name)
	if name == "" {
		writeError(c, http.StatusBadRequest, "name is required")
		return
	}

	const query = `UPDATE wishlists SET name = $2, updated_at = now() WHERE id = $1 RETURNING id, name`
	var wl wishlistResponse
	err = h.Pool.QueryRow(c.Request.Context(), query, id, name).Scan(&wl.ID, &wl.Name)
	if err != nil {
		if errors.Is(err, pgx.ErrNoRows) {
			writeError(c, http.StatusNotFound, "wishlist not found")
			return
		}
		status, msg := dbErrorStatus(err, wishlistConstraintMessages)
		writeError(c, status, msg)
		return
	}

	const countQuery = `SELECT COUNT(*) FROM wishlist_bonds WHERE wishlist_id = $1`
	if err := h.Pool.QueryRow(c.Request.Context(), countQuery, id).Scan(&wl.ItemCount); err != nil {
		writeError(c, http.StatusInternalServerError, "internal error")
		return
	}

	c.JSON(http.StatusOK, wl)
}

func (h *Handler) DeleteWishlist(c *gin.Context) {
	id, err := uuid.Parse(c.Param("wishlistId"))
	if err != nil {
		writeError(c, http.StatusBadRequest, "invalid wishlistId")
		return
	}

	const query = `DELETE FROM wishlists WHERE id = $1`
	tag, err := h.Pool.Exec(c.Request.Context(), query, id)
	if err != nil {
		status, msg := dbErrorStatus(err, nil)
		writeError(c, status, msg)
		return
	}
	if tag.RowsAffected() == 0 {
		writeError(c, http.StatusNotFound, "wishlist not found")
		return
	}

	c.Status(http.StatusNoContent)
}
