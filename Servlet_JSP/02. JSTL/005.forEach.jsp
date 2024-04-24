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
<!-- for(int i = 1; i <= 10; i++) 과 같은 의미라고 생각하면 됨 -->
<!-- step 의 값만큼 증가시키면서 반복한다. 값이 주어지지 않는 경우의 디폴트값은 1이다. -->
<c:forEach begin="1" end="10" var="cnt" step="1" varStatus="status">
	${cnt }
	<c:if test="${not status.last }">
		,
	</c:if>
</c:forEach>

<hr>

<c:forEach var="cnt" begin="7" end="10" varStatus="status">
	${status.index }<br>
	${status.count }<br>
	${cnt }<br>
	${status.first }
</c:forEach>
</body>
</html>