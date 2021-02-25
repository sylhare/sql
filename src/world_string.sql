-- LENGTH

SELECT Name, LENGTH(Name) AS Len FROM City ORDER BY Len DESC;

-- SUBSTR

SELECT SUBSTR('string', 4, 2);
SELECT SUBSTR('string', 3);

-- TRIM

SELECT TRIM('   string   ');
SELECT LTRIM('   string   ');
SELECT RTRIM('   string   ');
SELECT TRIM('...string...', '.');

-- UPPER/LOWER

SELECT 'StRiNg' = 'string';
SELECT LOWER('StRiNg') = LOWER('string');
SELECT UPPER('StRiNg') = UPPER('string');
SELECT UPPER(Name) FROM City ORDER BY Name;
SELECT LOWER(Name) FROM City ORDER BY Name;


