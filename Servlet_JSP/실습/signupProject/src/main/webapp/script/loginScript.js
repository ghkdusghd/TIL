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