SELECT *
FROM customers;
SELECT *
FROM transactions;
DELETE FROM customers
WHERE customer_id = 4;
SET foreign_key_checks = 1;
CREATE TABLE transactions (
  transaction_id INT PRIMARY KEY AUTO_INCREMENT,
  amount DECIMAL(10, 2),
  customer_id INT,
  FOREIGN KEY (customer_id) REFERENCES customers(customer_id) ON DELETE
  SET NULL
);
ALTER TABLE transactions DROP FOREIGN KEY fk_customer_id;
ALTER TABLE transactions
ADD CONSTRAINT fk_customer_id FOREIGN KEY(customer_id) REFERENCES customers(customer_id) ON DELETE
SET NULL;
SELECT *
FROM transactions;
DELETE FROM customers
WHERE customer_id = 3;
ALTER TABLE transactions DROP FOREIGN KEY fk_customer_id;
ALTER TABLE transactions DROP FOREIGN KEY fk_transactions_id;
ALTER TABLE transactions
ADD CONSTRAINT fk_transactions_id FOREIGN KEY(customer_id) REFERENCES customers(customer_id) ON DELETE CASCADE;
UPDATE transactions
SET customer_id = 3
WHERE transaction_id = 1005;
DELETE FROM customers
WHERE customer_id = 3;
SELECT *
FROM transactions;