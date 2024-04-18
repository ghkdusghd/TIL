<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page isErrorPage="true" %>
<!-- 현재 페이지가 에러페이지임을 명시하는 page 지시자 -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
</head>
<body>
	<%=exception.getMessage() %>
</body>
</html>