SELECT first_name, count(id) as total from users u 
group by first_name 
order by total desc;

select u.first_name, count(u.id) as total from users u
join profile p
on u.id = p.user_id
where u.id in (58, 64)
group by u.first_name
order by total desc;