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
					<li><a href="StyleAction">Style</a></li>
					<li><s:a href="ShoppingAction">Shopping</s:a></li>
					<li><a href="ReserveAction">Reserve</a></li>
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
				<s:iterator value="displayList">

					<!--  <table>
				<tbody>

				<s:iterator value="#session.itemDTOList">

					 <tr>

							<td><a href='<s:url action="ShoppingDetailAction"><s:param name="itemId" value="%{itemId}" /></s:url>'><img src='<s:property value="itemImage"/>'/></a></td>
							<td><a href='<s:url action="ShoppingDetailAction"><s:param name="itemId" value="%{itemId}"/></s:url>'><s:property value="itemDetail" /></a></td>
							<td><s:property value="price" /></td>
						</tr>
					</s:iterator>
				</tbody>
			</table>  -->


					<tr>
						<td><s:property value="itemName" /></td>
						<td><a
							href='<s:url action="ShoppingDetailAction"><s:param name="itemId" value="%{itemId}"/></s:url>'><s:property
									value="itemDetail" /></a></td>
						<td><a
							href='<s:url action="ShoppingDetailAction"><s:param name="itemId" value="%{itemId}" /></s:url>'><img
								class="shoppingimg" src='<s:property value="itemImage"/>' /></a></td>
						<td><s:property value="price" /></td>
					</tr>
				</s:iterator>
			</table>

			<!-- リストにデータが入っている時-->
			<s:if test="number > 0">

				<div class="center" style="text-align: center; margin-bottom: 50px;">
					<!-- ページネーション:1ページ目のみ -->
					<s:if test="pageNum == 1">
						<span>&laquo;<s:text name="戻る" /></span>
					</s:if>

					<!-- ページネーション:1ページ目以外 -->
					<s:else>
						<a
							href='<s:url action="ShoppingAction">
							<s:param name="pageNum" value="pageNum-1"/>
							</s:url>'>&laquo;<s:text
								name="戻る" /></a>

					</s:else>


					<s:property value="pageNum" />


					<!-- ページネーション:最終ページ -->
					<s:if test="pageNum == maxPage">
						<s:text name="進む" />&raquo;
						</s:if>


					<!-- 最終ページ以外 -->
					<s:else>
						<a
							href='<s:url action="ShoppingAction">
							<s:param name="pageNum" value="pageNum+1"/>
							</s:url>'><s:text
								name="進む" />&raquo;</a>

					</s:else>


				</div>
			</s:if>


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
	</div>
	<!--フッターここから-->
	<div id="footer">
		<p>Copyright(C) golf shop All Rights Reserved.</p>
		<!--フッターここまで-->

	</div>
	<!--"container"-->
	<script type="text/javascript" src="script.js"></script>



</body>
</html>