-- Active: 1730832206685@@127.0.0.1@3306@employees
CREATE DATABASE if NOT EXISTS employees;

USE employees;

--Create table
CREATE TABLE employee (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    age INT,
    department VARCHAR(50),
    city VARCHAR(50),
    salary INT
);

--Insert data
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
        "Blockchain",
        "New York",
        34000
    ),
    (
        5,
        "saba",
        19,
        "Python",
        "Hafizabad",
        10000
    );

--Read all data
SELECT * from employee;

SELECT name, age, city from employee;

SELECT name, department from employee WHERE age >= 20;

--Update the database
SET SQL_SAFE_UPDATES = 0;

--
UPDATE employee
SET
    department = "IT"
WHERE
    department = "python"
UPDATE employee
SET
    name = "Saba Nazir"
WHERE
    id = 5;

-- Delete the whole record
DELETE from employee WHERE department = "IT";

--Alter the table
ALTER TABLE employee ADD dob VARCHAR(50) DEFAULT "np";

SELECT * from employee;

ALTER Table employee DROP COLUMN dob;

ALTER TABLE employee MODIFY age VARCHAR(3);

ALTER Table employee CHANGE dob date_of_birth VARCHAR(50);

ALTER Table employee RENAME COLUMN age to employee_age;

-- Create a new database if it doesn't exist
CREATE DATABASE if NOT EXISTS employees;

-- Use the employees database for the subsequent queries
USE employees;

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
        "Blockchain",
        "New York",
        34000
    ),
    (
        5,
        "saba",
        19,
        "Python",
        "Hafizabad",
        10000
    );

-- Retrieve all data from the employee table
SELECT * from employee;

-- Retrieve specific columns (name, age, city) from the employee table
SELECT name, age, city from employee;

-- Retrieve specific columns (name, department) from the employee table where age is greater than or equal to 20
SELECT name, department from employee WHERE age >= 20;

-- Update the database to allow unsafe updates (i.e., updates without a WHERE clause)
SET SQL_SAFE_UPDATES = 0;

-- Update the department of all employees with department "python" to "IT"
UPDATE employee
SET
    department = "IT"
WHERE
    department = "python";

-- Update the name of the employee with id 5 to "Saba Nazir"
UPDATE employee SET name = "Saba Nazir" WHERE id = 5;

-- Delete all records from the employee table where department is "IT"
DELETE from employee WHERE department = "IT";

-- Alter the employee table to add a new column "dob" with a default value of "np"
ALTER TABLE employee ADD dob VARCHAR(50) DEFAULT "np";

-- Retrieve all data from the employee table after adding the new column
SELECT * from employee;

-- Alter the employee table to drop the column "dob"
ALTER Table employee DROP COLUMN dob;

-- Alter the employee table to modify the data type of the "age" column to VARCHAR(3)
ALTER TABLE employee MODIFY age VARCHAR(3);

-- Alter the employee table to rename the column "dob" to "date_of_birth" (Note: This will not work since the column "dob" was dropped earlier)
ALTER Table employee CHANGE dob date_of_birth VARCHAR(50);

-- Alter the employee table to rename the column "age" to "employee_age"
ALTER TABLE employee RENAME COLUMN age to employee_age;

-- Rename table name
RENAME TABLE employee TO employees;

-- SELECT * from employee; -- It will cause error
RENAME TABLE employees to employee;

SELECT * from employee;

--This query will show the output
CREATE Table salary_details (salary INT, increment INT);

ALTER Table salary_details ADD id INT PRIMARY KEY;

INSERT INTO
    salary_details (id, salary, increment)
VALUES (1, 5000, 7),
    (2, 9000, 5),
    (3, 10000, 3),
    (4, 34000, 10),
    (5, 10000, 4);

SELECT * from salary_details;

TRUNCATE Table salary_details;

-- Remove the all data from the table but preserve the structure
DELETE FROM salary_details where id > 2;

--Used to remove specific rows from a table on a condition
DROP Table salary_details;

--Deletes the whole table and its structure