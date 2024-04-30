//id 중복확인
function open_win(url) {
	window.open(url, "", "width=500, height=230");
}

//우편번호 검색
const open_findWin = () => {
    
    document.getElementById('findZip').addEventListener('click', function() {
        new daum.Postcode({
            oncomplete: function(data) {
                document.getElementById("zip").value = data.zonecode;
                document.getElementById("addr").value = data.address;
            }
        }).open();
    });
}


window.onload = open_findWin;
    
//로그인 유효성 검사 (항목을 다 입력하지 않으면 return false)
function loginCheck(){
    if(document.frm.id.value == ""){
        alert("아이디를 입력해주세요");
        return false;
    }else if(document.frm.pwd.value == ""){
        alert("비밀번호를 입력해주세요");
        return false;
    }else{
        return true;
    }
}

