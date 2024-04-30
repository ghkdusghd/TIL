<%@ page import="bean.MemberBean" %>
<%@ page import="mgr.MemberMgr" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
</head>
<body>
<%
    MemberBean loginMember = (MemberBean) session.getAttribute("loginMember");

    if(loginMember == null){
        response.sendRedirect("login.jsp");
    }else{
        response.sendRedirect("main.jsp");
    }
%>
</body>
</html>