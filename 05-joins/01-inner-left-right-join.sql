-- ============================================================================
-- INNER JOIN, LEFT JOIN, RIGHT JOIN - Combining tables
-- ============================================================================
-- INNER JOIN : Returns only rows with matches in BOTH tables.
-- LEFT JOIN  : Returns ALL rows from the left table, matched rows from right.
-- RIGHT JOIN : Returns ALL rows from the right table, matched rows from left.
-- Join condition is specified with ON.
-- ============================================================================

USE myDB;
SELECT *
FROM transactions;
SELECT *
FROM customers;
SELECT *
FROM transactions
  INNER JOIN customers ON transactions.customer_id = customers.customer_id;
SELECT transaction_id,
  amount,
  first_name,
  last_name
FROM transactions
  INNER JOIN customers ON transactions.customer_id = customers.customer_id;
SELECT *
FROM transactions
  LEFT JOIN customers ON transactions.customer_id = customers.customer_id;
SELECT *
FROM transactions
  RIGHT JOIN customers ON transactions.customer_id = customers.customer_id;
