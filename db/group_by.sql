select count(*), g.name
from genre g
join track t on t.genre_id = g.genre_id
group by g.name


select count(*), g.name
from genre g
join track t on t.genre_id = g.genre_id
where g.name = 'Pop' or g.name = 'Rock'
group by g.name;


select count(*), ar.name
from artist ar
join album a on ar.artist_id = a.artist_id
group by ar.name;