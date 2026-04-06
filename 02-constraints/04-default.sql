-- ============================================================================
-- DEFAULT Constraint - Setting default values for columns
-- ============================================================================
-- Automatically fills a column with a default value when omitted in INSERT.
-- Examples: DEFAULT 0 for price, DEFAULT NOW() for timestamps.
-- ============================================================================

USE myDB;
SELECT *
FROM products;
DROP TABLE products;
CREATE TABLE products (
  id INT,
  name VARCHAR(255),
  price DECIMAL(10, 2)
);
INSERT INTO products
VALUES (10, 'Laptop', 99.99),
  (2, 'Smartphone', 49.99),
  (3, 'Tablet', 29.99),
  (4, 'Freezer', 99.99),
  (5, 'Headphones', 19.99);
INSERT INTO products
VALUES (6, 'Monitor', 00.00),
  (7, 'Keyboard', 00.00),
  (8, 'Mouse', 00.00),
  (9, 'Printer', 00.00),
  (10, 'Laptop', 00.00);
DELETE FROM products
WHERE products.id >= 6;
CREATE TABLE products (
  product_id INT,
  product_name VARCHAR(255),
  price DECIMAL(4, 2) DEFAULT 0
);
ALTER TABLE products ALTER price
SET DEFAULT 0;
INSERT INTO products
VALUES (1, 'Laptop', NULL),
  (2, 'Smartphone', NULL),
  (3, 'Tablet', NULL),
  (4, 'Freezer', NULL),
  (5, 'Headphones', NULL);
SELECT *
FROM products;
INSERT INTO products (product_id, product_name)
VALUES (1, 'Laptop'),
  (2, 'Smartphone'),
  (3, 'Tablet'),
  (4, 'Freezer'),
  (5, 'Headphones');
CREATE TABLE transactions (
  transaction_id INT,
  amount DECIMAL(5, 2),
  transaction_date DATETIME DEFAULT NOW()
);
SELECT *
FROM transactions;
INSERT INTO transactions (transaction_id, amount)
VALUES (1, 100.00),
  (2, 50.00),
  (3, 75.00);
DROP TABLE transactions;
