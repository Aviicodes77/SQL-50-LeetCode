# Write your MySQL query statement below
SELECT DISTINCT(employee_id), department_id
FROM employee
WHERE employee_id IN (SELECT employee_id
FROM employee
GROUP BY employee_id
HAVING COUNT(*)= 1)
OR primary_flag = 'Y'
ORDER BY employee_id