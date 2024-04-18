<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page errorPage="005.error.jsp" %>
<!-- body 에서 에러가 나면 error.jsp 로 넘어가는 유효성 검사 -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Page 선언자 - errorPage 유효성 검사</title>
</head>
<body>
	0으로 못 나눔
	<%=4/0 %>
</body>
</html>