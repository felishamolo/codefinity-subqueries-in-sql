select p.category, sum(qt.quantity_total) as total_quantity
from products p
join (select o.product_id, sum(o.quantity) as quantity_total
from orders o
    group by o.product_id) as qt on qt.product_id = p.product_id
    group by p.category
HAVING sum(qt.quantity_total) = (select max(cot.order_quantity) as max_cat
    from (select p2.category, sum(o2.quantity) as order_quantity
    from products p2
    join orders o2 on p2.product_id = o2.product_id
    group by p2.category) as cot)
