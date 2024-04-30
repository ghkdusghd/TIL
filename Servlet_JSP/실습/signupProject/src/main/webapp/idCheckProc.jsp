<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    String id = request.getParameter("checkId");
    response.sendRedirect("idCheck.jsp?id=" + id);
%>
</body>
</html>