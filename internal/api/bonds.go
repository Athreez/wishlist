package api

import (
	"database/sql"
	"net/http"

	"github.com/gin-gonic/gin"
)

// ListBonds handles GET /bonds, returning every bond in the read-only
// bonds table (populated only via scripts/import_bonds.py).
func (h *Handler) ListBonds(c *gin.Context) {
	const query = `
		SELECT isin, bond_name, bond_yield::text, payout_frequency, maturity_date::text,
		       min_investment::text, rating, logo_url, detail_url, tenure::text
		FROM bonds
		ORDER BY bond_name`

	rows, err := h.Pool.Query(c.Request.Context(), query)
	if err != nil {
		status, msg := dbErrorStatus(err, nil)
		writeError(c, status, msg)
		return
	}
	defer rows.Close()

	bonds := make([]bondListResponse, 0)
	for rows.Next() {
		var (
			b               bondListResponse
			bondYield       sql.NullString
			payoutFrequency sql.NullString
			maturityDate    sql.NullString
			minInvestment   sql.NullString
			rating          sql.NullString
			logoURL         sql.NullString
			detailURL       sql.NullString
		)
		if err := rows.Scan(
			&b.Isin, &b.Name, &bondYield, &payoutFrequency, &maturityDate,
			&minInvestment, &rating, &logoURL, &detailURL, &b.TenureYears,
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
		bonds = append(bonds, b)
	}
	if err := rows.Err(); err != nil {
		writeError(c, http.StatusInternalServerError, "internal error")
		return
	}

	c.JSON(http.StatusOK, bonds)
}
