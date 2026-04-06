-- ============================================================================
-- UPDATE & DELETE - Modifying and removing data
-- ============================================================================
-- UPDATE: Changes existing values. Always use WHERE to target specific rows.
-- DELETE: Removes rows. Without WHERE, it deletes ALL rows in the table.
-- ============================================================================

USE myDB;
SELECT *
FROM employees;
UPDATE employees
SET hourly_pay = 10.25,
  hire_date = "2024-01-01"
WHERE employee_id = 5;
UPDATE employees
SET hire_date = NULL
WHERE employee_id = 5;
UPDATE employees
SET hourly_pay = 10.25;
DELETE FROM employees;
DELETE FROM employees
WHERE employee_id = 5;
