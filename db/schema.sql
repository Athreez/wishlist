CREATE EXTENSION IF NOT EXISTS pg_trgm;

CREATE TABLE bonds (
    isin VARCHAR(12) NOT NULL,
    bond_name TEXT NOT NULL,
    rating VARCHAR(20),
    bond_yield DECIMAL(6,2),
    min_investment BIGINT,
    payout_frequency VARCHAR(30),
    logo_url TEXT,
    detail_url TEXT,
    tenure DECIMAL(6,2) NOT NULL,
    maturity_date DATE,
    PRIMARY KEY (isin)
);

-- Enables typo-tolerant fuzzy search on bond_name via trigram similarity.
CREATE INDEX idx_bonds_name_trgm ON bonds USING gin (bond_name gin_trgm_ops);

CREATE TABLE wishlists (
    id UUID NOT NULL,
    name VARCHAR(50) NOT NULL,
    created_at TIMESTAMPTZ NOT NULL DEFAULT now(),
    updated_at TIMESTAMPTZ NOT NULL DEFAULT now(),
    PRIMARY KEY (id)
);

-- Enforces case-insensitive uniqueness of wishlist names (e.g. "Retirement"
-- and "retirement" cannot coexist).
CREATE UNIQUE INDEX idx_wishlists_name_lower ON wishlists (LOWER(name));

CREATE TABLE wishlist_bonds (
    wishlist_id UUID NOT NULL,
    bond_isin VARCHAR(12) NOT NULL,
    created_at TIMESTAMPTZ NOT NULL DEFAULT now(),
    color VARCHAR(7),
    position INT NOT NULL DEFAULT 0,
    is_pinned BOOLEAN NOT NULL DEFAULT FALSE,

    PRIMARY KEY (wishlist_id, bond_isin),

    CONSTRAINT fk_wishlist
        FOREIGN KEY (wishlist_id)
        REFERENCES wishlists (id)
        ON DELETE CASCADE
        ON UPDATE CASCADE,

    CONSTRAINT fk_bond
        FOREIGN KEY (bond_isin)
        REFERENCES bonds (isin)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);

-- Supports GET /wishlists/:wishlistId ordering: pinned bonds first, then
-- manual position order, scoped per wishlist.
CREATE INDEX idx_wishlist_bonds_order ON wishlist_bonds (wishlist_id, is_pinned DESC, position ASC);
