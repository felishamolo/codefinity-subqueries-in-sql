select d.name
from departments d
join (select department_id, avg(salary) as avg_salary
    from employees e
    group by department_id) as dept_avg 
    on dept_avg.department_id = d.department_id
where dept_avg.avg_salary > (select avg(salary) as emp_salary
    from employees);