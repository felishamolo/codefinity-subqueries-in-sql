select *
from customers c
where (c.city = 'New York' or c.city = 'Los Angeles') AND c.customer_id IN (
    SELECT DISTINCT customer_id
    FROM orders);