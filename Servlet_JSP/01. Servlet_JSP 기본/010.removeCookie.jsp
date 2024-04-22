<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	Cookie c = new Cookie("id","hhy");
	c.setMaxAge(0); //쿠키 유효기간을 만료시킨다.
	response.addCookie(c);
%>
<h3>쿠키가 삭제됨</h3>
<a href="getCookie.jsp">쿠키 삭제 여부를 확인하려면 클릭하라</a>
</body>
</html>