USE myDB;
SELECT *
FROM employees;
ALTER TABLE employees
ADD COLUMN job VARCHAR(50)
AFTER hourly_pay;
UPDATE employees
SET job = "Manager";
SELECT *
FROM employees
WHERE hire_date < "2026-01-01"
  AND job = "Developer";
SELECT *
FROM employees
WHERE NOT job = "Developer"
  AND NOT job = "Manager";
SELECT *
FROM employees
WHERE hire_date BETWEEN "2020-01-01" AND "2026-12-31";
SELECT *
FROM employees
WHERE job IN ("Developer", "Manager");