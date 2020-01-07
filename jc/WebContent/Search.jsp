<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<head>
		<title>Search</title>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no">
		<link rel="stylesheet" href="assets/css/main.css">
</head>
<body class="searching">
  <div id="main">
	<div class="header" align="center"> Text some financial keyword here!</div>
  <div class="title" align="center">
  <h2>
    <a href="#" align="center">We will arrange the source for you.</a>"
    <p> According to the keyword you key in ,we will count the source score. </p>
  </h2>
  </div>
  </div>
<form action='${requestUri}' method='get'>
<input type='text' name='keyword' placeholder = 'keyword' align="center"/>
<input type='submit' value='submit' align="center" />
</form>
</body>
</html>
