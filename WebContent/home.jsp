<%@page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>shopping site</title>
<link rel="stylesheet" type="text/css" href="./css/style.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.0/jquery.min.js"></script>
<script src="./jquery.bxslider/jquery.bxslider.min.js"></script>
<link href="./jquery.bxslider/jquery.bxslider.css" rel="stylesheet">

<script type="text/javascript">
	$(function() {
		$(".bxslider").bxSlider({

			auto : true,
			mode : 'fade',
			speed : 1000
		});
	});
</script>

</head>
<body>

	<div class="top">
		<h1>WEB GOLF SHOP</h1>
	</div>
	<div id="container">

		<!--ヘッダーここから-->
		<header>
			<!--タイトルロゴここから-->
			<div class="logo">GIRL'S GOLF SITE</div>
			<!--タイトルロゴここまで-->

			<!--ヘッダーメニューここから-->
			<div class="menu">
				<ul>
					<li><a href="#1">TOP</a></li>
					<li><a href="StyleAction">Style</a></li>
					<li><s:a href="ShoppingAction" >Shopping</s:a></li>
					<li><a href="ReserveAction">Reserve</a></li>
				</ul>
			</div>

			<!--ヘッダーメニューここまで-->
		</header>
	</div>
	<!--ヘッダーここまで-->

	<div style="clear: both;"></div>
	<!--ヘッダーメニューここまで-->

	<div class="image">
		<ul class="bxslider">
			<li><img src="image/image6.jpg"></li>
			<li><img src="image/image3.jpg"></li>
			<li><img src="image/image4.jpg"></li>
			<li><img src="image/image5.jpg"></li>
		</ul>
	</div>





	<!--メインここから-->
	<div id="main">
		<div class="leftside">
			<h2>FEATURED ARTICLES</h2>


			<div class="feature">
				<p>女性向けゴルフ特集記事はこちら</p>
				<div class="ft">
					<ul>
						<li><a href=""><img src="image/tokusyuu1.jpg"></a></li>
						<li><a href=""><img src="image/tokusyuu2.jpg"></a></li>
						<li><a href=""><img src="image/tokusyuu3.jpg"></a></li>
						<li><a href=""><img src="image/tokusyuu4.jpg"></a></li>

					</ul>
				</div>

			</div>


			<!--更新情報ここから-->
			<h2>更新情報</h2>
			<div class="new">
				<ul>
					<li>00/00：更新しました</li>
					<li>00/00：更新しました</li>
					<li>00/00：更新しました</li>
					<li>00/00：更新しました</li>
				</ul>
			</div>
			<!--更新情報ここまで-->

			<h2>SHOPPING</h2>
			<h4>ピックアップアイテム</h4>
			<div class="pickup">
				<ul class="leftpickup">
					<li><a href="./image/pickup1.jpg"><img alt="" src="image/pickup1.jpg" /></a></li>
					<li><a href="shopping.jsp"><img alt="" src="image/pickup2.jpg" /></a></li>
					<li><a href="shopping.jsp"><img alt="" src="image/pickup3.jpg" /></a></li>
				</ul>
				<ul class="rightpickup">
					<li><a href="shopping.jsp"><img alt="" src="image/pickup4.jpg" /></a></li>
					<li><a href="shopping.jsp"><img alt="" src="image/pickup5.jpg" /></a></li>
					<li><a href="shopping.jsp"><img alt="" src="image/pickup6.jpg" /></a></li>
				</ul>

			</div>

			<p align="right">
				<a href="#top">ページ上に戻る</a>
			</p>
		</div>

		<!--メインここまで-->

		<!--サイドメニューここから-->
		<div class="sub">

			<h3>ブランドから探す</h3>
			<div class="brand">
				<ul>
					<li><a href="http://www.admiralgolf.jp/"><img src="image/sub1.gif"></a></li>
					<li><a href="http://www.kappa.ne.jp/golf.html"><img src="image/sub2.gif"></a></li>
					<li><a href="https://www.callawaygolf.jp/"><img src="image/sub3.gif"></a></li>

				</ul>
			</div>

			<h3>カテゴリから探す</h3>
			<div class="category">
				<ul class="cg">
			        <li><a href="shopping.jsp">トップス</a></li>
					<li><a href="shopping.jsp">スカート</a></li>
					<li><a href="shopping.jsp">ワンピース</a></li>
					<li><a href="shopping.jsp">レインウェア</a></li>
					<li><a href="shopping.jsp">シューズ</a></li>
					<li><a href="shopping.jsp">帽子</a></li>
					<li><a href="shopping.jsp">グローブ</a></li>
					<li><a href="shopping.jsp">ドライバー</a></li>
					<li><a href="shopping.jsp">アイアン</a></li>
					<li><a href="shopping.jsp">パター</a></li>
					<li><a href="shopping.jsp">小物</a></li>
				</ul>
			</div>

		</div>
	</div>
	<!--サイドメニューここまで-->


	<!--フッターここから-->
	<div id="footer">
		<p>Copyright(C) golf shop All Rights Reserved.</p>
		<!--フッターここまで-->

	</div>
	<!--"container"-->
	<script type="text/javascript" src="script.js"></script>
</body>
</html>
