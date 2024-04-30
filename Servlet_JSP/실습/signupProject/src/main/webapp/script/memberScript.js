function open_win(url) {
    window.open(url, "", "width=500, height=230");
}

function open_idCheck(){
    open_win('idCheck.jsp?id=' + encodeURIComponent(document.getElementById('id').value), 'idCheck');
    document.frm.clickCheck.value = 1;
}

function open_findWin() {
    new daum.Postcode({
        oncomplete: function (data) {
            document.getElementById("zip").value = data.zonecode;
            document.getElementById("addr").value = data.address;
            isFindWinOpened = false;
        }
    }).open();
}

function memberFormCheck() {

    //회원가입폼에서 필수 입력값을 전부 입력했는지 확인
    if(document.frm.id.value == "") {
        alert('아이디를 입력해주세요.');
        document.getElementById("id").focus();
        return false;
    } else if(document.frm.clickCheck.value != 1) {
        alert('아이디 중복체크 해주세요.');
        document.getElementById("id").focus();
        return false;
    } else if (document.frm.pwd.value == "") {
        alert('비밀번호를 입력해주세요.');
        document.getElementById("pwd").focus();
        return false;
    } else if (document.frm.pwCheck.value == "") {
        alert('비밀번호 확인을 입력해주세요.');
        document.getElementById("pwCheck").focus();
        return false;
    } else if (document.frm.name.value == "") {
   document.getElementById("name").focus();
        alert('이름을 입력해주세요.');
        return false;
    } else if (document.frm.email.value == "") {
        alert('이메일을 입력해주세요.');
        document.getElementById("email").focus();
        return false;
    }

    //비밀번호 및 비밀번호 확인에서 입력한 값이 일치하는지 확인
    let pass = document.frm.pwd.value;
    let passCheck = document.frm.pwCheck.value;
    if(pass == passCheck) {
      alert('회원가입 완료! 로그인을 진행해보세요');
        return true;
    } else {
        alert('비밀번호가 일치하지 않습니다. 다시 입력해주세요.');
        document.getElementById("pwCheck").focus();
        return false;
    }

}

// ID 입력 필드 초기화
function clean() {
    if (window.opener && !window.opener.closed) {
        window.opener.document.getElementById('id').value = '';
        window.close();
    }
}

function applyId(validId){
    window.opener.document.getElementById("id").value = validId;
    window.opener.document.frm.clickCheck.value = 1;
}