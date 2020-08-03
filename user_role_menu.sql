create table user(
id int,
name varchar(64),
age int,
phone varchar(64)

)

create table role(
id int,
name varchar(64)
)

create table menu(
id int,
name varchar(64)
)

create table user_role(
id int,
role_id int,
user_id int
)

create table role_menu(
id int,
role_id int,
menu_id int
)

select * from user;
select * from role;
select * from menu;
select * from role_user;
select * from role_menu;

select * from user u 
left join role_user ru on u.id = ru.user_id
left join role r on ru.role_id = r.id
left join role_menu rm on r.id = rm.role_id
left join menu n on m.id = rm.menu_id


