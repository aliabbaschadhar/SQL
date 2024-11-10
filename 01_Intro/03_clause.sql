-- Create a database if it doesn't exist
CREATE DATABASE if NOT EXISTS company;

-- Use the company database for the subsequent queries
USE company;

-- Create a table to store employee information
CREATE TABLE employee (
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
INSERT INTO
    employee (
        id,
        name,
        age,
        department,
        city,
        salary
    )
VALUES (
        1,
        'ali',
        20,
        "HR",
        "Hafizabad",
        5000
    ),
    (
        2,
        "abbas",
        20,
        "IT",
        "Lahore",
        9000
    ),
    (
        3,
        "chadhar",
        20,
        "Devops",
        "Islamabad",
        10000
    ),
    (
        4,
        "waqar-ul-hassan",
        24,
        "IT",
        "New York",
        34000
    ),
    (
        5,
        "saba",
        19,
        "Marketing",
        "Hafizabad",
        10000
    ),
    (
        6,
        "waseem",
        20,
        "HR",
        "Lahore",
        5000
    ),
    (
        7,
        "zahid",
        20,
        "Finance",
        "Islamabad",
        9000
    ),
    (
        8,
        "zahid",
        20,
        "HR",
        "Islamabad",
        5000
    ),
    (
        9,
        "simon",
        23,
        "Sales",
        "New York",
        10000
    ),
    (
        10,
        "hamza",
        20,
        "HR",
        "Lahore",
        5000
    );

-- Update the department of employees with ids 9, 8, 7, and 1 to "IT"
UPDATE employee
-- Set the department column to "IT"
SET
    department = "IT"
    -- Where the id column is in the list of values (9, 8, 7, 1)
    -- The IN operator checks if the value is present in the list
WHERE
    id IN (9, 8, 7, 1);

-- Retrieve all columns from the employee table where the department is "IT" and age is 20
SELECT *
from employee
    -- Where the department column is equal to "IT"
    -- And the age column is equal to 20
    -- The AND operator checks if both conditions are true
WHERE
    department = "IT"
    AND age = 20;

-- Retrieve all columns from the employee table where the department is not "IT" or "HR"
SELECT *
from employee
    -- Where the department column is not equal to "IT" or "HR"
    -- The NOT IN operator checks if the value is not present in the list
WHERE
    department NOT IN("IT", "HR");

-- Retrieve the name column from the employee table where the name starts with "a"
SELECT name
from employee
    -- Where the name column starts with "a"
    -- The LIKE operator checks for pattern matching
    -- The "%" wildcard matches any number of characters
WHERE
    name LIKE "a%";

-- Retrieve the name column from the employee table where the name starts with "_a"
SELECT name
from employee
    -- Where the name column starts with "_a"
    -- The LIKE operator checks for pattern matching
    -- The "_" wildcard matches a single character
WHERE
    name LIKE "_a%";

-- Retrieve the name column from the employee table where the name contains "a"
SELECT name
from employee
    -- Where the name column contains the substring "a"
WHERE
    name LIKE "%a%";

-- Retrieve the name column from the employee table where the name ends with "a"
SELECT name
from employee
    -- Where the name column ends with "a"
WHERE
    name LIKE "%a";

-- Retrieve the name column from the employee table where the name is "ali"
SELECT name
from employee
    -- Where the name column is equal to "ali"
WHERE
    name = "ali";

-- Retrieve the name column from the employee table where the name is not "ali"
SELECT name
from employee
    -- Where the name column is not equal to "ali"
WHERE
    name !=
use employees;

SELECT * FROM employee;

SELECT * from employee WHERE salary > 10000;

INSERT INTO
    employee (
        id,
        name,
        employee_age,
        department,
        city,
        salary,
        date_of_birth
    )
VALUES (
        5,
        'Ramesh',
        20,
        'IT',
        'Pune',
        10000,
        '1999-01-01'
    ),
    (
        6,
        'Ramesh',
        20,
        'IT',
        'Pune',
        10000,
        '1999-01-01'
    ),
    (
        7,
        "Akash",
        23,
        "HR",
        "Delhi",
        10000,
        "1999-20-01"
    ),
    (
        8,
        "Sargam",
        32,
        "Finance",
        "Mumbai",
        "99909",
        "1987-01-01"
    );

SELECT department from employee WHERE salary >= 10000 LIMIT 3;

SELECT name, salary from employee ORDER BY salary ASC LIMIT 3;