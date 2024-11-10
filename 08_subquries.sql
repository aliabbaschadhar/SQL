use company;

SELECT * FROM company.employee;

-- subquery in where clause

--min_salary
SELECT MIN(salary) FROM employee;

--name/names of employee/employees who has min salary
SELECT name
FROM employee
WHERE
    salary = (
        SELECT MIN(salary)
        FROM employee
    );

--Has salary greater than min salary
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