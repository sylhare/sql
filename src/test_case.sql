-- CASE
-- The if statement in SQL

CREATE TABLE booltest (a INTEGER, b INTEGER);
INSERT INTO booltest VALUES (1, 0);
INSERT INTO booltest VALUES (1, NULL);
INSERT INTO booltest VALUES (1, 2);
SELECT * FROM booltest;

-- Check if the converted value to booelan:
-- 2 -> true
-- 1 -> true
-- 0 -> false
-- NULL -> true
SELECT
    CASE WHEN a THEN 'true' ELSE 'false' END as 'boolean on A',
    CASE WHEN b THEN 'true' ELSE 'false' END as 'boolean on B'
    FROM booltest
;

-- Check the value is equal to 1:
SELECT
  CASE a WHEN 1 THEN 'true' ELSE 'false' END AS boolA,
  CASE b WHEN 1 THEN 'true' ELSE 'false' END AS boolB 
  FROM booltest
;

DROP TABLE IF EXISTS booltest;