<%@ page import="mgr.MemberMgr" %>
<%@ page import="static mgr.MemberMgr.getInstance" %>
<%@ page contentType="text/html;charset=UTF-8" language="java"
         pageEncoding="UTF-8" %>
<html>
<head>
    <title>ID 중복체크</title>
    <script type="text/javascript" src="script/idCheck.js"></script>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-image: url("https://i.pinimg.com/736x/b0/df/95/b0df95cfc6f31293d002d4d6daac253c.jpg");
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            padding-top: 50px;
        }

        button {
            padding: 10px 20px;
            background-color: #007bff;
            color: #fff;
            border: none;
            cursor: pointer;
            border-radius: 5px;
            margin: 10px 0;
        }

        button:hover {
            background-color: #0056b3;
            cursor: pointer;
        }

        input[type="text"]{
            flex: 1;
            padding: 10px;
            border: none;
            border-bottom: 1px solid rgb(223, 223, 223);
            margin-right: 10px;
            border-radius: 25px;
        }

        input[type="submit"]{
            padding: 10px 20px;
            background-color: #007bff;
            color: #fff;
            border: none;
            cursor: pointer;
            border-radius: 25px;
            margin: 10px 0;
        }
    </style>
</head>
<body>
<form action="idCheckProc.jsp" name="idCheckForm" >
    <input type="text" name="checkId"><input type="submit" value="중복 체크">

</form>
<%
    String id = request.getParameter("id");
    if (id == null || id.trim().isEmpty()) {
        out.print("ID를 입력해주세요.");
%>
<button onclick="closeWindow()">닫기</button>
<%
} else {
    MemberMgr mgr = getInstance();
    boolean result = mgr.checkId(id);
    if (result == true) {
        out.print(id + "는 사용가능한 아이디입니다!");
%>
<div>
    <button onclick="applyId('<%=id%>')">적용</button>
    <button onclick="closeWindow()">닫기</button>
</div>
<%
} else {
    out.print(id + "는 이미 사용중인 아이디입니다.");
%>

<%
        }
    }
%>


</body>
</html>