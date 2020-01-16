<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<head>
<title>search</title>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no">
<link rel="stylesheet" href="./css/googleitem.css">
</head>
<body  style="background-image: url(./img/duotone-3.png);">

<header class="header">Searching Result


<div id="wrap">
  <form action="${requestUri}" autocomplete="on" method="get">
  <input id="search" name="search" type="text" placeholder="What're we looking for ?"><input id="search_submit" value="Rechercher" type="submit">
  </form>
</div>
</header>
<br>
<br>
<hr class="style-three">

	<%
		String[][] orderList = (String[][]) request.getAttribute("query");
		for (int i = 0; i < orderList.length; i++) {
	%>
	<div>
	<a href='<%=orderList[i][1]%>'><%=orderList[i][0]%></a>
	<hr >
	<br>
	<br>
	</div>	
	<%
		}
	%>

</body>
</html>