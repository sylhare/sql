SELECT 'Hello, world' AS Result;
SELECT * FROM Country;
SELECT Name AS Country, Continent, SurfaceArea AS "Surface Area" FROM Country ORDER BY Name;

SELECT Name, Continent, Region FROM Country WHERE Continent = 'Europe' ORDER BY Name LIMIT 10 OFFSET 5;

SELECT COUNT(*) FROM Country WHERE Population > 1000000 AND Continent = 'Asia';

SELECT COUNT(LifeExpectancy) FROM Country;
SELECT (COUNT(LifeExpectancy) - COUNT(DISTINCT LifeExpectancy)) AS 'Number of different LifeExpectancy' FROM Country;