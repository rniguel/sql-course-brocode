-- ============================================================================
-- PRIMARY KEY - Unique identifier for each row
-- ============================================================================
-- A PRIMARY KEY uniquely identifies each record. It is implicitly NOT NULL
-- and UNIQUE. Can be defined inline or added via ALTER TABLE.
-- ============================================================================

USE myDB;
CREATE TABLE transactions (
  transaction_id INT PRIMARY KEY,
  amount DECIMAL(10, 2)
);
DROP TABLE transactions;
SELECT *
FROM transactions;
ALTER TABLE transactions
ADD CONSTRAINT PRIMARY KEY(transaction_id);
INSERT INTO transactions
VALUES (1, 100.00),
  (2, 200.00),
  (3, 300.00);
INSERT INTO transactions
VALUES (NULL, 100.00);
SELECT amount
FROM transactions
WHERE transaction_id = 2;
