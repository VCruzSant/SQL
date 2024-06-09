select * from profile;

SELECT u.id as uid, u.first_name, p.id as pid, p.bio from users u, profile p
where u.id = p.user_id;



SELECT u.id as uid, u.first_name, p.id as pid, p.bio 
from users u
inner join profile p
on u.id = p.user_id;

SELECT u.id as uid, u.first_name, p.id as pid, p.bio 
from users u
inner join profile p
on u.id = p.user_id
where u.first_name LIKE 'v%'
order by u.first_name asc
limit 3;