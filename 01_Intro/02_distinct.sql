-- Active: 1730832206685@@127.0.0.1@3306@company
CREATE DATABASE if NOT EXISTS company;

USE company;

CREATE TABLE employee(
id INT PRIMARY KEY,
name VARCHAR(50),
age INT,
department VARCHAR(50),
city VARCHAR(50),
salary INT);

INSERT INTO employee(id,name,age,department,city,salary) VALUES
(1,'ali',20,"HR","Hafizabad",5000),
(2,"abbas",20,"IT","Lahore",9000),
(3,"chadhar",20,"Devops","Islamabad",10000),
(4,"waqar-ul-hassan",24,"IT","New York",34000),
(5,"saba",19,"Marketing","Hafizabad",10000),
(6,"waseem",20,"HR","Lahore",5000),
(7,"zahid",20,"Finance","Islamabad",9000),
(8,"zahid",20,"HR","Islamabad",5000),
(9,"simon",23,"Sales","New York",10000),
(10,"hamza",20,"HR","Lahore",5000);

--Updating the data in the single recorde
UPDATE employee SET department = "IT" where id IN (9,8,7,1);


SELECT * from employee where department = "IT" AND age = 20;

SELECT * from employee WHERE department NOT IN ("IT","HR");

SELECT name from employee WHERE name LIKE "a%";

SELECT name from employee WHERE name LIKE "_a%";

SELECT * from employee WHERE salary BETWEEN 6000-- Create a database if it doesn't exist
CREATE DATABASE if NOT EXISTS company;

-- Use the company database for the subsequent queries
USE company;

-- Create a table to store employee information
CREATE TABLE employee(
    -- Unique identifier for each employee
    id INT PRIMARY KEY,
    -- Employee name
    name VARCHAR(50),
    -- Employee age
    age INT,
    -- Employee department
    department VARCHAR(50),
    -- Employee city
    city VARCHAR(50),
    -- Employee salary
    salary INT
);

-- Insert sample data into the employee table
INSERT INTO employee(id, name, age, department, city, salary) VALUES
(1, 'ali', 20, "HR", "Hafizabad", 5000),
(2, "abbas", 20, "IT", "Lahore", 9000),
(3, "chadhar", 20, "Devops", "Islamabad", 10000),
(4, "waqar-ul-hassan", 24, "IT", "New York", 34000),
(5, "saba", 19, "Marketing", "Hafizabad", 10000),
(6, "waseem", 20, "HR", "Lahore", 5000),
(7, "zahid", 20, "Finance", "Islamabad", 9000),
(8, "zahid", 20, "HR", "Islamabad", 5000),
(9, "simon", 23, "Sales", "New York", 10000),
(10, "hamza", 20, "HR", "Lahore", 5000);

-- Update the department of employees with ids 9, 8, 7, and 1 to "IT"
UPDATE employee
-- Set the department column to "IT"
SET department = "IT"
-- Where the id column is in the list of values (9, 8, 7, 1)
-- The IN operator checks if the value is present in the list
WHERE id IN (9, 8, 7, 1);

-- Retrieve all columns from the employee table where the department is "IT" and age is 20
SELECT * from employee
-- Where the department column is equal to "IT"
-- And the age column is equal to 20
-- The AND operator checks if both conditions are true
WHERE department = "IT" AND age = 20;

-- Retrieve all columns from the employee table where the department is not "IT" or "HR"
SELECT * from employee
-- Where the department column is not equal to "IT" or "HR"
-- The NOT IN operator checks if the value is not present in the list
WHERE department NOT IN ("IT", "HR");

-- Retrieve the name column from the employee table where the name starts with "a"
SELECT name from employee
-- Where the name column starts with "a"
-- The LIKE operator checks for pattern matching
-- The "%" wildcard matches any number of characters
WHERE name LIKE "a%";

-- Retrieve the name column from the employee table where the name starts with "_a"
SELECT name from employee
-- Where the name column starts with "_a"
-- The LIKE operator checks for pattern matching
-- The "_" wildcard matches a single character
WHERE name LIKE "_a%"; AND 10000;

