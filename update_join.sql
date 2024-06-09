select u.first_name, p.bio from users u
-- update users u 
join profile p
on p.user_id = u.id
-- set p.bio = CONCAT(p.bio, ' Bio') 
where u.first_name = 'Zia';


update users u 
join profile p
on p.user_id = u.id
set p.bio = CONCAT(p.bio, ' Bio') 
where u.first_name = 'Zia';