SELECT * FROM reviews;
SELECT * FROM users;
SELECT * FROM products;
SELECT * FROM categories;

SELECT review_id, product_name, stars FROM reviews ;

SELECT username, email FROM users WHERE birthdate > '1990-01-01';

SELECT product_name, price FROM products WHERE stock > 0;

SELECT category_name FROM categories WHERE category_id = 2;

SELECT COUNT(*) AS total_reviews FROM reviews WHERE stars = 5;

SELECT AVG(price) AS average_price FROM products;

SELECT category_name, COUNT(*) AS product_count

FROM categories c
LEFT JOIN products p ON c.category_id = p.category_id

GROUP BY c.category_name;

SELECT p.product_name, c.category_name
FROM products p 
LEFT JOIN categories c ON p.category_id = c.category_id;
