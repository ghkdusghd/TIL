<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>쿠키설정</h3>
 <%
    //1. 쿠키 객체 생성
    Cookie c = new Cookie("id","hhy");
    
    //2. 유효기간 설정
    c.setMaxAge(365*24*60*60);
    
    //3. 클라이언트에 쿠키 전송
    response.addCookie(c);
    
    //4. 쿠키를 생성해 클라이언트에 전달
    response.addCookie(new Cookie("pwd","1234"));
    response.addCookie(new Cookie("age","20"));
 %>
</body>
</html>