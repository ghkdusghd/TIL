function applyId(validId){
    window.opener.document.getElementById("id").value = validId;
    window.opener.document.frm.clickCheck.value = 1;
    window.open('','_self').close();
}

function closeWindow(){
    window.opener.document.getElementById("id").value = "";
    window.opener.document.frm.clickCheck.value = 0;
    window.open('','_self').close();
}