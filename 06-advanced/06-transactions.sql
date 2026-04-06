-- ============================================================================
-- Transactions - COMMIT and ROLLBACK
-- ============================================================================
-- AUTOCOMMIT = OFF: Changes are NOT saved automatically.
-- COMMIT     : Saves all pending changes permanently.
-- ROLLBACK   : Undoes all uncommitted changes.
-- Useful for protecting against accidental data modifications.
-- ============================================================================

USE myDB;
SET AUTOCOMMIT = OFF;
COMMIT;
SELECT *
FROM employees;
DELETE FROM employees;
ROLLBACK;
