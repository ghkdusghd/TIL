<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSTL 연습</title>
</head>
<body>
<!-- 문자열 출력 -->
<c:out value="Hi" /> 
<br>

<!-- 변수에 값 세팅 -->
<c:set var="msg" value="Hi" />
${msg }<br>
<!-- 태그 사이에 값을 넣어도 된다. -->
<c:set var="age">30</c:set>
${age }<br>

<c:set var="add" value="${10+10 }" />
${add }<br>

<c:set var="test" value="${10>5 }" />
${test }<br>

<!-- 변수값 삭제 가능 -->
<c:remove var="add" />
</body>
</html>