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

var addItemConstraintMessages = map[string]string{
	"fk_wishlist":         "wishlist not found",
	"fk_bond":             "bond not found",
	"wishlist_bonds_pkey": "bond already in wishlist",
}

func (h *Handler) AddItem(c *gin.Context) {
	wishlistID, err := uuid.Parse(c.Param("wishlistId"))
	if err != nil {
		writeError(c, http.StatusBadRequest, "invalid wishlistId")
		return
	}

	var req addItemRequest
	if err := c.ShouldBindJSON(&req); err != nil {
		writeError(c, http.StatusBadRequest, "invalid request body")
		return
	}
	bondID := strings.TrimSpace(req.BondID)
	if bondID == "" {
		writeError(c, http.StatusBadRequest, "bondId is required")
		return
	}
	isPinned := false
	if req.IsPinned != nil {
		isPinned = *req.IsPinned
	}

	const query = `
		INSERT INTO wishlist_bonds (wishlist_id, bond_isin, color, is_pinned, position)
		SELECT
			$1, $2, $3, $4,
			COALESCE($5, (SELECT COALESCE(MAX(position) + 1, 0) FROM wishlist_bonds WHERE wishlist_id = $1))
		WHERE (SELECT COUNT(*) FROM wishlist_bonds WHERE wishlist_id = $1) < 10
		RETURNING wishlist_id, bond_isin, color, is_pinned, position`

	var (
		item  itemResponse
		color sql.NullString
	)
	err = h.Pool.QueryRow(c.Request.Context(), query, wishlistID, bondID, req.Color, isPinned, req.Position).
		Scan(&item.WishlistID, &item.BondID, &color, &item.IsPinned, &item.Position)
	if err != nil {
		if errors.Is(err, pgx.ErrNoRows) {
			writeError(c, http.StatusConflict, "maximum of 10 bonds per wishlist reached")
			return
		}
		status, msg := dbErrorStatus(err, addItemConstraintMessages)
		writeError(c, status, msg)
		return
	}
	item.Color = nullStringPtr(color)

	c.JSON(http.StatusCreated, item)
}

// UpdateItem partially updates a bond's color, pin state, and/or position
// within a wishlist. It never moves the bond to a different wishlist.
func (h *Handler) UpdateItem(c *gin.Context) {
	wishlistID, err := uuid.Parse(c.Param("wishlistId"))
	if err != nil {
		writeError(c, http.StatusBadRequest, "invalid wishlistId")
		return
	}
	bondID := c.Param("bondId")

	var req updateItemRequest
	if err := c.ShouldBindJSON(&req); err != nil {
		writeError(c, http.StatusBadRequest, "invalid request body")
		return
	}
	if req.Color == nil && req.IsPinned == nil && req.Position == nil {
		writeError(c, http.StatusBadRequest, "at least one of color, isPinned, position is required")
		return
	}

	const query = `
		UPDATE wishlist_bonds
		SET
			color = COALESCE($3, color),
			is_pinned = COALESCE($4, is_pinned),
			position = COALESCE($5, position)
		WHERE wishlist_id = $1 AND bond_isin = $2
		RETURNING wishlist_id, bond_isin, color, is_pinned, position`

	var (
		item  itemResponse
		color sql.NullString
	)
	err = h.Pool.QueryRow(c.Request.Context(), query, wishlistID, bondID, req.Color, req.IsPinned, req.Position).
		Scan(&item.WishlistID, &item.BondID, &color, &item.IsPinned, &item.Position)
	if err != nil {
		if errors.Is(err, pgx.ErrNoRows) {
			writeError(c, http.StatusNotFound, "bond not found in wishlist")
			return
		}
		status, msg := dbErrorStatus(err, nil)
		writeError(c, status, msg)
		return
	}
	item.Color = nullStringPtr(color)

	c.JSON(http.StatusOK, item)
}

func (h *Handler) RemoveItem(c *gin.Context) {
	wishlistID, err := uuid.Parse(c.Param("wishlistId"))
	if err != nil {
		writeError(c, http.StatusBadRequest, "invalid wishlistId")
		return
	}
	bondID := c.Param("bondId")

	const query = `DELETE FROM wishlist_bonds WHERE wishlist_id = $1 AND bond_isin = $2`
	tag, err := h.Pool.Exec(c.Request.Context(), query, wishlistID, bondID)
	if err != nil {
		status, msg := dbErrorStatus(err, nil)
		writeError(c, status, msg)
		return
	}
	if tag.RowsAffected() == 0 {
		writeError(c, http.StatusNotFound, "bond not found in wishlist")
		return
	}

	c.Status(http.StatusNoContent)
}
