INSERT INTO meals
(category_id, name, description, meal_type, is_veg)
VALUES

-- Breakfast
(1, 'Poha', 'Flattened rice with peanuts', 'MAIN', true),
(1, 'Idli', 'Steamed rice cakes', 'MAIN', true),
(1, 'Sambar', 'South Indian lentil stew', 'MAIN', true),
(1, 'Upma', 'Semolina breakfast dish', 'MAIN', true),
(1, 'Bread Butter', 'Bread served with butter', 'BREADS', true),
(1, 'Coffee', 'Hot coffee', 'BEVERAGES', true),
(1, 'Milk', 'Hot milk', 'BEVERAGES', true),

-- Lunch
(2, 'Rajma', 'Kidney bean curry', 'MAIN', true),
(2, 'Chole', 'Chickpea curry', 'MAIN', true),
(2, 'Mix Veg', 'Seasonal mixed vegetables', 'MAIN', true),
(2, 'Curd', 'Fresh yogurt', 'COMPLIMENTARY', true),
(2, 'Green Salad', 'Fresh cucumber and onion', 'SALAD', true),
(2, 'Veg Pulao', 'Vegetable rice preparation', 'MAIN', true),
(2, 'Egg Curry', 'Egg curry in gravy', 'MAIN', false),

-- Snacks
(3, 'Samosa', 'Potato stuffed pastry', 'MAIN', true),
(3, 'Patties', 'Baked vegetable patties', 'MAIN', true),
(3, 'Cold Coffee', 'Chilled coffee beverage', 'BEVERAGES', true),
(3, 'Fruit Juice', 'Seasonal fruit juice', 'BEVERAGES', true),
(3, 'Biscuits', 'Tea-time biscuits', 'COMPLIMENTARY', true),

-- Dinner
(4, 'Shahi Paneer', 'Paneer in rich gravy', 'MAIN', true),
(4, 'Kadai Paneer', 'Paneer cooked with peppers', 'MAIN', true),
(4, 'Dal Makhani', 'Black lentils cooked overnight', 'MAIN', true),
(4, 'Fried Rice', 'Rice stir-fried with vegetables', 'MAIN', true),
(4, 'Naan', 'Tandoor baked bread', 'BREADS', true),
(4, 'Gulab Jamun', 'Milk-solid dessert', 'COMPLIMENTARY', true),
(4, 'Ice Cream', 'Vanilla ice cream', 'COMPLIMENTARY', true);
