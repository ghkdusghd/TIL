<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>logout</title>
</head>
<body>
<%
    session.removeAttribute("loginMember");
    response.sendRedirect("login.jsp");
%>
</body>
</html>