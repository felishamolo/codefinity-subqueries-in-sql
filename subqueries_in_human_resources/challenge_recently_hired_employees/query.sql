select *
from employees e
where hire_date = (current_date - interval '6 months')