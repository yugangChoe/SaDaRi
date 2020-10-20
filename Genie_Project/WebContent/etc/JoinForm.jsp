<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Genie 회원가입</title>
<script type="text/javascript" src="/Genie_Project/script/idCheck.js"></script>
</head>
<body style="width: 500px">
	<fieldset style="border: 1px solid white;">
		<legend style="color: #444">
			<Strong>Genie 회원정보 입력</Strong>
		</legend>
		<hr>
		<form name="join" method="post" action="G_servlet" onsubmit="return submitCheck(this)">
		<input type="hidden" name="command" value="JoinForm">
		<table>
			<tr>
				<th><label>이름</label></th>
				<td><input type="text" id="name" name="name"
					style="border: 1px solid #d2d2d2; width: 330px; height: 33px; font-size: 12px;"
					placeholder="이름"></td>
			</tr>
			<tr>
				<th><label>생년월일</label></th>
				<td><input type="text" id="birth" name="birth"
					style="border: 1px solid #d2d2d2; width: 330px; height: 33px; font-size: 12px;"
					placeholder="생년월일"></td>
			</tr>
			<tr>
				<th width="120"><label>아이디</label></th>
				<td colspan="2"><input type="text" id="id" name="id"
					style="border: 1px solid #d2d2d2; width: 260px; height: 33px; font-size: 12px;"
					placeholder="아이디 / 필수입력 사항"> <input type="button" value="중복확인" onclick="idCheck(this)"
					style="width: 70px; height: 33px; background-color: #0eb6e6; border: none; color: white;"></td>
			</tr>
			<tr>
				<td style="color: white">.</td>
				<td colspan="2"><small style="color: red">4 ~ 12자리
						영문(소문자)+숫자로 설정하여주세요.</small></td>
			</tr>
			<tr>
				<th><label>비밀번호</label></th>
				<td><input type="password" id="pwd" name="pwd"
					style="border: 1px solid #d2d2d2; width: 330px; height: 33px; font-size: 12px;"
					placeholder="비밀번호"></td>
			</tr>
			<tr rowspan="2">
				<th><label>비밀번호 확인</label></th>
				<td><input type="password" id="pwd_c" name="pwd_c"
					style="border: 1px solid #d2d2d2; width: 330px; height: 33px; font-size: 12px;"
					placeholder="비밀번호 확인"></td>
			</tr>
			<tr>
				<th><label>이메일</label></th>
				<td><input type="email" id="email" name="email"
					style="border: 1px solid #d2d2d2; width: 330px; height: 33px; font-size: 12px;"
					placeholder="이메일"></td>
			</tr>
			<tr>
				<th><label>전화번호</label></th>
				<td><input type="text" id="phone" name="phone"
					style="border: 1px solid #d2d2d2; width: 330px; height: 33px; font-size: 12px;"
					placeholder="전화번호"></td>
			</tr>
			<tr>
				<td style="color: white">.</td>
				<td colspan="2"><small>등록하신 이메일 정보로 아이디 / 비밀번호 찾기를
						하시려면,<br> 회원가입 완료 후 내 정보 페이지에서 이메일 인증을 반드시 진행해주세요!
				</small></td>
			</tr>
			<tr>
				<th><label>정보 수신동의</label></th>
				<td colspan="2"><label style="color: aqua">이메일</label><input
					type="radio" value="수신함" name="1">수신함 <input type="radio"
					value="수신안함" name="1">수신안함</td>
			</tr>
			<tr>
				<td style="color: white">.</td>
				<td colspan="2"><label style="color: aqua">SMS</label><input
					type="radio" value="수신함" name="2">수신함 <input type="radio"
					value="수신안함" name="2">수신안함</td>
			</tr>
			<tr>
				<td style="color: white">.</td>
				<td colspan="2"><small style="color: red">주요 공지사항 및 결제
						관련 정보일 경우, 정보수신 동의여부에 관계없이 발송됩니다.</td>
			</tr>
			<tr>
				<td colspan="3" style="text-align: right"><input type="submit"
					value="입력완료"
					style="width: 70px; height: 33px; background-color: #0eb6e6; border: none; color: white;"></td>
			</tr>
		</table>
		</form>
		<hr>
	</fieldset>
</body>
</html>