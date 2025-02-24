select title, duration from tracks t 
where t.duration = (select max(duration) from tracks);

select title from tracks t 
where duration >= 210;

select title from collections c 
where c.release_year between 2018 and 2020;

select name from artists a 
where name not like '% %';

select title from tracks t 
where lower(title) like lower('my %')
or lower(title) like lower('% my %')
or lower(title) like lower('% my')
or lower(title) like lower('my')
or lower(title) like lower('мой %')
or lower(title) like lower('% мой %')
or lower(title) like lower('% my')
or lower(title) like lower('мой');