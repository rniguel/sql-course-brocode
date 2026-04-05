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