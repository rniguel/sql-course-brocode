SELECT *
FROM customers;
SHOW INDEXES
FROM customers;
CREATE INDEX last_name_idx ON customers(last_name);
SELECT *
FROM customers
WHERE last_name = "Doe";
SELECT *
FROM customers
WHERE first_name = "John";
CREATE INDEX last_name_first_name_idx ON customers(last_name, first_name);
SHOW INDEXES
FROM customers;
ALTER TABLE customers DROP INDEX last_name_idx;
SHOW INDEXES
FROM customers;