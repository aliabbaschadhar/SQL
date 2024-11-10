-- This query retrieves all columns from the employee table
SELECT * FROM employee;

-- This query counts the number of rows in the employee table
-- The COUNT function is used to count the number of rows
-- The COUNT function is applied to the "name" column
-- The result is the total number of rows in the employee table
SELECT count(name) from employee;

-- This query calculates the sum of the salary column in the employee table
-- The SUM function is used to calculate the sum
-- The SUM function is applied to the "salary" column
-- The result is the total sum of the salary column in the employee table
SELECT sum(salary) from employee;

-- This query retrieves the maximum value of the salary column in the employee table
-- The MAX function is used to retrieve the maximum value
-- The MAX function is applied to the "salary" column
-- The result is the maximum value of the salary column in the employee table
SELECT max(salary) from employee;

-- This query retrieves the minimum value of the salary column in the employee table
-- The MIN function is used to retrieve the minimum value
-- The MIN function is applied to the "salary" column
-- The result is the minimum value of the salary column in the employee table
SELECT MIN(salary) from employee;

-- This query calculates the average value of the salary column in the employee table
-- The AVG function is used to calculate the average value
-- The AVG function is applied to the "salary" column
-- The result is the average value of the salary column in the employee table
SELECT AVG(salary) from employee;

SELECT * FROM employee;

SELECT count(name) from employee;

SELECT sum(salary) from employee;

SELECT max(salary) from employee;

SELECT MIN(salary) from employee;

SELECT AVG(salary) from employee;