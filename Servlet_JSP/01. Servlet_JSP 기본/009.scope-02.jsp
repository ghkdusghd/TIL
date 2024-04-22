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
	out.print(pageContext.getAttribute("name") + "<br>"); //null 출력됨
	//page 객체는 하나의 페이지 안에서만 값을 유지하기 때문에 새로운 페이지로 넘어가면 값을 가져올 수 없게 된다.
	out.print(request.getAttribute("name") + "<br>");
	out.print(session.getAttribute("name") + "<br>");
	out.print(application.getAttribute("name") + "<br>");
%>
<a href="009.scope-03.jsp">페이지 이동</a>
</body>
</html>