-- Write your MySQL query statement below

SELECT name AS Customers
FROM Customers C LEFT JOIN Orders O 
ON O.customerId = C.id
WHERE O.customerId is NULL;
