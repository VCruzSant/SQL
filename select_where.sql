use base_de_dados;

select * from users;

select * from users 
where id=14;

select * from users 
where id>=14;

select * from users 
where id>=14 and last_name = "Sant2";

select * from users 
where first_name = 'Vini' or last_name = "Sant2";