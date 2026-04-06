-- ============================================================================
-- UNION & UNION ALL - Combining result sets from multiple SELECTs
-- ============================================================================
-- UNION     : Combines results and removes duplicate rows.
-- UNION ALL : Combines results and keeps all rows (including duplicates).
-- Both SELECTs must have the same number of columns and compatible types.
-- ============================================================================

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
