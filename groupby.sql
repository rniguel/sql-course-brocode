SELECT *
FROM transactions;
ALTER TABLE transactions
ADD COLUMN order_date DATE;
UPDATE transactions
SET order_date = "2026-01-01";
SELECT SUM(amount),
  order_date
FROM transactions
GROUP BY order_date;
SELECT MAX(amount),
  order_date
FROM transactions
GROUP BY order_date;
SELECT MIN(amount),
  order_date
FROM transactions
GROUP BY order_date;
SELECT COUNT(amount),
  order_date
FROM transactions
GROUP BY order_date;
SELECT *
FROM transactions;
SELECT SUM(amount),
  customer_id
FROM transactions
GROUP BY customer_id;
SELECT MAX(amount),
  customer_id
FROM transactions
GROUP BY customer_id;
SELECT AVG(amount),
  customer_id
FROM transactions
GROUP BY customer_id;
SELECT COUNT(amount),
  customer_id
FROM transactions
GROUP BY customer_id
HAVING COUNT(amount) > 1
  AND customer_id IS NOT NULL;