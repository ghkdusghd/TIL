<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>주문계산 결과</h1>
<%
	request.setCharacterEncoding("UTF-8");
	
	String menu = request.getParameter("coffee");
	int number = Integer.parseInt(request.getParameter("number"));
	String purchase = request.getParameter("purchase");
	
	out.print("커피메뉴: " + menu + "<br>");
	out.print("1개 가격: ");
	int price = 0;
	switch(menu) {
	case "americano" : 
		out.print("4000 <br>");
		price = 4000;
		break;
	case "latte" :
		out.print("4500 <br>");
		price = 4500;
		break;
	case "cappuccino" :
		out.print("4500 <br>");
		price = 4500;
		break;
	case "frappuccino" :
		out.print("7500 <br>");
		price = 7500;
		break;
	}
	
	out.print("수량: " + number + "<br>");
	out.print("총 금액: " + (number * price) + "<br>");
	out.print("입금액: " + purchase);
%>
</body>
</html>