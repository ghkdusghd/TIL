<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script type="text/javascript" src="002.request, response.js"></script>
<title>request, response</title>
</head>
<body>
<form action="Member" method="POST" name="f" onsubmit="return validate()">
<div class="block">
    <label for="name">이름 </label><span class="star">*</span> <input type="text" name="name" id="name" required><br>
</div>
<div class="block">
    <label for="regnum">주민등록번호 </label><span class="star">*</span> <input type="number" name="regnum" id="regnum" required> - <input type="number" name="regnum2" required><br>
</div>
<div class="block">
    <label for="id">아이디 </label><span class="star">*</span> <input type="text" name="id" id="id" required><br>
</div>
<div class="block">
    <label for="pwd">비밀번호 </label><span class="star">*</span> <input type="password" name="pwd" id="pwd" required><br>
</div>
<div class="block">
    <label for="pwdconfirm">비밀번호 확인 </label><span class="star">*</span> <input type="password" name="pwdconfirm" id="pwdconfirm"><br>
</div>
<div class="block">
    <label for="email">이메일</label> &nbsp; <input type="text" name="email" id="email"> @ <input type="text" name="email2" id="email2" value="gmail.com"> 
    <select id="emailselect">
        <option value="gmail.com" selected>gmail.com</option>
        <option value="nate.com">nate.com</option>
        <option value="yahoo.com">yahoo.com</option>
    </select>
    <br>
</div>
<div class="block">
    <label for="mailnum">우편번호</label> &nbsp; <input type="text" name="mailnum" id="mailnum"><br>
</div>
<div class="block">
    <label for="addr1">주소</label> &nbsp; <input type="text" name="addr1" id="add1"> <input type="text" name="addr2"><br>
</div>
<div class="block">
    <label for="tel">핸드폰 번호</label> &nbsp; <input type="text" name="tel" id="tel"><br>
</div>
<div class="block">
    <label for="job">직업</label> &nbsp; <select name="job" size="3" id="job">
            <option value="student">학생</option>
            <option value="comp">컴퓨터/인터넷</option>
            <option value="news">언론</option>
    </select><br>
</div>

    <label>메일/SMS 정보 수신</label> &nbsp; <input type="radio" name="allowMail" id="yes" value="yes" checked><label for="yes" class="yn">수신</label> 
    <input type="radio" name="allowMail" id="no" value="no"><label for="no" class="yn">수신거부</label><br>


    <div id="btns"><input type="submit" value="회원가입"> <input type="reset" value="취소"></div>
</form>
</body>
</html>