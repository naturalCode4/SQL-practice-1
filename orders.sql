-- Create a table called orders that records: order_id, person_id, product_name, product_price, quantity.

CREATE TABLE orders (
    order_id SERIAL PRIMARY KEY,
    person_id VARCHAR(50),
    product_name VARCHAR(80),
    product_price FLOAT,
    quantity INT
);

-- Add 5 orders to the orders table.

INSERT INTO orders (person_id, product_name, product_price, quantity)
VALUES ('Suzie', 'Chaga Mushroom Powder', 14.49, 3),
('Adin', 'Blue Spiralina Powder', 22.22, 1),
('Neil', 'Organic White Rice', 3.99, 2),
('Sarell', 'Blueberries', 4.99, 4),
('Adin', 'Ceremonial-Grade Cacao', 42, 1);



-- Select all the records from the orders table.

SELECT *
FROM orders;

-- Calculate the total number of products ordered.

SELECT SUM(quantity) FROM orders

-- Calculate the total order price.

SELECT SUM(product_price) FROM orders

-- Calculate the total order price by a single person_id.

SELECT SUM(product_price * quantity)
FROM orders
GROUP BY person_id