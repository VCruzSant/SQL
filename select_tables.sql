select * from profile;

SELECT u.id as uid, u.first_name, p.id as pid, p.bio from users u, profile p
where u.id = p.user_id;