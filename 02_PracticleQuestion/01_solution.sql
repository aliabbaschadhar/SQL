show DATABASES;

use company;

SELECT * from employee;

UPDATE employee SET salary = '20000' WHERE department = "HR"

SELECT * from employee WHERE department = "HR";

Delete from employee WHERE id = 1;

SELECT * from employee;

DROP TABLE employee;

DROP DATABASE company;
--Company database has been deleted

DELETE from employee;
-- IF you only want to delete the data in the table and not the table