<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>로그인</title>
    <script type="text/javascript" src="script/loginScript.js"></script>
    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
    <link rel="stylesheet" href="css/script.css">
</head>
<body>
<h2>로그인</h2>
<div id="loginbox">
    <form action="loginProc.jsp" name="frm" id="loginform">
        <div class="loginstyle">
            <label for="id" class="label">로그인</label>
            <input type="text" name="id" id="id">
        </div>
        <div class="loginstyle">
            <label for="pwd" class="label">비밀번호</label>
            <input type="password" name="pwd" id="pwd">
        </div>
        <input type="submit" onclick="return loginCheck()" value="로그인">
    </form>
    <button onclick="location.href='member.jsp'">회원가입</button>
</div>
<script type="text/javascript">
    let $in = $('#loginbox input');
    $in.focus(function(){
        $(this).parent().find('.label').addClass('active');
    })

    $("#id").focusout(function(e){
        if($(this).val()==""){
            $(this).parent().find('.label').removeClass('active');
        }
    })
    $("#pwd").focusout(function(e){
        if($(this).val()==""){
            $(this).parent().find('.label').removeClass('active');
        }
    })
</script>
</body>
</html>