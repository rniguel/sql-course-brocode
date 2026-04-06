-- ============================================================================
-- FOREIGN KEY - Linking tables via referenced columns
-- ============================================================================
-- A FOREIGN KEY points to a PRIMARY KEY in another table, creating a
-- relationship between two tables. Prevents inserting invalid references
-- and (by default) deleting a referenced parent row.
-- ============================================================================

CREATE TABLE customers (
  customer_id INT PRIMARY KEY AUTO_INCREMENT,
  first_name VARCHAR(50),
  last_name VARCHAR(50)
);
SELECT *
FROM customers;
INSERT INTO customers (first_name, last_name)
VALUES ('John', 'Doe'),
  ('Jane', 'Smith'),
  ('Alice', 'Johnson');
DROP TABLE transactions;
CREATE TABLE transactions (
  transaction_id INT PRIMARY KEY AUTO_INCREMENT,
  amount DECIMAL(10, 2),
  customer_id INT,
  FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);
SELECT *
FROM transactions;
ALTER TABLE transactions DROP FOREIGN KEY transactions_ibfk_1;
ALTER TABLE transactions
ADD CONSTRAINT fk_customer_id FOREIGN KEY (customer_id) REFERENCES customers(customer_id);
DELETE FROM transactions;
SELECT *
FROM transactions;
ALTER TABLE transactions AUTO_INCREMENT = 1000;
INSERT INTO transactions (amount, customer_id)
VALUES (100.00, 1),
  (200.00, 2),
  (300.00, 3);
DELETE FROM customers
WHERE customer_id = 3;
