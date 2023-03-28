-- Create candystore database: 
CREATE DATABASE candystore; 

-- Swithc to candtstore database:
USE candystore;

-- Create the customers table:
CREATE TABLE customers (
  customerId INT AUTO_INCREMENT PRIMARY KEY,
  firstName VARCHAR(20) NOT NULL,
  lastName VARCHAR(20) NOT NULL, 
  email VARCHAR(30),
  phone VARCHAR(20),
  createdAT TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Add our first customer:
INSERT INTO customers (firstName, lastName, email, phone) 
VALUES ('Damian', 'Montero', 'damian@bocacode.com', '976-CODE');
VALUES ('Cassandra', 'Curcio', 'cassandra.curcio@gmail.com', '954-CATS')

-- Let's get ALL of the customers:
SELECT * FROM customers;

-- Add out seconds customer:
INSERT INTO customers (firstName, lastName, email, phone) 
VALUES ('Cassandra', 'Curcio', 'cassandra.curcio@gmail.com', '954-CATS')

-- Lets get all customers
SELECT * FROM customers;

-- To find a specific customer, i can run:
SELECT * FROM customers WHERE firstName = 'Cassandra';




-- Create the order table:
CREATE TABLE orders (
  orderId INT AUTO_INCREMENT PRIMARY KEY,
  customerId INT NOT NULL, 
  total DECIMAL(8,2),
  tax DECIMAL(7,2),
  createdAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP
)

-- Now lets add an order to our order table:
INSERT INTO orders (customerId, total, tax) 
VALUES (1, 19.48, 0.18), (2, 49.26, 3.44);

-- We can show the orders by: 
SELECT * FROM orders;

-- How can i search for all of Damian's orders?
SELECT * FROM customers
JOIN orders ON orders.customerId = customers.customerId
WHERE firstName = 'Damian';