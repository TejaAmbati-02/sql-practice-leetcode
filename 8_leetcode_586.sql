# Write your MySQL query statement below
SELECT customer_number
    FROM(
        SELECT COUNT(order_number) AS customer_number_orders, customer_number 
        FROM Orders
        GROUP BY customer_number
    ) AS grouped
ORDER BY customer_number_orders DESC
LIMIT 1;





WITH cte AS
(
    SELECT COUNT(order_number) AS customer_number_orders, customer_number 
    FROM Orders
    GROUP BY customer_number
)
SELECT customer_number
FROM cte
ORDER BY customer_number_orders DESC
LIMIT 1;



WITH cte AS
(
    SELECT COUNT(order_number) AS customer_number_orders, customer_number 
    FROM Orders
    GROUP BY customer_number
)
SELECT customer_number
FROM cte
WHERE customer_number_orders = (SELECT MAX(customer_number_orders) FROM cte);
