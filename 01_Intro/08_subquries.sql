-- Use the company database for the subsequent queries
use company;

-- Retrieve all columns from the employee table
SELECT * FROM company.employee;

-- Subquery in WHERE clause:
-- A subquery is a query nested inside another query. It is used to return data that will be used in the main query.

-- min_salary:
-- The MIN() function is used to return the smallest value in a set of values.

-- Retrieve the minimum salary from the employee table
SELECT MIN(salary) FROM employee;

-- name/names of employee/employees who has min salary:
-- This query retrieves the name(s) of employee(s) who have the minimum salary.

-- The subquery (SELECT MIN(salary) FROM employee) is used to get the minimum salary.
-- The main query then retrieves the name(s) of employee(s) who have this minimum salary.
SELECT name
FROM employee
WHERE
    salary = (
        SELECT MIN(salary)
        FROM employee
    );

-- Has salary greater than min salary:
-- This query retrieves the name(s) and salary(s) of employee(s) who have a salary greater than the minimum salary.

-- The subquery (SELECT MIN(salary) FROM employee) is used to get the minimum salary.
-- The main query then retrieves the name(s) and salary(s) of employee(s) who have a salary greater than this minimum salary.
SELECT name, salary
from employee
WHERE
    salary > (
        SELECT MIN(salary)
        FROM employee
    );

--Has salary greater than avg salary
SELECT name, salary
from employee
WHERE
    salary > (
        SELECT AVG(salary)
        FROM employee
    );

SELECT * FROM employee WHERE age > ( SELECT MIN(age) from employee );

--AGe greater than average age and Avrage age of the employees
SELECT age, AVG(age) from employee;
--Gives error bcz it is not a subquery we are using the age with aggregated function which is not a valid syntax so we have to use subquery
SELECT age > (
        SELECT AVG(age)
        from employee
    ), (
        SELECT AVG(age)
        from employee
    )
from employee;