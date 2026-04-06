-- ============================================================================
-- Aggregate Functions - COUNT, MAX, MIN, AVG, SUM, CONCAT
-- ============================================================================
-- COUNT() : Counts the number of non-null values.
-- MAX()   : Returns the maximum value.
-- MIN()   : Returns the minimum value.
-- AVG()   : Returns the average value.
-- SUM()   : Returns the sum of values.
-- CONCAT(): Joins strings together.
-- Use AS to alias the result column.
-- ============================================================================

USE myDB;
SELECT COUNT(amount)
FROM transactions;
SELECT COUNT(amount) AS "Total Transactions"
FROM transactions;
SELECT MAX(amount) AS "Maximum Transaction"
FROM transactions;
SELECT MIN(amount) AS "Minimum Transaction"
FROM transactions;
SELECT AVG(amount) AS "Average Transaction"
FROM transactions;
SELECT SUM(amount) AS "Total Amount"
FROM transactions;
SELECT CONCAT(first_name, ' ', last_name) AS "Full Name"
FROM employees;
