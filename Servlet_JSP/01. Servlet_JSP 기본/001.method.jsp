<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>전송방식 - get, post</title>
</head>
<body>
	<form method="get" action="MethodServlet">
	<!-- get 방식으로 MethodServlet(서버)쪽에 전송 -->
	<input type="submit" value="get방식으로 호출">
	<!-- 버튼을 누르면 서버에 get방식으로 전송된다. -->
	</form><br>
	
	<form method="post" action="MethodServlet">
	<!-- post 방식으로 MethodServlet(서버)쪽에 전송 -->
	<input type="submit" value="post방식으로 호출">
	<!-- 버튼을 누르면 서버에 post방식으로 전송된다. -->
	</form><br>
</body>
</html>