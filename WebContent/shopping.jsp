<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="./css/style.css">
<title>Shopping</title>
</head>
<body>
	<div class="top">
		<h1>Shopping</h1>
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
					<li><a href="home.jsp">TOP</a></li>
					<li><a href="style.jsp">Style</a></li>
					<li><s:a href="#1">Shopping</s:a></li>
					<li><a href="reserve.jsp">Reserve</a></li>
				</ul>
			</div>

			<!--ヘッダーメニューここまで-->
		</header>
	</div>
	<!--ヘッダーここまで-->
	<div id="main">
		<div class="leftside">
			<br>
			<table>
				<tbody>

					<s:iterator value="#session.itemDTOList">

						<tr>

							<td><a href=""><img
									src='<s:property value="itemImage"/>'/></a></td>
							<td><a href=""><s:property value="itemDetail" /></a></td>
							<td><s:property value="price" /></td>
						</tr>
					</s:iterator>
				</tbody>
			</table>
		</div>
	</div>

	<!--サイドメニューここから-->
	<div class="sub">

		<h3>ブランドから探す</h3>
		<div class="brand">
			<ul>
				<li><a href="http://www.admiralgolf.jp/"><img
						src="image/sub1.gif"></a></li>
				<li><a href="http://www.kappa.ne.jp/golf.html"><img
						src="image/sub2.gif"></a></li>
				<li><a href="https://www.callawaygolf.jp/"><img
						src="image/sub3.gif"></a></li>

			</ul>
		</div>

		<h3>カテゴリから探す</h3>
		<div class="category">
			<ul class="cg">
				<li><a
					href="<s:url action="ShoppingAction"><s:param name="categoryId" value="1"/></s:url>">トップス</a></li>
				<li><a
					href="<s:url action="ShoppingAction"><s:param name="categoryId" value="2"/></s:url>">スカート</a></li>
				<li><a
					href="<s:url action="ShoppingAction"><s:param name="categoryId" value="3"/></s:url>">ワンピース</a></li>
				<li><a
					href="<s:url action="ShoppingAction"><s:param name="categoryId" value="4"/></s:url>">レインウェア</a></li>
				<li><a
					href="<s:url action="ShoppingAction"><s:param name="categoryId" value="5"/></s:url>">シューズ</a></li>
				<li><a
					href="<s:url action="ShoppingAction"><s:param name="categoryId" value="6"/></s:url>">帽子</a></li>
				<li><a
					href="<s:url action="ShoppingAction"><s:param name="categoryId" value="7"/></s:url>">グローブ</a></li>
				<li><a
					href="<s:url action="ShoppingAction"><s:param name="categoryId" value="8"/></s:url>">ドライバー</a></li>
				<li><a
					href="<s:url action="ShoppingAction"><s:param name="categoryId" value="9"/></s:url>">アイアン</a></li>
				<li><a
					href="<s:url action="ShoppingAction"><s:param name="categoryId" value="10"/></s:url>">パター</a></li>
				<li><a
					href="<s:url action="ShoppingAction"><s:param name="categoryId" value="11"/></s:url>">小物</a></li>
			</ul>
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