use company;

SELECT name, salary FROM employee ORDER BY salary DESC;

-- Find the highest salary
-- This query uses a subquery to get the maximum salary and then selects employees with that exact salary
SELECT name, salary
FROM employee
WHERE
    salary = (
        SELECT MAX(salary)
        FROM employee
    );

-- Get the highest salary
-- This query simply returns the top salary value
SELECT salary FROM employee ORDER BY salary DESC LIMIT 1;

-- Find the second-highest salary
-- This query orders salaries descending and limits to the second row
SELECT name, salary FROM employee ORDER BY salary DESC LIMIT 1, 1;

-- Find the third-highest salary
-- This query orders salaries descending and limits to the fourth row (third after the first three highest)
SELECT name, salary FROM employee ORDER BY salary DESC LIMIT 4, 1;

-- Find the lowest salary
-- This query orders salaries ascending and limits to the first row
SELECT name, salary FROM employee ORDER BY salary ASC LIMIT 1;

-- Find the third-lowest salary
-- This query orders salaries ascending and limits to the second row (third after the first two lowest)
SELECT name, salary FROM employee ORDER BY salary ASC LIMIT 2, 1;