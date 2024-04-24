<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- test 안에 조건식을 넣으면 된다. -->
<c:if test="${param.color == 1 }">
	<span style="color:red;">빨강</span>
</c:if>
<c:if test="${param.color == 2 }">
	<span style="color:orange;">주황</span>
</c:if>
<c:if test="${param.color == 3 }">
	<span style="color:yellow;">노랑</span>
</c:if>
</body>
</html>