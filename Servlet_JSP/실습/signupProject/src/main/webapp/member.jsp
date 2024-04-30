<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Sign up</title>
    <script type="text/javascript" src="script/memberScript.js"></script>
    <link rel="stylesheet" href="css/signup.css">
    <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
</head>
<body>
<center>
    <h2>회원가입</h2>
    <form action="memberProc.jsp" name="frm">
        <ul>
            <li>
                <label for="id">아이디</label><span>*</span>
                <input type="text" id="id" name="id">
                <input type="button" value="ID중복확인" onclick="open_idCheck()">
                <input type="hidden" name="clickCheck" value="0">
            </li>
            <li>
                <label for="pw">비밀번호</label><span>*</span>
                <input type="password" id="pw" name="pwd">
            </li>
            <li>
                <label for="pwCheck">비밀번호 확인</label><span>*</span>
                <input type="password" id="pwCheck" name="pwCheck">
            </li>
            <li>
                <label for="name">이름</label><span>*</span>
                <input type="text" id="name" name="name">
            </li>
            <li>
                <label>성별</label><span>*</span>
                <input type="radio" name="gender" id="male" value="M" checked><label class="genderLabel" for="male">남</label>
                <input type="radio" name="gender" id="female" value="F"><label class="genderLabel" for="female">여</label>
            </li>
            <li>
                <label for="birth">생년월일</label><span>*</span>
                <input type="text" id="birth" name="birth">
                ex)900323
            </li>
            <li>
                <label for="email">Email</label><span>*</span>
                <input type="email" id="email" name="email">
            </li>
  			 <li>
                <label for="zip">우편번호</label>
                <input type="text" id="zip" name="zipcode" disabled >
                <input type="button" value="우편번호 찾기" onclick="open_findWin()" id="findZip">
			</li>
            <li>
                <label for="addr">주소</label>
                <input type="text" id="addr" name="address">
            </li>
            <li>
                <label>취미</label>
                <input type="hidden" name="hobby" value="">
                <input type="checkbox" name="hobby" id="internet" value="I"><label class="hobbyLabel" for="internet"> 인터넷</label>
                <input type="checkbox" name="hobby" id="travel" value="T"><label class="hobbyLabel" for="travel"> 여행</label>
                <input type="checkbox" name="hobby" id="game" value="G"><label class="hobbyLabel" for="game"> 게임</label>
                <input type="checkbox" name="hobby" id="movie" value="M"><label class="hobbyLabel" for="movie"> 영화</label>
                <input type="checkbox" name="hobby" id="exercise" value="E"><label class="hobbyLabel" for="exercise"> 운동</label>
            </li>
            <li>
                <label>직업</label>
                <select name="job">
                    <option value=""> 선택하세요
                    <option value="학생"> 학생
                    <option value="회사원"> 회사원
                    <option value="자영업"> 자영업
                </select>
            </li>
        </ul>
        <input type="submit" value="회원가입" onclick="return memberFormCheck()">
        <input type="reset" value="다시쓰기">
        <input type="button" onclick="window.location.href='login.jsp'" value="뒤로가기">
    </form>

</center>

</body>
</html>