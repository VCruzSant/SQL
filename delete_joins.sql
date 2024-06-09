select u.first_name, p.bio from users u
left join profile p
on p.user_id = u.id
where u.first_name = 'Zia';

-- delete profile only
delete p from users u 
join profile p
on p.user_id = u.id 
where u.first_name = 'Zia';

-- delete user and profile
delete p, u from users u 
left join profile p
on p.user_id = u.id 
where u.first_name = 'Zia';