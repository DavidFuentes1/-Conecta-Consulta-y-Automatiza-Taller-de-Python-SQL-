CREATE DATABASE reviews;

CREATE TABLE reviews (
    review_id SERIAL PRIMARY KEY,
    product_id INT,
    product_name character,
    stars INT
);

CREATE TABLE users (
    user_id SERIAL PRIMARY KEY,
    username VARCHAR(50),
    email VARCHAR(100),
    birthdate DATE
);

CREATE TABLE products (
    product_id SERIAL PRIMARY KEY,
    product_name VARCHAR(100),
    price DECIMAL(10, 2),
    stock INT
);

CREATE TABLE categories (
    category_id SERIAL PRIMARY KEY,
    category_name VARCHAR(50)
);

INSERT INTO nombre_tabla (columna1, columna2, ...)
VALUES (valor1, valor2, ...);

INSERT INTO reviews (product_id, product_name, stars)
VALUES (1, 'Product A', 5),
       (2, 'Product B', 4),
       (3, 'Product C', 3);

INSERT INTO users (username, email, birthdate)
VALUES ('user1', 'user1@example.com', '1990-01-01')

INSERT INTO products (product_name, price, stock)
VALUES ('Product A', 19.99, 100)

INSERT INTO categories (category_name)
VALUES ('Electronics');

INSERT INTO categories (category_name)
VALUES ('Books');

