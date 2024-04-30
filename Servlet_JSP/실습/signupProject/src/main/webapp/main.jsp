<%@ page import="bean.MemberBean" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>main</title>
    <link rel="stylesheet" href="css/main.css">
</head>
<body>
<%
    MemberBean loginMember = (MemberBean) session.getAttribute("loginMember");
    String hobbies[] = loginMember.getHobby().split("");
%>
<h2><%=loginMember.getName()%>님 회원 정보</h2>
<div id="wrap" align="center">
        <ul>
            <li>
            	<label>ID</label>
            	<%=loginMember.getId()%>
            </li>
      		<li>
	            <label>이름</label>
	            <%=loginMember.getName()%>
	         </li>
	        <li>
            	<label>성별</label>
                <%
                    String gender = loginMember.getGender();
                    if(gender.equals("M")) {
                        out.print("남자");
                    }
                    else {
                        out.print("여자");
                    }
                %>
              </li>
        	<li>
            	<label>이메일</label>
            	<%=loginMember.getEmail()%>
	        </li>
	        <li>
            	<label>생년월일</label>
	            <%
	                String birthStr = loginMember.getBirth();
	                SimpleDateFormat originFormat = new SimpleDateFormat("yyMMdd");
	                SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
	                Date birthDate = originFormat.parse(birthStr);
	                out.print(dateFormat.format(birthDate));
	             %>
	         </li>
        	<li>
            	<label>우편번호</label>
            	<%=loginMember.getZipcode()%>
        	</li>
        	<li>
        		<label>주소</label>
            	<%=loginMember.getAddress()%>
            </li>
	        <li>
            	<label>취미</label>
            	<%
                    for(String hobby : hobbies) {
                        switch(hobby) {
                            case "I":
                                out.print("인터넷 ");
                                break;
                            case "T":
                                out.print("여행 ");
                                break;
                            case "G":
                                out.print("게임 ");
                                break;
                            case "M":
                                out.print("영화 ");
                                break;
                            case "E":
                                out.print("운동 ");
                                break;
                        }
                    }
            	%>
           	 </li>
			<li>
            	<label>직업</label>
            	<%=loginMember.getJob()%>
        	</li>
        </ul>
    <button onclick="window.location.href='logoutProc.jsp'">로그아웃</button>
</div>
</body>
</html>