drop database if exists webshop;
create database webshop;
use webshop;

create table category(
category_id int primary key not null,
category varchar(255)
);

create table item(
item_id int primary key auto_increment,
category_id int,
item_name varchar(255),
price int
);

insert into category values
(1,"tops"),
(2,"skirt"),
(3,"onepiece");


insert into tops values
(1,1,"花柄ポロシャツ",3500);
(2,1,"水色長袖トップス",4000),
(3,1,"星柄長袖トップス",6300),
(4,1,"黒色半袖シャツ",5600),
(5,1,"赤色長袖トップス",3300);

(1,2,"花柄スカート",3500);
(2,2,"水色スカート",4000);
(3,2,"星柄スカート",6300);
(4,2,"黒色スカート",5600);
insert into skirt values(5,2,"赤色スカート",3300);

insert into onepiece values(1,3,"花柄ワンピース",3500);
insert into onepiece values(2,3,"水色ワンピース",4000);
insert into onepiece values(3,3,"星柄ワンピース",6300);
insert into onepiece values(4,3,"黒色ワンピース",5600);
insert into onepiece values(5,3,"赤色ワンピース",3300);




create table users(
user_id int primary key auto_increment,
user_name varchar(255),
password varchar(255),
address varchar(255)
);

insert into users values(1,"taro","123","taro123@gmail.com");
insert into users values(2,"jiro","456","jiro456@gmail.com");
insert into users values(3,"hanako","789","hanako789@gmail.com");
