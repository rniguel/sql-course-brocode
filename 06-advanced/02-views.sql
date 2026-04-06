-- ============================================================================
-- Views - Virtual tables saved as queries
-- ============================================================================
-- A VIEW is a stored SELECT statement that behaves like a virtual table.
--   - Does not store data separately (updates in real time).
--   - Simplifies complex queries.
--   - Can be queried, dropped, and even inserted into (in some cases).
-- CREATE VIEW name AS SELECT ...
-- DROP VIEW name
-- ============================================================================

SELECT *
FROM employees;
CREATE VIEW employee_attendance AS
SELECT first_name,
  last_name
FROM employees;
SELECT *
FROM employee_attendance
ORDER BY last_name ASC;
DROP VIEW employee_attendance;
SELECT *
FROM customers;
ALTER TABLE customers
ADD COLUMN email VARCHAR(50);
UPDATE customers
SET email = "email@gmail.com"
WHERE customer_id = 3;
CREATE VIEW customer_emails AS
SELECT email
FROM customers;
SELECT *
FROM customer_emails;
INSERT INTO customers
VALUES (5, "Pearl", "Krabs", NULL, "email@gmail.com");
