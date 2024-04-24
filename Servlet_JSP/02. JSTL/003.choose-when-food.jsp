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
<!-- choose when : java의 switch case 와 비슷한 문법 -->
<c:choose>
	<c:when test="${param.food == 1 }">
		${"푸딩" }
	</c:when>
	<c:when test="${param.food == 2 }">
		${"피자" }
	</c:when>
	<c:when test="${param.food == 3 }">
		${"치킨" }
	</c:when>
	
	<!-- 조건을 만족하지 못하는 경우 c:otherwise 로 처리한다.-->
	<c:otherwise>
	
	</c:otherwise>
</c:choose>
</body>
</html>