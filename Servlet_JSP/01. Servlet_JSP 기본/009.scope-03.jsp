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
	out.print(pageContext.getAttribute("name") + "<br>"); //당연스럽게도 null
	out.print(request.getAttribute("name") + "<br>"); //null
	//forward 를 통한 이동이 아닌 a 태그로 이동함.
	//a 태그는 redirect 방식으로 이동하기 때문에 request 객체에 담긴 값이 유지되지 않음.
	out.print(session.getAttribute("name") + "<br>");
	out.print(application.getAttribute("name") + "<br>");
%>
</body>
</html>