-- Precision vs Scale

SELECT ((.1 + .2) * 10);
SELECT (1.0 + 2.0);
SELECT ((.1 + .2) * 10) = (1.0 + 2.0); -- False (0) accccording to mySQL
SELECT 3.0 = 3; -- True (1)

-- TYPEOF

SELECT TYPEOF( 1 + 1 );           -- integer
SELECT TYPEOF( 1 + 1.0 );         -- real
SELECT TYPEOF('panda');           -- text
SELECT TYPEOF('panda' + 'koala'); -- integer
SELECT TYPEOF('panda' || 'koala');-- text

-- INTEGER division

SELECT 1 / 2; -- Integer so 0
SELECT 1.0 / 2;
SELECT CAST(1 AS REAL) / 2;
SELECT 17 / 5;
SELECT 17 / 5, 17 % 5; -- Gives you too column for the dividend and rest


-- ROUND()

SELECT 2.55555;
SELECT ROUND(2.55555);
SELECT ROUND(2.55555, 3);
SELECT ROUND(2.55555, 0);

-- DATE/TIME functions

SELECT TYPEOF(DATETIME('now', '+1 day')); -- text no specific data format for time
-- Standard time SQL yyyy-mm-dd hh:mm:ss in UTC time.

SELECT DATETIME('now');
SELECT DATE('now');
SELECT TIME('now');
SELECT DATETIME('now', '+3 days');
SELECT DATETIME('now', '-1 month');
SELECT DATETIME('now', '+1 year');
SELECT DATETIME('now', '+3 hours', '+27 minutes', '-1 day', '+3 years');