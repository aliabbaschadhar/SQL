-- Active: 1730832206685@@127.0.0.1@3306@university
--Self Join

CREATE DATABASE IF not EXISTS university;

USE university;

CREATE TABLE student (
    s_id INT PRIMARY KEY,
    name VARCHAR(50),
    mentor_id INT
)

INSERT INTO
    student (s_id, name, mentor_id)
VALUES (1, "Ali", NULL),
    (2, "Hassan", 1),
    (3, "Saba", 1),
    (4, "Zahid", 3),
    (5, "Chadhar", 1),
    (6, "Waqar", 2);

SELECT * FROM student;

SELECT s1.name as mentor_name, s2.name as student_name
FROM student as s1
    JOIN student as s2 ON s1.mentor_id = s2.s_id;

--Create another database to explain the concept of self join
CREATE DATABASE IF not EXISTS company_self;

USE company_self;

CREATE TABLE employee (
    e_id INT PRIMARY KEY,
    name VARCHAR(50),
    position VARCHAR(50),
    manager_id INT
)

INSERT INTO
    employee (
        e_id,
        name,
        position,
        manager_id
    )
VALUES (1, "John Smith", "CEO", NULL),
    (2, "Mike Brown", "Manager", 1),
    (3, "Sarah Lee", "Manager", 1),
    (
        4,
        "Jessica Davis",
        "Software Engineer",
        2
    ),
    (
        5,
        "David Kim",
        "Data Analyst",
        2
    ),
    (
        6,
        "Emily Chen",
        "Marketing Specialist",
        3
    );

SELECT * FROM employee;

SELECT e1.name as manager_name, e2.name as employee_name
FROM employee as e1
    JOIN employee as e2 ON e1.e_id = e2.manager_id;