package api

import (
	"github.com/gin-gonic/gin"
	"github.com/jackc/pgx/v5/pgxpool"
)

type Handler struct {
	Pool *pgxpool.Pool
}

func RegisterRoutes(router *gin.Engine, pool *pgxpool.Pool) {
	h := &Handler{Pool: pool}

	router.GET("/bonds", h.ListBonds)

	wishlists := router.Group("/wishlists")
	{
		wishlists.POST("", h.CreateWishlist)
		wishlists.GET("", h.ListWishlists)
		wishlists.GET("/:wishlistId", h.GetWishlistDetail)
		wishlists.PUT("/:wishlistId", h.RenameWishlist)
		wishlists.DELETE("/:wishlistId", h.DeleteWishlist)
		wishlists.POST("/:wishlistId/items", h.AddItem)
		wishlists.PATCH("/:wishlistId/items/:bondId", h.UpdateItem)
		wishlists.DELETE("/:wishlistId/items/:bondId", h.RemoveItem)
	}
}
