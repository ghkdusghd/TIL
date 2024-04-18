<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%!
	//선언문 : 스크립트릿이나 표현식에서 전역변수, 메소드를 사용하려면 선언문 블럭 안에 작성해야 한다.
	String str = "hi";
	int n = -20;

	public int absolute(int n) {
		if(n < 0) {
			n = -n;
		}
		return n;
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
</head>
<body>
	<%
	//스크립트릿 : JSP에서 자바 코드를 작성하고자 할 때 사용하는 블록이다.
	//스크립트릿 안에서 선언한 변수는 지역변수가 된다.
		int n1 = 20;
		int n2 = 10;		
		int sum = n1 + n2;

	//변수를 출력하거나 메소드의 결과값을 브라우저에 출력할 수 있는데,
	//out 이라는 내장객체를 사용해야 한다.
		out.print(str + " " + absolute(n) + "<br>");
	%>
	
	<!-- 표현식 : 변수나 메소드의 결과값을 브라우저에 출력하고자 할 때 사용하는 블럭이다. -->
	<%=n1 %> + <%=n2 %> = <%=sum %>
</body>
</html>