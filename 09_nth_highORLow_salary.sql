use company;

SELECT name, salary from employee ORDER BY salary DESC;

--Find the highest salary
SELECT name, salary
from employee
where
    salary = (
        SELECT MAX(salary)
        from employee
    );

SELECT salary from employee ORDER BY salary DESC LIMIT 1;

--Find the 2nd highest salary
SELECT name, salary from employee ORDER BY salary DESC LIMIT 1, 1;

--Find third highest
SELECT name, salary from employee ORDER BY salary DESC LIMIT 4, 1;

--Find the lowest salary
SELECT name, salary from employee ORDER BY salary ASC LIMIT 1;

--Find the 3rd lowest salary
SELECT name, salary from employee ORDER BY salary ASC LIMIT 2, 1;