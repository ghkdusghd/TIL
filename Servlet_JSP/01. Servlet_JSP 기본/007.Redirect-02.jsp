<%@page import="java.net.URLEncoder"%>
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
	String id = "gildong";
	String pw = "1234";
	String name = "홍길동";
	
	request.setCharacterEncoding("UTF-8");
	
	if(id.equals(request.getParameter("id")) && pw.equals(request.getParameter("pwd"))) {
		response.sendRedirect("main2.jsp?name=" + URLEncoder.encode(name,"UTF-8"));
		//페이지 강제 이동 : 쿼리스트링으로 name 의 value 를 갖고 간다. 한글이기 때문에 인코딩해서 가져감.
		//쿼리스트링으로 가져가는 이유는 ? redirect 메소드는 이전 페이지의 값을 유지할 수 없기 때문이다.
	} else {
		response.sendRedirect("class02.jsp"); //이전 페이지로 강제 이동.
	}
%>
</body>
</html>