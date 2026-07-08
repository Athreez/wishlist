package api

import (
	"errors"
	"net/http"

	"github.com/gin-gonic/gin"
	"github.com/jackc/pgerrcode"
	"github.com/jackc/pgx/v5"
	"github.com/jackc/pgx/v5/pgconn"
)

func writeError(c *gin.Context, status int, msg string) {
	c.JSON(status, gin.H{"error": msg})
}

// dbErrorStatus maps a DB error to an HTTP status code and message.
// constraintMessages lets a handler give a friendlier message for a specific
// foreign key/unique constraint name (e.g. distinguishing a missing wishlist
// from a missing bond on the same insert).
func dbErrorStatus(err error, constraintMessages map[string]string) (int, string) {
	if errors.Is(err, pgx.ErrNoRows) {
		return http.StatusNotFound, "not found"
	}
	var pgErr *pgconn.PgError
	if errors.As(err, &pgErr) {
		if msg, ok := constraintMessages[pgErr.ConstraintName]; ok {
			switch pgErr.Code {
			case pgerrcode.UniqueViolation:
				return http.StatusConflict, msg
			case pgerrcode.ForeignKeyViolation:
				return http.StatusNotFound, msg
			}
		}
		switch pgErr.Code {
		case pgerrcode.UniqueViolation:
			return http.StatusConflict, "already exists"
		case pgerrcode.ForeignKeyViolation:
			return http.StatusNotFound, "referenced entity not found"
		}
	}
	return http.StatusInternalServerError, "internal error"
}
