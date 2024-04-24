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
<%
	String[] movie = {"파묘", "쿵푸팬더", "웡카"};
	pageContext.setAttribute("movie", movie);
%>
<!-- status는 배열 변수에 대한 여러 속성을 제공한다. -->
<!-- index: 해당 항목의 인덱스 / count: 출력 횟수 -->
<!-- first: 첫 번째 요소 last: 마지막 요소 -->
<c:forEach var="movies" items="${movie }" varStatus="status">
	<c:choose>
		<c:when test="${status.first }">
			<li style="color: red;">${movies }</li>
		</c:when>
		<c:otherwise>
		 	<li>${movies }</li>
		 </c:otherwise>
	</c:choose>
	${movies }<br>
	${status.index }<br>
	${status.count }<br>
</c:forEach>

</body>
</html>