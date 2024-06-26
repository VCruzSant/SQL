use base_de_dados

SELECT id as id_users, (select id from roles order by rand() limit 1) as id_roles from users;

insert into users_roles (user_id, roles_id)
SELECT id as id_users, (select id from roles order by rand() limit 1) as id_roles 
from users;

insert ignore into users_roles (user_id, roles_id)
SELECT id as id_users, (select id from roles order by rand() limit 1) as id_roles 
from users order by rand() limit 50;

insert ignore into users_roles (user_id, roles_id)
SELECT id as id_users, (select id from roles order by rand() limit 1) as id_roles 
from users order by rand() limit 20;

insert ignore into users_roles (user_id, roles_id)
SELECT id as id_users, (select id from roles order by rand() limit 1) as id_roles 
from users order by rand() limit 5;
