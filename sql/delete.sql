DELETE FROM nombre_tabla 
WHERE condicion;

DELETE FROM reviews 
WHERE product_name = 'MousePad'

DELETE FROM users 
WHERE username = 'old_user'

DELETE FROM products 
WHERE product_id = 10;

DELETE FROM categories 
WHERE category_name = 'Obsolete Category';

DELETE FROM reviews 
WHERE stars < 3;

DELETE FROM users 
WHERE birthdate < '1990-01-01';

DELETE FROM products 
WHERE stock = 0;

