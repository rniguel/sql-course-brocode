-- ============================================================================
-- LIMIT - Restricting the number of rows returned
-- ============================================================================
-- LIMIT n         : Returns only the first n rows.
-- LIMIT offset, n : Skips 'offset' rows, then returns n rows (pagination).
-- ============================================================================

SELECT *
FROM customers
LIMIT 3;
SELECT *
FROM customers
ORDER BY last_name
LIMIT 3;
SELECT *
FROM customers
LIMIT 2, 1;
