# Write your MySQL query statement below
sELECT customer_id, COUNT(*) as count_no_trans
FROM visits as v
LEFT join 
transactions as t
ON 
v.visit_id = t.visit_id
WHERE t.transaction_id is null
GROUP BY customer_id