DROP TABLE lightsabers;
DROP TABLE jedi;


create table jedi (
id serial8 primary key,
color varchar(255),
owner_id references,
hilt_metal varchar(255) not null
);

insert into jedi (name, darkside, age) values ('Luke', false, 21);
insert into jedi (name, darkside, age) values ('Obi-Wan', false, 33);
insert into jedi (name, darkside, age) values ('Rey', false, 10);

insert into lightsabers (color, owner_id, hilt_metal) values ('green', 1, 'palladuim');
insert into lightsabers (color, owner_id, hilt_metal) values ('green', 2, 'gold');
insert into lightsabers (color, owner_id, hilt_metal) values ('red', 1, 'hematite');

