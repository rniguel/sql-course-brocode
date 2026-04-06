-- ============================================================================
-- Stored Procedures - Reusable parameterized SQL blocks
-- ============================================================================
-- A stored procedure is a saved block of SQL that can be called with CALL.
--   - Accepts IN parameters for flexibility.
--   - Reduces network traffic and improves security.
--   - Created with DELIMITER $$ ... END $$ DELIMITER;
-- CALL procedure_name(args)
-- DROP PROCEDURE procedure_name
-- ============================================================================

DELIMITER $$ CREATE PROCEDURE get_customers() BEGIN
SELECT *
FROM customers;
END $$ DELIMITER;
CALL get_customers ();
DROP PROCEDURE get_customers;
DELIMITER $$ CREATE PROCEDURE find_customer(IN id INT) BEGIN
SELECT *
FROM customers
WHERE customer_id = id;
END $$ DELIMITER;
CALL find_customer(1);
DROP PROCEDURE find_customer;
DELIMITER $$ CREATE PROCEDURE find_customer(IN f_name VARCHAR(50), IN l_name VARCHAR(50)) BEGIN
SELECT *
FROM customers
WHERE first_name = f_name
  AND last_name = l_name;
END $$ DELIMITER;
CALL find_customer("John", "Doe");
DROP PROCEDURE find_customer;
