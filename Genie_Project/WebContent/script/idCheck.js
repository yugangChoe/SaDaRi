function submitCheck() {
	if (document.join.name.value.length == 0) {
		alert("이름을 입력하세요.");
		return false;
	}
	if(document.join.id.value.length == 0){
		alert("아이디를 입력하세요.");
		return false;
	}
	if (document.join.pwd.value.length == 0) {
		alert("비밀번호를 입력하세요.");
		return false;
	}else if(document.join.pwd.value != document.join.pwd_c.value){
		alert("비밀번호가 일치하지 않습니다.");
		return false;
	}
	if(document.join.email.value.length == 0){
		alert("이메일을 입력하세요")
		return false;
	}
	
	return true;
}
function loginCheck(){
	if(document.login.id.value.length == 0){
		alert("아이디를 입력하세요.");
		return false;
	}
	if(document.login.pw.value.length == 0){
		alert("비밀번호를 입력하세요.");
		return false;
	}
	return true;
}
function open_win(url, name) {
	window.open(url, name, "width=500, height=230");
}
function idCheck(id) {
	var id=document.join.id.value;
	if(id.length == 0){
		alert("아이디를 입력하세요.");
	}else{
		window.open("/Genie_Project/G_servlet?command=idCheck&id="+id,"아이디 중복체크","width=10, height=10");
	}
}