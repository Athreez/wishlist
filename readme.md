endpoints
create wishlist
POST http://localhost:8080/wishlists

{
  "name": "w1"
}

add bond
POST http://localhost:8080/wishlists/<wishlistId>/items

{
  "bondId": "IN0020230036",
  "color": "#FF0000", (optional)
  "isPinned": true, (optional)
  "position": 5 (optional)
}

get all wishlists
GET http://localhost:8080/wishlists

get all bonds in a wishlists
GET http://localhost:8080/wishlists/<wishlistId>

get all the bonds
GET http://localhost:8080/bonds


change name
PUT http://localhost:8080/wishlists/<wishlistId>
{
  "name": "Renamed Wishlist"
}

update 

PATCH http://localhost:8080/wishlists/<wishlistId>/items/<bondId>
{
  "isPinned": true,
  "color": "#00FF00"
}

delete wishlist
DELETE http://localhost:8080/wishlists/<wishlistId>


delete bond in wishlist
DELETE http://localhost:8080/wishlists/<wishlistId>/items/<bondId>


