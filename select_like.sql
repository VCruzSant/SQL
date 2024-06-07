-- %  -> anything
-- _  -> any character (one)

use base_de_dados

-- end
select * from users 
where first_name like '%a';

-- start
select * from users 
where first_name like 'a%';
