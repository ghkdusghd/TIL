<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- 기존 출력문들과 비교 -->
<%="Hi" %><br>
<% out.print("Hi2"); %><br>
${"Hi" }<br>

<!-- EL 사용 예시 -->
${10}<br>
${4.5 }<br>
${true }<br>
${null }<br> <!-- null값은 공백으로 출력됨. -->

<!-- {}안에서 연산 가능 -->
${3+4 }<br>
${3/4 }<br>
${4 div 2 }<br> <!-- div: 나누기 연산 -->
${5 mod 2 }<br> <!-- mod: % 연산 -->
${5>2 }<br>
${(5>2)?5:2 }<br>
<br>

<!-- empty연산 : 객체가 null값인지 아닌지 판단하는 연산자. null값이면 true를 반환한다. -->
<%
	String str = null;
%>
${empty str }<br>
<br>

<!-- eq연산 : == 연산과 동일한 기능을 한다 -->
${3==3 }<br>
${3 eq 3 }<br>
</body>
</html>