function go_next(){
	if(document.form.okon1[0].checked == true){
		document.form.action = "NonageServlet?command=join_form";
		document.form.submit();
		
	}else if (document.form.okon1[1].checked == true){
		alert('약관에 동의하셔야만 합니다.');
	}
}

function go_save(){
	if(document.form.id.value == ""){
		alert("아이디를 입력하여 주세요.");
		document.form.id.focus();
	}else if(document.form.id.value != document.form.reid.value){
		alert("중복확인을 클릭하여 주세요");
		document.form.id.focus();
	}else if(document.form.pwd.value == ""){
		alert("비밀번호를 입력해 주세요.");
		document.form.pwd.focus();
	}else if(document.form.pwd.value != document.form.pwdcheck.value){
		alert("비밀번호가 일치하지 않습니다.");
		document.form.pwd.focus();
	}else if(document.form.name.value == ""){
		alert("이름을 입력해 주세요.");
		document.form.name.focus();
	}else if(document.form.email.value == ""){
		alert("이메일을 입력해 주세요.");
		document.form.email.focus();
	}else{
		document.form.action="NonageServlet?command=join";
		document.form.submit();
	}
}

function idcheck(){
	if(document.form.id.value == ""){
		alert("아이디를 입력하여 주세요.");
		document.form.id.focus();
		return;
	}
	var url ="NonageServlet?command=id_check_form&id="
		+document.form.id.value;
	window.open(url, "_blank_1", "toolbar=no, menubar=no, scrollbars=yes. resizable=no, width=500, height=300");
}

function post_zip(){
	var url = "NonageServlet?command=find_zip_num";
	window.open(url,"_blank_1","toolbar=no, menubar=no, scrollbars=yes, resizable=no, width=700, height=500, top=300, left=300");
}







