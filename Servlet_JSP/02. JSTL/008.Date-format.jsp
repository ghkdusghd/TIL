<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- core태그에 날짜 객체를 담아서 fmt태그로 날짜 포맷을 설정할 수 있다. -->
<c:set var="now" value="<%= new Date() %>"></c:set>
${now }<br>
<fmt:formatDate value="${now }"/>
<hr>
date: <fmt:formatDate value="${now }" type="date"/><br>
time: <fmt:formatDate value="${now }" type="time"/><br>
both: <fmt:formatDate value="${now }" type="both"/>
<hr>
<fmt:formatDate value="${now }" pattern="yyyy년 MM월 dd일 hh시"/>
</body>
</html>