-- ============================================================================
-- WITH ROLLUP - Adding super-aggregate (subtotal) rows
-- ============================================================================
-- Appended to GROUP BY, it adds an extra summary row with the grand total.
-- The NULL value in the grouped column indicates the rollup super-row.
-- ============================================================================

SELECT *
FROM transactions;
SELECT SUM(amount),
  order_date
FROM transactions
GROUP BY order_date WITH ROLLUP;
SELECT COUNT(amount),
  order_date
FROM transactions
GROUP BY order_date WITH ROLLUP;
SELECT COUNT(transaction_id) AS "# of orders",
  customer_id
FROM transactions
GROUP BY customer_id WITH ROLLUP;
SELECT *
FROM employees;
SELECT SUM(hourly_pay),
  employee_id
FROM employees
GROUP BY employee_id WITH ROLLUP
