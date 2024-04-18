 function check(){
	if(document.form.id.value == '') {
		alert('아이디를 입력해주세요');
		return false;
	} else if (document.form.age.value == '') {
		alert('나이를 입력해주세요');
		return false;
	} else if (isNaN(document.form.age.value)) {
		alert('숫자를 입력해주세요.')
		return false;
	} else {
		return true;
	}
	
}