<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>클라이언트로부터 쿠키를 가져오는 작업</h3>
<%
	Cookie[] co = request.getCookies();
	for(Cookie c : co) {
		out.print(c.getName() + " : " + c.getValue() + "<br>");
	}
%>
</body>
</html>