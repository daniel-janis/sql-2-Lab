CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    username VARCHAR(200),
    email VARCHAR(200),
    cart INT REFERENCES cart(cart_id)
);

CREATE TABLE products (
    id SERIAL PRIMARY KEY,
    product_name VARCHAR(200),
    price INT
);

CREATE TABLE cart (
    id SERIAL PRIMARY KEY,
    user INT REFERENCES users(users_id),
    product INT REFERENCES product(product_id),
    quantity INT 
);

INSERT INTO users (username, email)
VALUES ('Chicken Joe', 'ChickenJoseph01@PengGu.mail'),
('Vibe guys', 'VB4DAZE@emails.mail'),
('Drummerz Lyfe', 'DRUMMMMMING@email.mail');

INSERT INTO products (product_name, price)
VALUES ('Surf Board', 200.99),
('Swim Suit', 49.99),
('Drum Sticks', 10.99),
('Water Shoes', 34.99),
('Tank Top', 14.99);

INSERT INTO cart (user, product, quantity)
VALUES (1, 1, 1),
(1, 2, 2),
(1, 4, 2),
(2, 5, 4),
(2, 2, 3),
(2, 3, 1),
(3, 3, 10),
(3, 4, 3),
(3, 5, 2);


SELECT product FROM cart
WHERE user = 1;

SELECT * FROM cart;

SELECT SUM(price) FROM products
WHERE cart_id = 7;

UPDATE cart SET quantity = 2
WHERE user_id = 2 AND product_id = 3;