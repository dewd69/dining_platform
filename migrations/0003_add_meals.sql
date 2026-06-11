CREATE TABLE meals (
    meal_id      BIGSERIAL PRIMARY KEY,
    category_id  BIGINT NOT NULL,
    name         VARCHAR(100) NOT NULL,
    description  TEXT,
    meal_type    VARCHAR(25) NOT NULL,
    is_veg       BOOLEAN NOT NULL DEFAULT true,
    created_at   TIMESTAMPTZ NOT NULL DEFAULT NOW(),

    CONSTRAINT fk_category
        FOREIGN KEY (category_id)
        REFERENCES meal_categories(category_id)
        ON DELETE RESTRICT,

    CONSTRAINT uq_meal_per_category
        UNIQUE (name, category_id),

    CONSTRAINT chk_meal_type
        CHECK (meal_type IN ('MAIN', 'BREADS', 'BEVERAGES', 'SALAD', 'COMPLIMENTARY'))
);
