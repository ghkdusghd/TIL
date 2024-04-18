<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>form action - JSP 파일로 데이터 전송하기</title>
</head>
<body>
<form action="006.order.jsp">
	<h1>커피메뉴</h1>
	<input type="radio" id="coffee" name="coffee" value="americano"> 아메리카노(4000원)<br>
	<input type="radio" id="coffee" name="coffee" value="latte"> 카페라떼(4500원)<br>
	<input type="radio" id="coffee" name="coffee" value="cappuccino"> 카푸치노(4500원)<br>
	<input type="radio" id="coffee" name="coffee" value="frappuccino"> 프라푸치노(7500원)<br>
	수량: <input type="number" name="number"><br>
	입금액: <input type="text" name="purchase"><br>
	<input type="submit" value="주문처리">
</form>
</body>
</html>