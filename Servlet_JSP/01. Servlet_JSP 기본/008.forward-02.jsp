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
	int age = Integer.parseInt(request.getParameter("age"));
	
	if(age < 15) {
%>
		<script type="text/javascript">
			alert('!관람 불가! 이전 페이지로 이동합니다.');
			history.go(-1);
		</script>
<%
	} else {
		//forward 방식으로 페이지 이동하기
		
		request.setAttribute("name", "화연"); 
		//화연 이라는 value를 name 이라는 key에 넣어서 request 객체에 저장함.
		//forward 방식으로 이동하기 때문에 request 객체의 값이 유지된다.
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("result.jsp");
		//forward 메소드는 RequestDispatcher 객체로만 접근할 수 있다.
		
		dispatcher.forward(request, response);
	}
%>
</body>
</html>