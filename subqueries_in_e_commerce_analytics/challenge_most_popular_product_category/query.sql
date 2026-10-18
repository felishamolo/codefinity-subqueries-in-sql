select p.category, sum(o.quantity) as total_quantity
from orders o
join products p ON p.product_id = o.product_id
group by p.category
having sum(o.quantity) = (
    select max(category_total)
    from (
        select sum(o2.quantity) as category_total
        from orders o2
        join products p2 on o2.product_id = p2.product_id
        group by p2.category
    ) as totals);