select c.customer_id, c.name, count(o.order_id) as order_count
from customers c
    join orders o ON o.customer_id = c.customer_id
    group by c.customer_id
order by order_count desc, c.customer_id
limit 3