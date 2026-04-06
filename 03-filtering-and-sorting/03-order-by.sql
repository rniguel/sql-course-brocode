-- ============================================================================
-- ORDER BY - Sorting query results
-- ============================================================================
-- ORDER BY column ASC  : Ascending order (default).
-- ORDER BY column DESC : Descending order.
-- Multiple columns can be specified for secondary sort criteria.
-- ============================================================================

SELECT *
FROM employees;
SELECT *
FROM employees
ORDER BY last_name;
SELECT *
FROM employees
ORDER BY hire_date DESC;
SELECT *
FROM transactions
ORDER BY amount,
  customer_id;
