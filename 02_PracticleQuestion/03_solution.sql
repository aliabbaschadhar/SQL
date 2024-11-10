-- Active: 1730832206685@@127.0.0.1@3306@company_self
use company_self;

SELECT * FROM employee;

SELECT *
from employee
WHERE
    name LIKE "E%"
    OR name LIKE "__s%"
    OR name LIKE "M%"
    OR name LIKE "%i%"
    OR name LIKE "O%"
    OR name LIKE "U%";