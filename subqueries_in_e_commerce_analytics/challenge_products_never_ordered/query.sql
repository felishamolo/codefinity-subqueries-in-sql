select *
from products p
where p.product_id in(
    select o.product_id
    from orders o) is null