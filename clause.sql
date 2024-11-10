use employees;

SELECT * FROM employee;

SELECT * from employee WHERE salary > 10000;

INSERT INTO
    employee (
        id,
        name,
        employee_age,
        department,
        city,
        salary,
        date_of_birth
    )
VALUES (
        5,
        'Ramesh',
        20,
        'IT',
        'Pune',
        10000,
        '1999-01-01'
    ),
    (
        6,
        'Ramesh',
        20,
        'IT',
        'Pune',
        10000,
        '1999-01-01'
    ),
    (
        7,
        "Akash",
        23,
        "HR",
        "Delhi",
        10000,
        "1999-20-01"
    ),
    (
        8,
        "Sargam",
        32,
        "Finance",
        "Mumbai",
        "99909",
        "1987-01-01"
    );

SELECT department from employee WHERE salary >= 10000 LIMIT 3;

SELECT name, salary from employee ORDER BY salary ASC LIMIT 3;