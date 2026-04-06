-- ============================================================================
-- NOT NULL Constraint - Preventing NULL values in columns
-- ============================================================================
-- Ensures that a column cannot contain NULL values.
-- Use ALTER TABLE ... MODIFY to add NOT NULL to an existing column.
-- INSERT with NULL will be rejected; use 0 or a valid value instead.
-- ============================================================================

SELECT *
FROM products;
DROP TABLE products;
SET AUTOCOMMIT = ON;
DELETE FROM products;
CREATE TABLE products (
  id INT,
  name VARCHAR(255),
  price DECIMAL(10, 2)
);
ALTER TABLE products
MODIFY price DECIMAL(4, 2) NOT NULL;
INSERT INTO products
VALUES (1, 'Laptop', NULL);
INSERT INTO products
VALUES (1, 'Laptop', 0);
