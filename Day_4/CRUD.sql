create database shirts_db;

use shirt_db;

create table shirts(
shirt_id INT NOT NULL auto_increment,
article varchar(100),
color varchar(100),
shirt_size varchar(100),
last_worn int,
primary key (shirt_id)
);

insert into shirts(article, color, shirt_size, last_worn)
values('t-shirt', 'white', 'S', 10),
('t-shirt', 'green', 'S', 200),
('polo shirt', 'black', 'M', 10),
('tank top', 'blue', 'S', 50),
('t-shirt', 'pink', 'S', 0),
('polo shirt', 'red', 'M', 5),
('tank top', 'white', 'S', 200),
('tank top', 'blue', 'M', 15);

select * from shirts;

insert into shirts(color, article, shirt_size,last_worn)
values('purple', 'polo shirt', 'M', 50);

select article ,color from shirts;

select * from shirts where shirt_size = 'M';
select color, article, shirt_size,last_worn from shirts where shirt_size = 'M';
select * from shirts where article = 'polo shirt';
update shirts set shirt_size = 'L' where article = 'polo shirt';
select * from shirts where last_worn=15;
update shirts set last_worn = 0 where last_worn = 15;

select * from shirts where color = 'white';
update shirts set shirt_size = 'XS',color = 'off white' where color = 'white';



