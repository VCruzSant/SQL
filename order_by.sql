use base_de_dados

-- asc | desc
select id, first_name, email as uemail
from users
where id BETWEEN 50 and 80
order by id desc;