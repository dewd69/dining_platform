CREATE TABLE meal_schedule (
    schedule_id  BIGSERIAL PRIMARY KEY,
    meal_id      BIGINT NOT NULL,
    category_id  BIGINT NOT NULL,
    day_of_week  SMALLINT NOT NULL,
    valid_from   DATE NOT NULL,
    valid_until  DATE DEFAULT NULL,

    CONSTRAINT fk_meal
        FOREIGN KEY (meal_id)
        REFERENCES meals(meal_id)
        ON DELETE RESTRICT,

    CONSTRAINT fk_category
        FOREIGN KEY (category_id)
        REFERENCES meal_categories(category_id)
        ON DELETE RESTRICT,

    CONSTRAINT uq_schedule_slot
        UNIQUE (meal_id,category_id, day_of_week, valid_from),

    CONSTRAINT chk_day_of_week
        CHECK (day_of_week BETWEEN 0 AND 6),

    CONSTRAINT chk_valid_range
        CHECK (valid_until IS NULL OR valid_until > valid_from)
);
