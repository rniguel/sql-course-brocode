-- ============================================================================
-- SELECT - Querying data with WHERE clause
-- ============================================================================
-- Demonstrates basic SELECT queries: selecting all columns, specific columns,
-- and filtering with WHERE using comparison operators (=, >=, <, !=)
-- and IS NULL for null checks.
-- ============================================================================

USE myDB;
SELECT *
FROM employees;
SELECT first_name,
  last_name
FROM employees;
SELECT *
FROM employees
WHERE employee_id = 3;
SELECT *
FROM employees
WHERE first_name = 'Jane';
SELECT *
FROM employees
WHERE hourly_pay >= 15;
SELECT *
FROM employees
WHERE hire_date < '2025-01-01';
SELECT *
FROM employees
WHERE employee_id != 1;
SELECT *
FROM employees
WHERE hire_date IS NULL;
