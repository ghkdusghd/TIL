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
	pageContext.setAttribute("name", "성진");
	request.setAttribute("name", "승빈");
	session.setAttribute("name", "태경");
	application.setAttribute("name", "재완");
	
	out.print(pageContext.getAttribute("name") + "<br>");
	out.print(request.getAttribute("name") + "<br>");
	out.print(session.getAttribute("name") + "<br>");
	out.print(application.getAttribute("name") + "<br>");
	
	request.getRequestDispatcher("009.scope-02.jsp").forward(request, response);
%>
</body>
</html>