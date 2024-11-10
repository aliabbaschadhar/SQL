use employee_self;

SELECT * from employee;

--Find duplicacy in department
SELECT department, COUNT(*)
from employee
GROUP BY
    department
HAVING
    COUNT(*) > 1;