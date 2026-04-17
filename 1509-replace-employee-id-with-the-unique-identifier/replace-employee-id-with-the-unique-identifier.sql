# Write your MySQL query statement below
SELECT eu.unique_id, e.name
FROM employees as e
LEFT join
EmployeeUNI as eu
ON e.id = eu.id