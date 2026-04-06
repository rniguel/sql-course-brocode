-- ============================================================================
-- CREATE TABLE - Table creation and ALTER TABLE operations
-- ============================================================================
-- Shows how to create tables with columns and data types, rename tables,
-- and use ALTER TABLE to add, rename, modify, reorder, and drop columns.
-- ============================================================================

USE myDB;

CREATE TABLE employees (
  employee_id INT,
  first_name VARCHAR(50),
  last_name VARCHAR(50),
  hourly_pay DECIMAL(5, 2),
  hire_date DATE
)

SELECT * FROM employees;

RENAME TABLE employees TO workers;

RENAME TABLE workers TO employees;

DROP TABLE employees;

ALTER TABLE employees
ADD phone_number VARCHAR(20);

ALTER TABLE employees
RENAME COLUMN phone_number TO email;

ALTER TABLE employees
MODIFY COLUMN email VARCHAR(100);

ALTER TABLE employees
MODIFY email VARCHAR(100)
AFTER last_name;

ALTER TABLE employees
DROP COLUMN email;
