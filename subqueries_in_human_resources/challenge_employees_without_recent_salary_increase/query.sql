select e.employee_id, e.name
from employees e
join salaries s ON s.employee_id = e.employee_id
where e.employee_id in (select employee_id
    from salaries) is null