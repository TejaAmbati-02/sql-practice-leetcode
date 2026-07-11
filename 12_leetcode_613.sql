SELECT min(ABS(P1.x - P2.x)) AS shortest
FROM Point P1 CROSS JOIN Point P2
WHERE P1.x <> P2.x;



-- If records are sorted in ascending order 


SELECT min(ABS(P1.x - P2.x)) AS shortest
FROM Point P1 INNER JOIN Point P2
WHERE P1.x < P2.x;