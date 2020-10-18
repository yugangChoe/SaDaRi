<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Genei Login</title>
<style>
/* body{background: lightpink;}
            h1{color: brown;}
           ul{border: 1px dotted black;}
           a{text-decoration: none;}

           h3{text-shadow: 1px 1px 3px blue;}
           p{text-indent: 1em; font-size: 1em;} */
</style>
<script type="text/javascript" src="/Genie_Project/script/idCheck.js"></script>
</head>
<body style="width: 450px">
	<form name="join" method="post" action="G_servlet"
		onsubmit="return submitCheck(this)">
		<input type="hidden" name="command" value="LoginForm">
		<fieldset style="border: 1px solid white;">
			<legend style="color: #444;">
				<Strong>genie 로그인</Strong>
			</legend>
			<table>
				<tr>
					<td><input type="text" id="id" name="id"
						style="border: 1px solid #d2d2d2; width: 330px; height: 33px; font-size: 12px;"
						placeholder="아이디"></td>
					<td rowspan="2"><input type="submit" value="로그인"
						style="width: 78px; height: 78px; background-color: #0eb6e6; border: none; color: white;"></td>
				</tr>
				<tr>
					<td><input type="password" id="pw" name="pw"
						style="border: 1px solid #d2d2d2; width: 330px; height: 33px; font-size: 12px;"
						placeholder="비밀번호"></td>
					<td></td>
				</tr>
			</table>
			<input type="checkbox"><small>로그인 상태 유지</small><br>
			<table style="width: 400px">
				<tr>
					<td><a href="*"
						style="color: black; text-decoration-line: none;"><small>아이디/비밀번호
								찾기</small></td>
					<td><a href="/Genie_Project/G_servlet?command=Join"
						style="color: black; text-decoration-line: none; font-weight: bolder;"><small>회원가입</small></a></td>
				</tr>
				<br>
			</table>
			<hr style="border: 1px solid #d2d2d2;">

			<fieldset style="border: 1px solid #d2d2d2; margin: 2px;">
				<img src="C:\팀4\사진\이미지/카카오로고.jpg"
					style="width: 25px; height: 25px; margin: 0px;"><small>카카오
					로그인</small>
			</fieldset>
			<fieldset style="border: 1px solid #d2d2d2; margin: 2px">
				<img src="C:\팀4\사진\이미지/다음로고.jpg"
					style="width: 25px; height: 25px; margin: 0px;"><small>다음
					로그인</small>
			</fieldset>
			<fieldset style="border: 1px solid #d2d2d2; margin: 2px">
				<img src="C:\팀4\사진\이미지/구글로고.jpg"
					style="width: 25px; height: 25px; margin: 0px;"><small>구글
					로그인</small>
			</fieldset>
			<fieldset style="border: 1px solid #d2d2d2; margin: 2px">
				<img src="C:\팀4\사진\이미지/애플로고.png"
					style="width: 25px; height: 25px; margin: 0px;"><small>애플
					로그인</small>
			</fieldset>

		</fieldset>
	</form>
</body>
</html>