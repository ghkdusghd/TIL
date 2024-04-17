function validate() {
	if(document.f.pwd.value != document.f.pwdconfirm.value) {
		alert('비밀번호가 일치하지 않습니다.')
		return false;
	}
}
