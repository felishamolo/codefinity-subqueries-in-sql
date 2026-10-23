-- Write your code here
select m.name
from members m
where m.member_id not in (select b.member_id
    from borrowings b)