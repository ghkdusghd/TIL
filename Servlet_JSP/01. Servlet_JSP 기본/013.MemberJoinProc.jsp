<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	request.setCharacterEncoding("UTF-8");
%>
<!-- request로 넘어온 데이터를 java beans 와 매핑시키는 useBean 액션태그 -->
<jsp:useBean id="student" class="kr.co.bit.StudentBean"/>

<!-- 클라이언트가 jsp 폼에서 입력한 데이터를 java bean 클래스에 매핑(넣어준다) -->
<!-- property 를 * (asterisk) 로 적어주면 폼에서 받은 모든 데이터를 자동으로 필드에 넣을 수 있다. -->
<jsp:setProperty property="*" name="student"/>

<!-- 출력할 때는 * 쓸 수 없다. -->
<h3>아이디 : <jsp:getProperty property="id" name="student" /></h3>
<h3>이메일 : <jsp:getProperty property="email" name="student" /></h3>
<h3>전화번호 : <jsp:getProperty property="tel" name="student" /></h3>
</body>
</html>