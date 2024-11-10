use company_self;

SELECT * from employee;

ALTER TABLE employee RENAME COLUMN position to department;

INSERT INTO
    employee (
        e_id,
        name,
        department,
        manager_id,
        salary
    )
VALUES (7, "Ali", "HR", 1, 5000),
    (8, "Hassan", "IT", 2, 6000),
    (9, "Saba", "HR", 3, 7000),
    (
        10,
        "Zahid",
        "Finance",
        4,
        8000
    ),
    (11, "Chadhar", "IT", 5, 9000),
    (12, "Waqar", "IT", 6, 10000);

SELECT
    department,
    sum(salary) as total_salary,
    AVG(salary) as avg_salary
from employee
GROUP BY
    department;