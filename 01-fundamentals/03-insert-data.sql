-- ============================================================================
-- INSERT INTO - Inserting data into tables
-- ============================================================================
-- Demonstrates single and multiple row inserts using INSERT INTO.
-- Also shows partial inserts by specifying only certain columns
-- (omitted columns will be NULL).
-- ============================================================================

USE myDB;
SELECT *
FROM employees;
INSERT INTO employees
VALUES (
    1,
    'John',
    'Doe',
    10.99,
    "2026-01-01"
  );
INSERT INTO employees
VALUES (
    2,
    'Jane',
    'Smith',
    12.50,
    "2025-05-15"
  ),
  (
    3,
    'Alice',
    'Johnson',
    15.00,
    "2024-09-30"
  ),
  (
    4,
    'Bob',
    'Brown',
    9.75,
    "2023-12-01"
  ),
  (
    5,
    'Charlie',
    'Davis',
    11.25,
    "2026-03-20"
  );
INSERT INTO employees (employee_id, first_name, last_name)
VALUES (6, 'Eve', 'Wilson')
