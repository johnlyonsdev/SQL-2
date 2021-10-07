CREATE TABLE users(
    user_id SERIAL PRIMARY KEY,
    user_name VARCHAR(20),
    user_email VARCHAR(20)
    );
CREATE TABLE products(
  product_id SERIAL PRIMARY KEY,
  product_name VARCHAR(30),
  product_price INTEGER
  );
 CREATE TABLE cart(
   cart_id SERIAL PRIMARY KEY,
   user_id INTEGER NOT NULL REFERENCES users(user_id),
   product_id INTEGER NOT NULL REFERENCES products(product_id),
   quantity INTEGER
  );
INSERT INTO users (user_name, user_email)
VALUES ('Larry', 'Larry@yahoo.com'), ('Jerry', 'Jerry@gmail.com'), ('Perry', 'Perry@msn.com');
INSERT INTO products (product_name, product_price)
VALUES ('Chips', 2), ('Queso', 5), ('Tacos', 3), ('Guac', 6), ('Cheese', 10);
INSERT INTO cart (user_id, product_id, quantity)
VALUES (1, 2, 2), (1, 5, 7), (2, 3, 4), (2, 4, 9), (3, 2, 10), (3, 4, 11);

SELECT product_name FROM products WHERE product_id IN (SELECT product_id FROM cart WHERE user_id = 1);

SELECT p.product_name, c.cart_id, u.user_name, u.user_email
FROM cart c
JOIN users u ON u.user_id = c.user_id
JOIN products p ON p.product_id = c.product_id;

SELECT SUM(p.product_price), cart_id
FROM cart C
JOIN products p ON p.product_id = c.product_id
GROUP BY cart_id;

UPDATE cart
SET quantity = 6
WHERE user_id = 2;