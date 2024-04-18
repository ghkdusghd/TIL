<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<script type="text/javascript" src="003.param.js"></script>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form method="get" action="003.ParamServlet" name="form">
		id : <input type="text" name="id"><br>
		age : <input type="text" name="age"><br>
		<input type="submit" value="전송" onclick="return check()">
	</form>
</body>
</html>