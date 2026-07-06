# Write your MySQL query statement below
-- SELECT E1.name AS Employee
-- FROM Employee E1 LEFT JOIN Employee E2
-- ON E1.managerId = E2.id
-- WHERE E1.salary > E2.salary;


select e1.name Employee from Employee e1
where e1.salary > (select e2.salary from employee e2 where e2.id = e1.managerid)