<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>세션 받아오기</h3>
<%
	//받아오는 방법 !
	//1. getAttribute 메소드로 받아오기
	String id = (String)session.getAttribute("id");
	String pw = (String)session.getAttribute("pw");
	String age = (String)session.getAttribute("age");
	
	//2. Enum 타입으로 받아오기
	Enumeration names = session.getAttributeNames(); //getAttributeNames() : enum 타입을 리턴한다.
	while(names.hasMoreElements()) { //session 의 name값을 저장한 names 객체가 null 값이 나올 때까지 반복.
		String name = names.nextElement().toString(); //name 값을 꺼내서 String name에 저장.
		String value = session.getAttribute("name").toString(); //해당 name값의 value를 저장.
		out.print(name + " " + value); //브라우저에 출력한다.
	}
%>
<%="id: " + id %><br>
<%="pw: " + pw %><br>
<%="age: " + age %><br>
</body>
</html>