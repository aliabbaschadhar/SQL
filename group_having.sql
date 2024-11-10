SELECT * from employee;

SELECT department, AVG(salary) as avgsal
from employee
GROUP BY
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