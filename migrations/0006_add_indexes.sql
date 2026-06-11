CREATE INDEX idx_meals_category ON meals(category_id);

CREATE INDEX idx_schedule_day ON meal_schedule(day_of_week);
CREATE INDEX idx_schedule_meal ON meal_schedule(meal_id);

CREATE INDEX idx_ratings_user_id ON ratings(user_id);
CREATE INDEX idx_ratings_date ON ratings(rating_date);
CREATE INDEX idx_ratings_meal_date ON ratings(meal_id, rating_date);
