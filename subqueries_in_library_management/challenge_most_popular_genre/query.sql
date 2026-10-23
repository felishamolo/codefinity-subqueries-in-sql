-- Write your code here
select genre, borrow_count
from (select bk.genre, count(*) as borrow_count
    from books bk
    join borrowings b on b.book_id = bk.book_id
    group by bk.genre) as genre_count
where borrow_count = (select max(borrow_count)
    from (select count(*) as borrow_count
    from books bk2
    join borrowings b2 on b2.book_id = bk2.book_id
    group by bk2.genre) as counts)