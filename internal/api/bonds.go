package api

import (
	"database/sql"
	"net/http"
	"strings"

	"github.com/gin-gonic/gin"
)

// fuzzyNameThreshold is the minimum pg_trgm word_similarity score for a
// bond_name to count as a fuzzy match. Chosen explicitly here (rather than
// relying on pg_trgm.word_similarity_threshold, a per-connection GUC) so
// the cutoff is self-contained and doesn't depend on session/pool state.
// word_similarity (vs. plain similarity) scores a short query against the
// best-matching extent of the full name, so "Adani" scores well against
// "Adani Airports Jun '28" instead of being diluted by the whole string.
const fuzzyNameThreshold = 0.3

// ListBonds handles GET /bonds, returning every bond in the read-only
// bonds table (populated only via scripts/import_bonds.py). An optional
// ?q= param filters by ISIN (substring) and fuzzy-matches bond_name via
// pg_trgm word similarity, ranking results by best match first.
func (h *Handler) ListBonds(c *gin.Context) {
	q := strings.TrimSpace(c.Query("q"))

	const query = `
		SELECT isin, bond_name, bond_yield::text, payout_frequency, maturity_date::text,
		       min_investment::text, rating, logo_url, detail_url, tenure::text
		FROM bonds
		WHERE $1 = '' OR isin ILIKE '%' || $1 || '%' OR word_similarity($1, bond_name) > $2
		ORDER BY
			CASE WHEN $1 = '' THEN NULL ELSE word_similarity($1, bond_name) END DESC NULLS LAST,
			bond_name`

	rows, err := h.Pool.Query(c.Request.Context(), query, q, fuzzyNameThreshold)
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
