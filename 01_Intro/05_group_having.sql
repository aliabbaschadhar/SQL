SELECT * from employee;

SELECT department, AVG(salary) as avgsal
from employee
GROUP BY -- This query retrieves all columns from the employee table
SELECT *
from employee;

-- This query groups the employee table by the department column
-- and calculates the average salary for each department
-- The AVG function is used to calculate the average value
-- The AVG function is applied to the "salary" column
-- The result is the average salary for each department
SELECT department, AVG(salary) as avgsal
from employee
GROUP BY
    department;

-- This query groups the employee table by the department column
-- and calculates the average salary for each department
-- The AVG function is used to calculate the average value
-- The AVG function is applied to the "salary" column
-- The HAVING clause is used to filter the results to only include
-- departments with an average salary greater than 10000
SELECT department, AVG(salary) as avgsalary
from employee
GROUP BY
    department
HAVING
    avgsalary > 10000;

-- This comment explains the purpose of the HAVING clause
-- The HAVING clause is used to filter the results of a GROUP BY query
-- It is similar to the WHERE clause, but is used for aggregate functions
-- Having works as where clause but only for aggregate functions/data

-- This query groups the employee table by the department column
-- and calculates the average salary for each department
-- The AVG function is used to calculate the average value
-- The AVG function is applied to the "salary" column
-- The HAVING clause is used to filter the results to only include
-- departments with an average salary greater than 10000
-- The ORDER BY clause is used to sort the results in descending order
-- by average salary
-- The LIMIT clause is used to limit the results to only the top 2
-- departments with the highest average salary
SELECT department, AVG(salary) AS avgsalary
FROM employee
GROUP BY
    department
HAVING
    avgsalary > 10000
ORDER BY avgsalary DESC
LIMIT 2;

department;

SELECT department, AVG(salary) as avgsalary
from employee
GROUP BY
    department
HAVING
    avgsalary > 10000;

--Having works as where clause but only for aggregate functions/data

SELECT department, AVG(salary) AS avgsalary
FROM employee
GROUP BY
    department
HAVING
    avgsalary > 10000
ORDER BY avgsalary DESC
LIMIT 2;