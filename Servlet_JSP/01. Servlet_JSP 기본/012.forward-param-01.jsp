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
<jsp:forward page="012.forward-param-02.jsp"/>
<jsp:param value='<%=URLEncoder.encode("화연","UTF-8") %>' name="name"/>
</body>
</html>