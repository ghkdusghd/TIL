<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>세션 설정하기</h3>
<%
	//클라이언트가 폼에서 입력한 값을 받아서 session 속성에 넣는다.
	//본 예제에서는 그 과정을 입력값으로 대체함.
	session.setAttribute("id","hhy");
	session.setAttribute("pw","1234");
	session.setAttribute("age","30");
%>
</body>
</html>