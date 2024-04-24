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
<c:catch var="errmsg">
	예외 전<br>
	<%=1/0 %>
	예외 후<br>
</c:catch>
<c:out value="${errmsg }"></c:out>
</body>
</html>