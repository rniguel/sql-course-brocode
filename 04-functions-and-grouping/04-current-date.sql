-- ============================================================================
-- Date & Time Functions - CURRENT_DATE, CURRENT_TIME, NOW()
-- ============================================================================
-- CURRENT_DATE() : Returns today's date.
-- CURRENT_TIME() : Returns the current time.
-- NOW()          : Returns the current date and time (DATETIME).
-- Date arithmetic (e.g., CURRENT_DATE() + 1) adds days.
-- ============================================================================

CREATE TABLE test(
  my_date DATE,
  my_time TIME,
  my_datetime DATETIME
);
SELECT *
FROM test;
INSERT INTO test
VALUES(
    CURRENT_DATE(),
    CURRENT_TIME(),
    NOW()
  );
INSERT INTO test
VALUES(CURRENT_DATE() + 1, NULL, NULL);
DROP TABLE test;
