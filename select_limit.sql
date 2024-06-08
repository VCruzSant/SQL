use base_de_dados

-- limit -> how much
-- offset -> position | offset 0 -> default
-- limit 2,5 | (offset,limit)
select id, first_name, email as uemail
from users
where id BETWEEN 50 and 80
order by id desc
limit 4,2;