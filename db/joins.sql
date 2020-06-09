select * from invoice i
join invoice_line il on il.invoice_id = i.invoice_id
where il.unit_price > 0.99


select i.invoice_date, c.first_name, c.last_name, i.total
from invoice i
join customer c on c.customer_id = i.customer_id


select c.first_name, c.last_name, e.first_name, e.last_name
from customer c
join employee e on e.employee_id = c.support_rep_id    --why am i grabbing support reps id and not customer_id


select al.title, ar.name
from album al
join artist ar on ar.artist_id = al.artist_id


select pt.track_id, p.name
from playlist_track pt
join playlist p on pt.playlist_id = p.playlist_id
where p.name = 'Music'


select t.name
from track t
join playlist_track pt on t.track_id = pt.track_id
where playlist_id = 5;


select t.name, p.name
from track t
join playlist_track pt on t.track_id = pt.track_id
join playlist p on p.playlist_id = pt.playlist_id


select t.name, a.title
from track t
join album a on a.album_id = t.album_id
join genre g on g.genre_id = t.genre_id
where g.name = 'Alternative & Punk'select * 
from invoice
where invoice_id in (select invoice_id from invoice_line where unit_price > 0.99);