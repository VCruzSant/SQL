use base_de_dados

-- all users
SELECT u.id as u_id, u.first_name, p.description, ur.roles_id, r.name
from users u
left join profile p
on u.id = p.user_id
INNER JOIN users_roles ur 
on u.id = ur.user_id
INNER JOIN roles r
on ur.roles_id = r.id
order by u_id asc;

-- one user and permissions
SELECT u.id as u_id, u.first_name, p.description, ur.roles_id, r.name
from users u
left join profile p
on u.id = p.user_id
INNER JOIN users_roles ur 
on u.id = ur.user_id
INNER JOIN roles r
on ur.roles_id = r.id
where u.id = 18;