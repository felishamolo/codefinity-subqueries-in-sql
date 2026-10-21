SELECT e.name as employee_name, d.name as department_name, e.salary
from employees e
join departments d ON d.department_id = e.department_id
where e.salary = (select max(e2.salary) as max_salary
    from employees e2
    where e2.department_id = e.department_id)
order by department_name, employee_name