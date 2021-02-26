-- Aggregate Data

SELECT COUNT(*) FROM Country;

SELECT Region, COUNT(*)
  FROM Country
  GROUP BY Region
;

SELECT Region, COUNT(*) AS Count
  FROM Country
  GROUP BY Region
  ORDER BY Count DESC, Region
;

-- Aggregate functions

SELECT COUNT(*) FROM Country;
SELECT COUNT(Population) FROM Country;
SELECT AVG(Population) FROM Country;
SELECT Region, AVG(Population) FROM Country GROUP BY Region;
SELECT Region, MIN(Population), MAX(Population) FROM Country GROUP BY Region;
SELECT Region, SUM(Population) FROM Country GROUP BY Region;

-- DISTINCT Aggregates

SELECT COUNT(HeadOfState) FROM Country;
SELECT HeadOfState FROM Country ORDER BY HeadOfState;
SELECT COUNT(DISTINCT HeadOfState) FROM Country;

