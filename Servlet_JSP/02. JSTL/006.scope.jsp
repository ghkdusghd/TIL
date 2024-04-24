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
<c:set var="age" value="30" scope="page" />
age : <c:out value="${age }">10</c:out>
<!-- scope 범위 안에서 age의 값은 30이 된다. 따라서 위 예제에서 age는 30으로 출력됨. -->
</body>
</html>