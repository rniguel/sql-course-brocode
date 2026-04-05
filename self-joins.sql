SELECT *
FROM customers;
ALTER TABLE customers
ADD referral_id INT;
UPDATE customers
SET referral_id = 1
WHERE customer_id = 2;
UPDATE customers
SET referral_id = 2
WHERE customer_id = 3;
SELECT a.customer_id,
  CONCAT(a.first_name, " ", a.last_name) AS customer_name,
  CONCAT(b.first_name, " ", b.last_name) AS referral_name
FROM customers AS a
  LEFT JOIN customers AS b ON a.referral_id = b.customer_id;
SELECT *
FROM employees;
ALTER TABLE employees
ADD supervisor_id INT;
UPDATE employees
SET supervisor_id = 5
WHERE employee_id = 6;
SELECT CONCAT(a.first_name, " ", a.last_name) AS "employee",
  CONCAT(b.first_name, " ", b.last_name) AS "reports to"
FROM employees AS a
  INNER JOIN employees AS b ON a.supervisor_id = b.employee_id;