-- Active: 1730832206685@@127.0.0.1@3306@company_self
use company_self;

SELECT * FROM employee;

ALTER TABLE employee ADD COLUMN salary INT;

UPDATE employee SET salary = 5000 WHERE e_id = 1;

UPDATE employee SET salary = 6000 WHERE e_id = 2;

UPDATE employee SET salary = 7000 WHERE e_id = 3;

UPDATE employee SET salary = 8000 WHERE e_id = 4;

UPDATE employee SET salary = 9000 WHERE e_id = 5;

UPDATE employee SET salary = 10000 WHERE e_id = 6;

SELECT *
from employee
WHERE
    name LIKE "E%"
    OR name LIKE "__s%"
    OR name LIKE "M%"
    OR name LIKE "%i%"
    OR name LIKE "O%"
    OR name LIKE "U%";