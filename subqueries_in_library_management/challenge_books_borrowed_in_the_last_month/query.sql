select *
from books bk
where bk.book_id in (select distinct b.book_id
    from borrowings b
    where b.borrow_date >= date '2023-07-01')