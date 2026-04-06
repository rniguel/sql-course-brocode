-- ============================================================================
-- Wildcards - Pattern matching with LIKE
-- ============================================================================
-- % : Matches any number of characters (e.g., 'A%' = starts with A).
-- _ : Matches exactly one character (e.g., '_a%' = second letter is 'a').
-- ============================================================================

SELECT *
FROM employees;
SELECT *
FROM employees
WHERE first_name LIKE "A%";
SELECT *
FROM employees
WHERE hire_date LIKE "2020%";
SELECT *
FROM employees
WHERE last_name LIKE "%n";
SELECT *
FROM employees
WHERE first_name LIKE "A%";
SELECT *
FROM employees
WHERE job LIKE "_a%";
