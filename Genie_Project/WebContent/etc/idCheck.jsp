<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	
	<input type="hidden" id="a" value="${result}">
	<script>
		window.onload=function(){
			var a=document.getElementById("a").value;
			if(a==""){
				alert("사용 가능한 ID 입니다.");
				self.close();
			}else{
				alert("이미 존재하는 ID 입니다.");
				self.close();
			}
		}
	</script>
</body>
</html>