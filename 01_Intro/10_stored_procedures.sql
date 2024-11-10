use ecommerce;

DELIMITER /

CREATE PROCEDURE get_all_orderDetails1()
BEGIN
    SELECT * FROM orders;
END /

DELIMITER;

CALL get_all_orderDetails ();

DELIMITER /

CREATE PROCEDURE getAllOrderDetailsBYID (IN order_id INT)
BEGIN
    SELECT * from orders WHERE id = order_id;
END /

DELIMITER;

CALL getAllOrderDetailsBYID (1);

use company;

CREATE View employee_view AS SELECT name, city, salary FROM employee;

SELECT * FROM employee_view;