use base_de_dados

select * from profile;

insert into profile (bio, description, user_id)
select first_name, CONCAT(last_name, ' description'), id from users;
