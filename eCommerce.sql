--create 3 tables

create table users (
  user_id serial primary key,
  name varchar(50),
  email varchar(150)
  );


create table products (
  product_id serial primary key,
  name varchar(100),
  price decimal
  );
  
  
create table orders (
  order_id serial primary key,
  product_id int,
  foreign key (product_id) references products(product_id)
  );


--insert dummy data

insert into users (
  name,
  email
  ) values 
  ('Matt', 'Matt@gmail.com'),
  ('Sarah', 'Sarah@gmail.com'),
  ('Dave', 'Dave@gmail.com');
  
  
insert into products (
  name,
  price
  ) values
  ('Backpack', 9.99),
  ('Pants', 14.99),
  ('Jacket', 29.99);
  

  --run queries

  select * from products p
join orders o on p.product_id = o.product_id
where o.order_id = 1;


select * from orders;


--foreign key ref

alter table orders 
add column user_id int references users(user_id);


-- update orders to link user to each order

insert into orders (user_id, product_id)
values (1, 1), (1,2), (2, 1), (2,1), (2,3), (3,1), (3,3);


--get all orders for user

select * from orders o
join users u on o.user_id = u.user_id


select count(*), u.name
from orders o
join users u on o.user_id = u.user_id
group by u.name;

