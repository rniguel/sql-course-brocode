SELECT *
FROM transactions;
SELECT first_name,
  last_name
FROM employees
UNION
SELECT first_name,
  last_name
FROM customers;
INSERT INT customers
VALUES (4, "Emily", "Davis");
SELECT *
FROM customers;
SELECT first_name,
  last_name
FROM employees
UNION ALL
SELECT first_name,
  last_name
FROM customers;