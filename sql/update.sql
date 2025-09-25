UPDATE reviews
SET stars = 5
WHERE product_id = 5001;

UPDATE reviews
SET product_id = 5000, product_name = 'Monitor' 
WHERE product_id = 5001

UPDATE users
SET email = 'nuevo_email@example.com'
WHERE user_id = 2;

UPDATE products
SET price = 19.99, stock = 50
WHERE product_id = 3;   


UPDATE categoriesSET category_name = 'Updated Category'
WHERE category_id = 4;

UPDATE categories
SET category_name = 'Another Updated Category'
WHERE category_id = 5;


UPDATE products
SET stock = stock + 10
WHERE product_id = 1;

UPDATE users
SET birthdate = '1992-05-15'
WHERE username = 'user1';


