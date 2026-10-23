-- Write your code here
select m.member_id, m.name, bc.borrow_count
from members m
    join (select b.member_id, count(b.borrowing_id) as borrow_count
    from borrowings b
    group by b.member_id) as bc
    on bc.member_id = m.member_id
order by bc.borrow_count desc, m.name
limit 2