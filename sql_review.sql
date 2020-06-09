create table movies (
	movie_id serial, 
  movie_name varchar(30), --this allows up to 30 characters
	awesome boolean
);

insert into movies (
movie_name,
  awesome
) values (
	'The Empire Strikes Back',
  true
);

select * from movies;

select movie_name, awesome from movies;

select movie_name, awesome from movies
where awesome = true
or movie_name = 'Joe Dirt';

select movie_name, awesome from movies
where awesome = true
and movie_id = 1
or movie_name = 'Joe Dirt';

select * from movies 
where movie_name in ('The Empire Strikes Back', 'Joe Dirt');

select count(*) from track;

select max(milliseconds) from track;

select sum(milliseconds) from track;

select avg(milliseconds) from track;

update movies
set awesome = true
where movie_id = 2; -- needs a condition or it will change every row to have a value of true.

delete from movies
where movie_id = 2; -- this will not update the ids of movies that came after the deleted movie. If another movie is added it will be 3 not 2.

drop table movies; -- removes the whole table and all its data. Can not reverse it!!!