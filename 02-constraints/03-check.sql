-- ============================================================================
-- CHECK Constraint - Validating data with custom conditions
-- ============================================================================
-- Enforces a boolean expression on column values.
-- Example: CHECK (hourly_pay >= 0) prevents negative wages.
-- Can be dropped with ALTER TABLE ... DROP CHECK.
-- ============================================================================

DROP TABLE IF EXISTS employees;
CREATE TABLE employees (
  employee_id INT,
  first_name VARCHAR(255),
  last_name VARCHAR(255),
  salary DECIMAL(10, 2),
  department VARCHAR(255),
  hire_date DATE,
  hourly_pay DECIMAL(10, 2),
  CONSTRAINT chk_hourly_pay CHECK (hourly_pay >= 0)
);
SELECT *
FROM employees;
INSERT INTO employees
VALUES (
    1,
    'John',
    'Doe',
    50000.00,
    'IT',
    '2020-01-15',
    25.00
  ),
  (
    2,
    'Jane',
    'Smith',
    60000.00,
    'HR',
    '2019-03-10',
    30.00
  ),
  (
    3,
    'Michael',
    'Johnson',
    55000.00,
    'Finance',
    '2021-06-20',
    28.00
  ),
  (
    4,
    'Emily',
    'Davis',
    70000.00,
    'Marketing',
    '2018-11-05',
    35.00
  ),
  (
    5,
    'David',
    'Wilson',
    45000.00,
    'IT',
    '2022-02-01',
    22.00
  );
INSERT INTO employees
VALUES (
    6,
    'Alice',
    'Brown',
    48000.00,
    'HR',
    '2020-05-10',
    -15.00
  );
ALTER TABLE employees DROP CHECK chk_hourly_pay;
