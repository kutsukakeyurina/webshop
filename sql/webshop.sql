drop database if exists webshop;
create database webshop;
use webshop;

create table categories(
category_id int primary key not null,
category varchar(255)
);


insert into categories values
(1,"tops"),
(2,"skirt"),
(3,"onepiece"),
(4,"rainwear"),
(5,"shoes"),
(6,"cap"),
(7,"globe"),
(8,"driver"),
(9,"iron"),
(10,"pat"),
(11,"accesories");



create table items(
item_id int primary key auto_increment,
category_id int,
item_name varchar(255),
item_image varchar(255),
item_detail varchar(255),
price int
);

insert into items values
( 1,1,"花柄ポロシャツ","./image/flowerwear.jpg","ビビッドフラワー・ハンソデポロ RS-8020754-BLK",13500),
( 2,1,"水色長袖トップス","./image/skybluewear.jpg","キャロウェイ
17Mスクータージャカードジップハイネックシャツ 241-7254500-110",9800),
( 3,1,"星柄長袖トップス","./image/starwear.jpg","キャロウェイ
BEARポロシャツ 241-7251801-120",11300),
( 4,1,"黒色長袖トップス","./image/blackwear.jpg","タイトリスト
長袖クルーネックセーター TWMK1756NV",8800),
( 5,1,"赤色長袖トップス","./image/redwear.jpg","タイトリスト
長袖クルーネックセーター TWMK1756RD",8800),
( 6,1,"パーカー","./image/pickup1.jpg","キャロウェイ　スターパーカー",12700),
( 7,1,"ベスト","./image/pickup3.jpg","Kappa  Vネックベスト",9800),
( 8,1,"ポロシャツ","./image/pickup4.jpg","BC 重ね着風レイヤードポロ",12600),
( 9,1,"青迷彩ウィンドブレーカー","./image/pickup6.jpg","袖が外せるウィンドブレーカー",17600),


(10,2,"花柄スカート","./image/flowerskirt.jpg","キャロウェイ
フラワープリントストレッチカルゼスカート (レディーススカート) 241-6225801-100 ",10500),
(11,2,"青色スカート","./image/blueskirt.jpg","セントアンドリュース
スカート 043-7234001-110",11000),
(12,2,"チェックスカート","./image/checkskirt.jpg","アドミラル
15FW ツィード プリーツスカート (レディーススカート) ADLA585-RED",16300),
(13,2,"黒色スカート","./image/blackskirt.jpg","ルコック スポルティフ
前ボタンスカート QGL8928-N151",13300),
(14,2,"赤色スカート","./image/redskirt.jpg","ルコック スポルティフ
フラワーＰＴスカート QGL8925-R561",13300),
(15,2,"スカート","./image/pickup2.jpg","BC バルーンスカート",17500),


(16,3,"花柄ワンピース","","テストテストテスト",3500),
(17,3,"水色ワンピース","","テストテストテスト",4000),
(18,3,"星柄ワンピース","","テストテストテスト",6300),
(19,3,"黒色ワンピース","./image/blackonepeace.jpg","マリ クレール　　ニットワンピース",17500),
(20,3,"赤色ワンピース","","テストテストテスト",3300);

create table item_size(
item_size_id int primary key auto_increment,
item_id int,
length_s int,
length_m int,
length_l int,
bust_s int,
bust_m int,
bust_l int,
sleeve_s int,
sleeve_m int,
sleeve_l int
);

insert into item_size(item_id,length_s,length_m,length_l,bust_s,bust_m,bust_l,sleeve_s,sleeve_m,sleeve_l) values(1,10,10,10,10,10,10,10,10,10);


create table item_description(
item_description_id int primary key auto_increment,
item_id int,
detail varchar(255),
material varchar(255)
);

insert into item_description(item_id,detail,material) values(1,"テストテストテスト","テストテストテスト");



create table styles(
style_id int,
style_image varchar(255),
style_detail varchar(255)
);

insert into styles(style_id,style_image,style_detail) values(1,"test","テストテストテスト");



create table users(
user_id int primary key auto_increment,
user_name varchar(255),
password varchar(255),
address varchar(255)
);

insert into users values
(1,"taro","123","taro123@gmail.com"),
(2,"jiro","456","jiro456@gmail.com"),
(3,"hanako","789","hanako789@gmail.com");
