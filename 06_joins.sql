-- Active: 1730832206685@@127.0.0.1@3306@ecommerce
CREATE DATABASE if NOT EXISTS ecommerce;

use ecommerce;

CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    name VARCHAR(50)
);

-- ALTER TABLE customers RENAME COLUMN customer_id to id;
ALTER Table customers RENAME COLUMN name to customer_name;

INSERT INTO
    customers (customer_id, name)
VALUES (1, "ali"),
    (2, "abbas"),
    (3, "chadhar"),
    (4, "waqar-ul-hassan"),
    (5, "saba"),
    (6, "waseem"),
    (7, "zahid"),
    (8, "mubashir"),
    (9, "simon"),
    (10, "hamza");

DELETE from customers where id > 5;

SELECT * from customers;

CREATE TABLE orders (
    id INT PRIMARY KEY,
    ordername VARCHAR(50)
);

ALTER TABLE orders RENAME COLUMN name to order_name;

INSERT INTO
    orders (id, ordername)
VALUES (1, "order-1"),
    (2, "order-2"),
    (3, "order-3"),
    (4, "order-4"),
    (5, "order-5"),
    (6, "order-6"),
    (7, "order-7"),
    (8, "order-8"),
    (9, "order-9"),
    (10, "order-10");

DELETE from orders where id % 2 = 0;

SELECT * from orders;

--INNER JOIN --> Returns records that have matching values in both tables
SELECT customers.id, customers.customer_name, orders.order_name
FROM customers
    INNER JOIN orders ON customers.id = orders.id;

--LEFT JOIN --> Returns all records from the left table, and the matched records from the right table

SELECT * from customers LEFT JOIN orders ON customers.id = orders.id;
--Here customers is a left table and orders is a right table

--RIGHT JOIN --> Returns all records from the right table, and the matched records from the left table

SELECT *
from customers
    RIGHT JOIN orders ON customers.id = orders.id;
--Here customers is a left table and orders is a right table

--Full JOIN --> Returns all records when there is a match in either left or right table
--In mySQL full join is not supported by default but we can create a full join by using left join and right join by using UNION operator i.e. left join + right join

SELECT *
from customers
    LEFT JOIN orders ON customers.id = orders.id
UNION
SELECT *
from customers
    RIGHT JOIN orders ON customers.id = orders.id;

--CROSS JOIN --> Returns all possible combinations of records from both tables

SELECT * from customers CROSS JOIN orders;

--Exclusive JOIN --> Returns records that are not in both tables

--Left Exclusive join

SELECT *
FROM customers
    LEFT JOIN orders ON customers.id = orders.id
WHERE
    orders.id IS NULL;

--Right Exclusive join
SELECT *
FROM customers
    RIGHT JOIN orders ON customers.id = orders.id
WHERE
    customers.id IS NULL;

--Full Exclusive join

SELECT *
FROM customers
    LEFT JOIN orders ON customers.id = orders.id
WHERE
    orders.id IS NULL
UNION
SELECT *
FROM customers
    RIGHT JOIN orders ON customers.id = orders.id
WHERE
    customers.id IS NULL;

--UNION OPERATOR --> Returns all unique records from both tables

SELECT id from customers UNION SELECT id from orders;

--UNION ALL --> Returns all records from both tables

SELECT id from customers UNION ALL SELECT id from orders;
-- Create a database if it doesn't exist
CREATE DATABASE if NOT EXISTS ecommerce;

-- Use the ecommerce database for the subsequent queries
USE ecommerce;

-- Create a table to store customer information
CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    name VARCHAR(50)
);

-- Rename the name column to customer_name
ALTER Table customers RENAME COLUMN name to customer_name;

-- Insert data into the customers table
INSERT INTO
    customers (customer_id, customer_name)
VALUES (1, "ali"),
    (2, "abbas"),
    (3, "chadhar"),
    (4, "waqar-ul-hassan"),
    (5, "saba"),
    (6, "waseem"),
    (7, "zahid"),
    (8, "mubashir"),
    (9, "simon"),
    (10, "hamza");

-- Delete data from the customers table where the customer_id is greater than 5
DELETE from customers where customer_id > 5;

-- Retrieve all data from the customers table
SELECT * from customers;

-- Create a table to store order information
CREATE TABLE orders (
    id INT PRIMARY KEY,
    ordername VARCHAR(50)
);

-- Rename the ordername column to order_name
ALTER TABLE orders RENAME COLUMN ordername to order_name;

-- Insert data into the orders table
INSERT INTO
    orders (id, order_name)
VALUES (1, "order-1"),
    (2, "order-2"),
    (3, "order-3"),
    (4, "order-4"),
    (5, "order-5"),
    (6, "order-6"),
    (7, "order-7"),
    (8, "order-8"),
    (9, "order-9"),
    (10, "order-10");

-- Delete data from the orders table where the id is even
DELETE from orders where id % 2 = 0;

-- Retrieve all data from the orders table
SELECT * from orders;

-- INNER JOIN: Returns records that have matching values in both tables
-- This query joins the customers and orders tables on the customer_id and id columns
SELECT customers.customer_id, customers.customer_name, orders.order_name
FROM customers
    INNER JOIN orders ON customers.customer_id = orders.id;

-- LEFT JOIN: Returns all records from the left table, and the matched records from the right table
-- This query joins the customers and orders tables on the customer_id and id columns
-- If there is no match in the orders table, the result will contain NULL values
SELECT *
from customers
    LEFT JOIN orders ON customers.customer_id = orders.id;

-- RIGHT JOIN: Returns all records from the right table, and the matched records from the left table
-- This query joins the customers and orders tables on the customer_id and id columns
-- If there is no match in the customers table, the result will contain NULL values
SELECT *
from customers
    RIGHT JOIN orders ON customers.customer_id = orders.id;

-- FULL JOIN: Returns all records when there is a match in either left or right table
-- MySQL does not support FULL JOIN, but we can use UNION to achieve the same result
SELECT *
from customers
    LEFT JOIN orders ON customers.customer_id = orders.id
UNION
SELECT *
from customers
    RIGHT JOIN orders ON customers.customer_id = orders.id;

-- CROSS JOIN: Returns all possible combinations of records from both tables
-- This query joins the customers and orders tables without any conditions
SELECT * from customers CROSS JOIN orders;

-- EXCLUSIVE JOIN: Returns records that are not in both tables
-- This query joins the customers and orders tables on the customer_id and id columns
-- If there is no match in the orders table, the result will contain the customers data
SELECT *
FROM customers
    LEFT JOIN orders ON customers.customer_id = orders.id
WHERE
    orders.id IS NULL;

-- EXCLUSIVE JOIN: Returns records that are not in both tables
-- This query joins the customers and orders tables on the customer_id and id columns
-- If there is no match in the customers table, the result will contain the orders data
SELECT *
FROM customers
    RIGHT JOIN orders ON customers.customer_id = orders.id
WHERE
    customers.customer_id IS NULL;

-- EXCLUSIVE JOIN: Returns records that are not in both tables
-- This query joins the customers and orders tables on the customer_id and id columns
-- If there is no match in either table, the result will contain the data from both tables
SELECT *
FROM customers
    LEFT JOIN orders ON customers.customer_id = orders.id
WHERE
    orders.id IS NULL
UNION
SELECT *
FROM customers
    RIGHT JOIN orders ON customers.customer_id = orders.id
WHERE
    customers.customer_id IS NULL;

--Union Operator: Returns unique records from both tables
-- This query joins the customers and orders tables on the customer_id and id columns
SELECT customer_id from customers UNION SELECT id from orders;

--UNION ALL Operator: Returns all unique records from both tables
-- This query joins the customers and orders tables on the customer_id and id columns
SELECT customer_id from customers UNION ALL SELECT id from orders;