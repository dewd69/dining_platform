CREATE TABLE ratings (
    rating_id   BIGSERIAL,
    meal_id     BIGINT NOT NULL,
    user_id     BIGINT NOT NULL,
    rating      SMALLINT NOT NULL,
    review      TEXT,
    rating_date DATE NOT NULL DEFAULT CURRENT_DATE,
    created_at  TIMESTAMPTZ NOT NULL DEFAULT NOW(),
    updated_at  TIMESTAMPTZ NOT NULL DEFAULT NOW(),

    CONSTRAINT pk_ratings
        PRIMARY KEY (meal_id, user_id, rating_date),

    CONSTRAINT fk_meal
        FOREIGN KEY (meal_id)
        REFERENCES meals(meal_id)
        ON DELETE RESTRICT,

    CONSTRAINT fk_user
        FOREIGN KEY (user_id)
        REFERENCES users(user_id)
        ON DELETE CASCADE,

    CONSTRAINT chk_rating
        CHECK (rating BETWEEN 1 AND 5)
);
