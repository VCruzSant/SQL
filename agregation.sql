SELECT max(salary) as max_salary,
min(salary) as min_salary,
avg(salary) as avg_salary,
sum(salary) as sum_salary,
count(salary) as count_salary
from users
where first_name = 'Vini';