<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<input type="hidden" id="stat" value="${stat}">
	<input type="hidden" id="like" value="${like}">
	<script>
		window.onload=function(){
			var stat=document.getElementById("stat").value;
			var like=document.getElementById("like").value;
			if(stat==0){
				alert("좋아요 취소! 현재 곡의 좋아요 갯수는 "+like);
				self.close();
			}else if(stat==1){
				alert("좋아요 추가! 현재 곡의 좋아요 갯수는 "+like);
				self.close();
			}else{
				alert("오류");
				self.close();
			}
		}
	</script>
</body>
</html>