CREATE TABLE meal_categories (
    category_id    BIGSERIAL PRIMARY KEY,
    name           VARCHAR(50) UNIQUE NOT NULL,
    serving_start  TIME NOT NULL,
    serving_end    TIME NOT NULL,
    display_order  SMALLINT UNIQUE NOT NULL,

    CONSTRAINT chk_name CHECK (name IN ('BREAKFAST', 'LUNCH', 'SNACKS', 'DINNER')),
    CONSTRAINT chk_serving_time CHECK (serving_end > serving_start)
);
