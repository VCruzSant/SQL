-- 1) Insira 5 usuários
insert into users (first_name, last_name, email, password_hash, salary)
values ('Vinic', 'Santi', 'vinicisanti@email123.com.br', round(rand() * 1000), round(rand() * 10000)),
('Joao', 'Santi', 'joao@email123.com.br', round(rand() * 1000), round(rand() * 10000)),
('tiago', 'Santi', 'tiago@email123.com.br', round(rand() * 1000), round(rand() * 10000)),
('patricia', 'Santi', 'patricia@email123.com.br', round(rand() * 1000), round(rand() * 10000)),
('roberta', 'Santi', 'roberta@email123.com.br', round(rand() * 1000), round(rand() * 10000));

-- 2) Insira 5 perfís para os usuários inseridos
insert into profile(bio, description, user_id)
values ('My bio', 'My description', (select id from users where email = 'roberta@email123.com.br'));

-- 3) Insira permissões (roles) para os usuários inseridos

insert into users_roles (user_id, roles_id)
values (
	(select id from users where email = 'vinicisanti@email123.com.br'),
	(select id from roles where name = 'PUT')
),
(
	(select id from users where email = 'joao@email123.com.br'),
	(select id from roles where name = 'PUT')
),
(
	(select id from users where email = 'tiago@email123.com.br'),
	(select id from roles where name = 'PUT')
),
(
	(select id from users where email = 'patricia@email123.com.br'),
	(select id from roles where name = 'PUT')
),
(
	(select id from users where email = 'roberta@email123.com.br'),
	(select id from roles where name = 'PUT')
),
(
	(select id from users where email = 'roberta@email123.com.br'),
	(select id from roles where name = 'DELETE')
);


-- 4) Selecione os últimos 5 usuários por ordem decrescente

select * from users 
order by id DESC 
limit 5;

-- 5) Atualize o último usuário inserido

update users set first_name = 'Robertinha' where id = 121;

-- 6) Remova uma permissão de algum usuário

 
-- select * 
delete from users_roles where 
user_id = (select id from users where email = 'roberta@email123.com.br') and 
roles_id = (select id from roles where name = 'DELETE');


-- 7) Remova um usuário que tem a permissão "PUT"

-- select u.id as u_id, u.first_name, ur.roles_id, r.name 
delete u
from users u
join users_roles ur 
on u.id = ur.user_id
join roles r 
on ur.roles_id = r.id
where r.name = 'PUT' and u.id = 37;

-- 8) Selecione usuários com perfís e permissões (obrigatório)

select u.id as u_id, u.first_name, p.bio, ur.roles_id, r.name 
from users u
join users_roles ur 
on u.id = ur.user_id
join roles r
on ur.roles_id = r.id
join profile p 
on p.user_id = u.id;


-- 9) Selecione usuários com perfís e permissões (opcional)

-- 10) Selecione usuários com perfís e permissões ordenando por salário
select u.id as u_id, u.first_name, p.bio, u.salary, ur.roles_id, r.name 
from users u
join users_roles ur 
on u.id = ur.user_id
join roles r
on ur.roles_id = r.id
join profile p 
on p.user_id = u.id
order by u.salary desc;
