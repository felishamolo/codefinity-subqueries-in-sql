select d.name
from departments d
join employees e ON e.department_id = d.department_id
    group by d.name
having avg(e.salary) > (select avg(e2.salary) as emp_avg
    from employees e2)
