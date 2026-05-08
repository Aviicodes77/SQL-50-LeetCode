# Write your MySQL query statement below
SELECT d.name AS Department,
e1.name AS Employee,
e1.salary AS salary
FROM Employee e1
JOIN
Department d
ON
e1.departmentid = d.id
WHERE 3 >(
    SELECT COUNT(DISTINCT (e2.salary))
    FROM employee e2
    WHERE e2.salary > e1.salary
    AND
    e1.departmentid = e2.departmentid
)
