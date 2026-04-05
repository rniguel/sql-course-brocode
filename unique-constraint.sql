CREATE TABLE products (
  id INT,
  name VARCHAR(255),
  price DECIMAL(10, 2)
);
SELECT *
FROM products;
DROP TABLE products;
ALTER TABLE products
ADD CONSTRAINT UNIQUE (name);
INSERT INTO products
VALUES (1, 'Laptop', 999.99),
  (2, 'Smartphone', 499.99),
  (3, 'Tablet', 299.99),
  (4, 'Freezer', 1099.99),
  (5, 'Laptop', 899.99);