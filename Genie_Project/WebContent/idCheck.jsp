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
				alert("��� ������ ID �Դϴ�.");
				self.close()
			}else{
				alert("�̹� �����ϴ� ID �Դϴ�.");
				self.close()
			}
		}
	</script>
</body>
</html>