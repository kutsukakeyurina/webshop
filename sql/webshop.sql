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


(16,3,"花柄ワンピース","./image/floweronepeace.jpg","パーセッタンタドゥエ
MFL16SS Wsワンピース PAR6SMCL07-WHT",5546),
(17,3,"白色ワンピース","./image/whiteonepeace.jpg","キャロウェイ
17Lフラワープリント鹿ノ子シャツワンピース 241-7113805 030",9100),
(18,3,"ボーダーワンピース","./image/twocoloronepeace.jpg","キャロウェイ
ワッフルボーダーポロワンピース (レディースワンピース半袖) 241 6113804 120 ",9800),
(19,3,"黒色ワンピース","./image/blackonepeace.jpg","マリ クレール　　ニットワンピース",17500),
(20,3,"赤色ワンピース","./image/redonepeace.jpg","ルコック スポルティフ
シャツワンピース QGL2659CP-R453 ",8400),

(21,4,"ツーカラーレインウェア","./image/rainwear1.jpg","ルコック スポルティフ
防水レインウエア QGL7022CP-E673",22000),
(22,4,"チェックレインウェア","./image/rainwear2.jpg","ルコック スポルティフ
防水ワンピースレインウエア QGL7021CP-XN20",19000),
(23,4,"ホワイトレインウェア","./image/rainwear3.jpg","キャロウェイ
4WAYセットアップレインウェア 241-7988801-030",26000),
(24,4,"ピンクレインウェア","./image/rainwear4.jpg","マリ・クレール スポール
レイン上下セット 716930-PK",18000),
(25,4,"迷彩レインウェア","./image/rainwear5.jpg","CUARTO
迷彩柄レインブルゾン W-6001-MUL ",8400),

(26,5,"ペイントシューズ","./image/shoes1.jpg","フットジョイ
16 エンパワー SLボア PA 98036W",16000),
(27,5,"オレンジシューズ","./image/shoes2.jpg","ナイキ
ウィメンズ ルナ コントロール ヴェ 5LJC172600",18500),
(28,5,"紺色シューズ","./image/shoes3.jpg","フットジョイ
17 FJ ﾚｼﾞｬｰ BL 92905W",14000),
(29,5,"黄色シューズ","./image/shoes4.jpg","ナイキ
ウィメンズ ブレーザー ＮＧＣ 859635-026 904758-200",18000),
(30,5,"赤色シューズ","./image/shoes5.jpg","プーマ
PG ブレイズ ディスク 189421-04",12000),

(31,6,"白色帽子","./image/cap1.jpg","ニューバランス
ケーブル編み ボンボン付き ビーニー 012-7287509-030",4500),
(32,6,"白色ピンク帽子","./image/cap2.jpg","キャップ WH/PK SWH7142 WH/PK",3600),
(33,6,"黒色帽子","./image/cap3.jpg","ルコック スポルティフ
ひさし付きキニットキャップ QGL0443-N151 帽子",3900),
(34,6,"赤色帽子","./image/cap4.jpg","マンシングウエア
ツバ付き ニットキャップ JALK314-R458",5900),
(35,6,"赤色ニット帽子","./image/cap5.jpg","フィラ
ツバツキニットキャップ 797912-RD",3800),

(36,7,"黒色グローブ","./image/globe1.jpg","ミズノ
サーマグリップ 両手 5MJWB75209W",3000),
(37,7,"白色グローブ","./image/globe2.jpg","フィラ
ＦＷＧ１０５ＷＢ　１８ＳＳ",2800),
(38,7,"白ピンクグローブ","./image/globe3.jpg","ブリヂストン
ゴルフグローブ 両手用 GLG77JWP",3300),
(39,7,"紺色グローブ","./image/globe4.jpg","キャロウェイ
Chev Glove Women's 17 JM 左手用 GL CG CHEV LH W NV/WH/RD 17",1440),
(40,7,"白オレンジグローブ","./image/globe5.jpg","ウォルタージェヌイン
レディス左手用 革グローブ 12659-WTOR ",3500),

(41,8,"ドライバー","./image/driver1.jpg","ダンロップ　XXIO X(ゼクシオテン) レディース ドライバー ブルー (#1 ロフト13.5度) ゼクシオ MP1000L カーボンシャフト",72000),
(42,8,"ドライバー","./image/driver2.jpg","ブリヂストン
TOUR B JGR レディース ドライバー ブルー (ロフト11.5度) カーボンシャフト AiR Speeder L",56700),
(43,8,"ドライバー","./image/driver3.jpg","キャロウェイ
GBB EPIC STAR WOMEN'S ドライバー W#1",67500),
(44,8,"ドライバー","./image/driver4.jpg","テーラーメイド
■GLOIRE F レディースドライバー (ロフト12.5度) カーボンシャフト GL6600W",72250),
(45,8,"ドライバー","./image/driver5.jpg","プロギア
SWEEP BLUE ドライバー (1W、ロフト13.5度) M-30",46800),

(46,9,"アイアン","./image/iron1.jpg","ダンロップ XXIO X(ゼクシオテン) レディース アイアン5本セット ボルドー (#7?9、PW 、SW) ゼクシオ MP1000L カーボンシャフト",108000),
(47,9,"アイアン","./image/iron2.jpg","テーラーメイド
GLOIRE F レディースアイアンセット(#7#9、PW、SW 5本セット) カーボンシャフトGL6600W",100800),
(48,9,"アイアン","./image/iron3.jpg","ツアーステージ
V-iQ CL アイアンセット (#7?9、PW、SW 5本セット) VT-406I カーボンシャフト ",55370),
(49,9,"アイアン","./image/iron4.jpg","ミズノ
JPX SOARERトI6-PGSレディース　アイアンセット（＃6?＃9、PGS7本セット）Orochi LadiesカーボンシャフトL",151200),
(50,9,"アイアン","./image/iron5.jpg","ダンロップ
XXIO9 カラーカスタムレディースアイアン5本セット MP900L ボルドー (7I 8I 9I PW SW) ",68500),

(51,10,"パター","./image/pat1.jpg","オデッセィ
O-WORKS Womens #1W レディスパター（ロフト 3度)",25000),
(52,10,"パター","./image/pat2.jpg","テーラーメイド
TP COLLE Berwick レディース左用パター",21200),
(53,10,"パター","./image/pat3.jpg","ピン
G LE レディースパター OSLO",32400),
(54,10,"パター","./image/pat5.jpg","プロギア
SWEEP PT BLACK/PINK パター (ロフト3度) スチールシャフト ",13500),
(55,10,"パター","./image/pat4.jpg","ヨネックス
FIORE レディースPUTTER パター",9800),

(56,11,"白色バッグ","./image/item1.jpg","オノフ
ボストンOV1718-01ホワイト",13500),
(57,11,"黒色バッグ","./image/item2.jpg","キャロウェイ
URBAN TOTE WMS 17JM 5917209 NV/WH ",11000),
(58,11,"ヘッドカバー","./image/item3.jpg","ライト
すみっコぐらしDRペンギン900 （ヘッドカバー） H-280 900 ",3900),
(59,11,"マーカー","./image/item4.jpg","セントアンドリュース
カジノマーカー 042-7984018-160",1800),
(60,11,"グリーンフォーク","./image/item5.jpg","フィドラ
１７ＦＷ　グリーンフォーク",2000);



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

insert into item_size(item_id,length_s,length_m,length_l,bust_s,bust_m,bust_l,sleeve_s,sleeve_m,sleeve_l) values
(1,10,10,10,10,10,10,10,10,10);


create table item_description(
item_description_id int primary key auto_increment,
item_id int,
detail varchar(255),
material varchar(255)
);

insert into item_description(item_id,detail,material) values
(1,"テストテストテスト","テストテストテスト");


create table styles(
style_id int primary key auto_increment,
style_image varchar(255),
style_detail varchar(255)
);

insert into styles(style_id,style_image,style_detail) values
(1,"","テストテストテスト"),
(2,"","テストテストテスト"),
(3,"","テストテストテスト"),
(4,"","テストテストテスト"),
(5,"","テストテストテスト"),
(6,"","テストテストテスト");



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
