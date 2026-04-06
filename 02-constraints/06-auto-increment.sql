-- ============================================================================
-- AUTO_INCREMENT - Automatic sequential ID generation
-- ============================================================================
-- Automatically generates a unique sequential number for new rows.
-- Often combined with PRIMARY KEY. The starting value can be reset
-- with ALTER TABLE ... AUTO_INCREMENT = <value>.
-- ============================================================================

USE myDB;
SELECT *
FROM transactions;
DROP TABLE transactions;
CREATE TABLE transactions (
  transaction_id INT AUTO_INCREMENT PRIMARY KEY,
  amount DECIMAL(10, 2)
);
INSERT INTO transactions (amount)
VALUES (100.00),
  (200.00),
  (300.00);
ALTER TABLE transactions AUTO_INCREMENT = 1000;
DELETE FROM transactions;
INSERT INTO transactions (amount)
VALUES (100.00),
  (200.00),
  (300.00);
