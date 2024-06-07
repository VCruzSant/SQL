-- Coment

use base_de_dados;
show tables;

# describe table columns
describe users;

insert into users(first_name, last_name, email, password_hash) values
("Vini", "Sant1", "vinisant1@email.com", "hash123456_b"),
("Vini", "Sant2", "vinisant2@email.com", "hash123456_c"),
("Vini", "Sant3", "vinisant3@email.com", "hash123456_d");