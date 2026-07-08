# Wishlist API

A backend service for managing bond wishlists — create wishlists, add/remove/reorder bonds within them, and browse the bond catalog with fuzzy search. Built with Go, Gin, and PostgreSQL. Single-user, no authentication.

## Tech stack

- **Go 1.26** + **Gin** — HTTP routing/middleware
- **PostgreSQL** + **pgx/v5** (`pgxpool`) — database access, no ORM
- **pg_trgm** — Postgres extension for typo-tolerant fuzzy bond-name search
- **godotenv** — loads `.env` for local development

## Project structure

```
main.go                     entry point: config, DB pool, router, graceful shutdown
internal/api/
  routes.go                 route registration
  dto.go                    request/response JSON shapes
  httpx.go                  shared error response + Postgres error -> HTTP status mapping
  wishlists.go              wishlist CRUD handlers
  items.go                  bond-in-wishlist handlers (add/update/remove)
  bonds.go                  read-only bond catalog + search
db/
  schema.sql / thor.sql     full schema (kept identical; no migration tool, hand-synced)
  seed_bonds.sql            generated bond data (see scripts/import_bonds.py)
scripts/
  import_bonds.py           regenerates db/seed_bonds.sql from the source CSV
postman_collection.json      importable Postman collection for manual testing
```

## Data model

Three tables — see `db/schema.sql` for the authoritative definition:

- **`bonds`** — the bond catalog. Read-only from the API; only populated via `scripts/import_bonds.py`. Key: `isin`.
- **`wishlists`** — `id, name, created_at, updated_at`. Name uniqueness is case-insensitive, enforced by a unique index on `LOWER(name)`.
- **`wishlist_bonds`** — join table between wishlists and bonds, with `color`, `position`, and `is_pinned` for per-wishlist customization. `ON DELETE CASCADE` on both foreign keys, so deleting a wishlist or a bond cleans up its mappings automatically.

## Setup

### 1. Prerequisites

- Go 1.26+
- PostgreSQL running locally (or reachable)

### 2. Configure

Copy the example env file and fill in your real database connection string:

```bash
cp .env.example .env
```

```
WISHLIST_DB_DSN=postgres://<user>:<password>@localhost:5432/<database>
```

`.env` is loaded automatically on startup (and gitignored — never commit it). You can also just set `WISHLIST_DB_DSN` as a real environment variable instead, which takes precedence.

### 3. Create the database and schema

```bash
createdb wish   # or: psql -c "CREATE DATABASE wish;"
psql "$WISHLIST_DB_DSN" -f db/schema.sql
```

### 4. Load bond data

The bonds table is seeded from `bondscanner_bonds_icon_with_tenure.csv`:

```bash
python scripts/import_bonds.py       # regenerates db/seed_bonds.sql
psql "$WISHLIST_DB_DSN" -f db/seed_bonds.sql
```

Re-run both any time the source CSV changes — the generated SQL is idempotent (`ON CONFLICT ... DO UPDATE`).

### 5. Install dependencies and run

```bash
go mod tidy
go run .
```

The server listens on `:8080`.

## API reference

All responses are JSON. All errors follow `{"error": "<message>"}` with an appropriate HTTP status code.

### Bonds (read-only)

**List / search bonds**
```
GET /bonds
GET /bonds?q=<search term>
```
`q` is optional. It matches ISIN by substring and bond name by typo-tolerant fuzzy match (Postgres `pg_trgm`), ranked best-match-first. Omit it to get the full catalog, alphabetical by name.

### Wishlists

**Create wishlist**
```
POST /wishlists
```
```json
{ "name": "My Wishlist" }
```
`201` on success. `400` if the name is empty (after trimming) or over 30 characters. `409` if the name already exists (case-insensitive) or if you already have 5 wishlists.

**List wishlists**
```
GET /wishlists
```
Returns `[{ "id", "name", "itemCount" }, ...]`.

**Get wishlist detail**
```
GET /wishlists/:wishlistId
```
Returns the wishlist plus its bonds, each with full bond details and its `color`/`isPinned`/`position`. Bonds are ordered pinned-first, then by `position`. `404` if the wishlist doesn't exist.

**Rename wishlist**
```
PUT /wishlists/:wishlistId
```
```json
{ "name": "Renamed Wishlist" }
```
Same name validation as create. `404` if the wishlist doesn't exist.

**Delete wishlist**
```
DELETE /wishlists/:wishlistId
```
`204` on success. Cascades to remove its bond mappings; the bonds themselves are untouched.

### Items (bonds within a wishlist)

**Add bond to wishlist**
```
POST /wishlists/:wishlistId/items
```
```json
{
  "bondId": "IN0020230036",
  "color": "#FF0000",
  "isPinned": true,
  "position": 5
}
```
Only `bondId` is required — `color`, `isPinned`, `position` are optional (position defaults to appending at the end). `201` on success. `404` if the wishlist or bond doesn't exist. `409` if the bond is already in this wishlist, or the wishlist already has 10 bonds.

**Update a bond's color/pin/position**
```
PATCH /wishlists/:wishlistId/items/:bondId
```
```json
{ "isPinned": true, "color": "#00FF00" }
```
All fields optional, but at least one is required. Omitted fields are left unchanged. `404` if that bond isn't in that wishlist.

**Remove bond from wishlist**
```
DELETE /wishlists/:wishlistId/items/:bondId
```
`204` on success, `404` if the bond isn't in that wishlist.

## Business rules

- Maximum **5 wishlists**.
- Maximum **10 bonds per wishlist**.
- Wishlist names: required, trimmed, **≤30 characters**, and **unique case-insensitively** (`"Retirement"` and `"retirement"` cannot coexist).
- Bonds are read-only via the API — only `scripts/import_bonds.py` writes to the `bonds` table.

## Testing

Import `postman_collection.json` into Postman for a ready-to-use set of requests (including error-case examples). The "Create Wishlist" request auto-saves its `id` into a collection variable so the rest of the requests just work without manual copy-pasting.

## Sharing on your local network

The server binds to all interfaces (`:8080`), so it's reachable from other devices on the same network at `http://<your-LAN-IP>:8080`. You'll need a Windows Firewall rule allowing inbound TCP 8080:

```powershell
New-NetFirewallRule -DisplayName "Wishlist API" -Direction Inbound -Protocol TCP -LocalPort 8080 -Action Allow
```

Postgres itself does not need to be exposed — only your local Go process talks to it.
