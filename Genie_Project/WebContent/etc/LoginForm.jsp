<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<input type="hidden" id="id" value="${id}">
	<input type="hidden" id="id_c" value="${result.getId()}">
	<input type="hidden" id="pw" value="${pw }">
	<input type="hidden" id="pw_c" value="${result.getPwd() }">
	<script>
		window.onload=function(){
			var id_c=document.getElementById("id_c").value;
			var pw=document.getElementById("pw").value;
			var pw_c=document.getElementById("pw_c").value;
			if(id_c==""){
				alert("존재하지 않는 ID 입니다.");
				history.back();
			}else if(pw_c!=pw){
				alert("암호가 틀렸습니다.");
				history.back();
			}else{
				alert("로그인 성공!!");
				self.close();
			}
		}
	</script>
</body>
</html>