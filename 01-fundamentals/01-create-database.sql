-- ============================================================================
-- CREATE DATABASE - Database management basics
-- ============================================================================
-- Demonstrates how to create, drop, and modify databases.
-- ALTER DATABASE can be used to set the database to read-only mode.
-- ============================================================================

CREATE DATABASE myDB;

DROP DATABASE myDB;

ALTER DATABASE myDB READ ONLY = 1;

ALTER DATABASE myDB READ ONLY = 0;
