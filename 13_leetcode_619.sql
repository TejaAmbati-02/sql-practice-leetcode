# Write your MySQL query statement below

WITH CTE AS(SELECT num
FROM MyNumbers
GROUP BY num
HAVING COUNT(num) = 1)
SELECT CASE WHEN ABS(MAX(num)) >= 0 THEN  MAX(num) ELSE NULL END AS num FROM CTE;



# Write your MySQL query statement below

WITH CTE AS(SELECT num
FROM MyNumbers
GROUP BY num
HAVING COUNT(num) = 1)
SELECT CASE WHEN COUNT(num) > 0 THEN  MAX(num) ELSE NULL END AS num FROM CTE;