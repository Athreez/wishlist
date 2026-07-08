package api

import (
	"database/sql"

	"github.com/google/uuid"
)

type wishlistResponse struct {
	ID        uuid.UUID `json:"id"`
	Name      string    `json:"name"`
	ItemCount int       `json:"itemCount"`
}

type bondResponse struct {
	Isin            string  `json:"isin"`
	Name            string  `json:"name"`
	Yield           *string `json:"yield"`
	PayoutFrequency *string `json:"payoutFrequency"`
	MaturityDate    *string `json:"maturityDate"`
	MinInvestment   *string `json:"minInvestment"`
	Rating          *string `json:"rating"`
	BondScannerURL  *string `json:"bondScannerUrl"`
	ImgURL          *string `json:"imgUrl"`
	TenureYears     string  `json:"tenureYears"`

	// Wishlist-item-scoped fields, only populated when a bond is returned as
	// part of a wishlist's item list (sourced from wishlist_bonds, not bonds).
	Color    *string `json:"color"`
	IsPinned bool    `json:"isPinned"`
	Position int     `json:"position"`
}

// bondListResponse is a bond returned outside any wishlist context (e.g.
// GET /bonds), so it omits the wishlist-item-scoped color/isPinned/position
// fields that bondResponse carries.
type bondListResponse struct {
	Isin            string  `json:"isin"`
	Name            string  `json:"name"`
	Yield           *string `json:"yield"`
	PayoutFrequency *string `json:"payoutFrequency"`
	MaturityDate    *string `json:"maturityDate"`
	MinInvestment   *string `json:"minInvestment"`
	Rating          *string `json:"rating"`
	BondScannerURL  *string `json:"bondScannerUrl"`
	ImgURL          *string `json:"imgUrl"`
	TenureYears     string  `json:"tenureYears"`
}

type wishlistDetailResponse struct {
	ID        uuid.UUID      `json:"id"`
	Name      string         `json:"name"`
	ItemCount int            `json:"itemCount"`
	Bonds     []bondResponse `json:"bonds"`
}

type itemResponse struct {
	WishlistID uuid.UUID `json:"wishlistId"`
	BondID     string    `json:"bondId"`
	Color      *string   `json:"color"`
	IsPinned   bool      `json:"isPinned"`
	Position   int       `json:"position"`
}

type createWishlistRequest struct {
	Name string `json:"name"`
}

type renameWishlistRequest struct {
	Name string `json:"name"`
}

type addItemRequest struct {
	BondID   string  `json:"bondId"`
	Color    *string `json:"color"`
	IsPinned *bool   `json:"isPinned"`
	Position *int    `json:"position"`
}

// updateItemRequest is the PATCH body for updating a bond's color, pin
// state, and/or position within a wishlist. A nil field means "leave this
// field untouched" rather than "clear it."
type updateItemRequest struct {
	Color    *string `json:"color"`
	IsPinned *bool   `json:"isPinned"`
	Position *int    `json:"position"`
}

func nullStringPtr(ns sql.NullString) *string {
	if !ns.Valid {
		return nil
	}
	return &ns.String
}
