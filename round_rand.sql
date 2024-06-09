-- round -> decimal place
-- rand -> aleatory number
select round(rand() * 10000, 2);

update users set salary = round(rand() * 10000, 2)