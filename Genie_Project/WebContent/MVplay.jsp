<%@page import="com.dto.SongVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Genie Web Player</title>
<style>
div {
	display: inline;
}

#div1 {
	float: left;
	width: 50%;
	height: 100%;
	background-color: gray;
}

#div2 {
	float: right;
	width: 50%;
	height: 100%;
}

#title, #p1 {
	text-align: center;
}

#faq, #yi {
	float: right;
}

#rf1 {
	border: 0;
	display: table-cell;
	background-color: rgba(73, 73, 73);
	height: 50px;
	vertical-align: middle;
	padding: 0px;
}

#rb1 {
	display: inline-block;
	margin: 0;
	padding: 0;
	width: 49%;
	height: 50px;
	background-color: white;
	border: 0.3px solid gray;
	border-bottom: 0;
}

#rb2 {
	display: inline-block;
	margin: 0;
	padding: 0;
	width: 49%;
	height: 50px;
	background-color: lightgray;
	border: 0;
	border: 0.3px solid gray;
	border-bottom: 0;
}

#rb2:hover {
	background-color: white;
}

#rb3 {
	width: 90px;
	height: 25px;
	margin-top: 5px;
	font-size: 0.8em;
}

#rdd1 {
	margin-right: 0px;
}

#rdd1 #dropdownMenuButton {
	margin-top: 0px;
	height: 25px;
	width: 150px;
	padding: 0;
}

#rdd2 {
	float: right;
	margin-top: 10px;
	margin-right: 100px;
}

#rdd2 #dropdownMenuButton {
	background-color: gray;
	height: 25px;
	width: 130px;
	padding: 0;
}

#music table {
	width: 100%;
	padding: 0;
	margin: 0;
}

#music td {
	width: 50px;
}

#rd2 {
	height: 100px;
}

#music {
	margin-top: 100px;
	border-top: 1px solid gray;
	height: 70%;
}

#music tr:hover {
	background-color: lightgray;
}

#music tr {
	border-bottom: 0.5px solid #d9dde9;
	margin: 0 10px;
}

#toolbar {
	display: block;
	height: 65px;
	background-color: aliceblue;
	border: 0.5px solid #d9dde9;
}

#toolbar #span1 {
	margin-left: 100px;
}

#toolbar input[type=button] {
	height: 30px;
}

#lab1:hover {
	cursor: pointer;
}
</style>
<script>
	function checkbox_play(num) {
		var aa = document.getElementById("aa");
		var songname = document.getElementById("songname");
		var artist = document.getElementById("artist");
		var songimg = document.getElementById("songimg");
		switch (num) {
		case 1:
			songname.innerHTML = "Dynamite";
			//songname.style.fontWeight='border';
			artist.innerHTML = "방탄소년단";
			document.getElementById("heart").innerHTML = '♡';
			document.getElementById("play").innerHTML = '∥';
			songimg.innerHTML = "<img src='C:/팀4/사진/지니차트/TOP 200/일간/1.jpg' width='220px' height='220px'>";
			aa.innerHTML = "<iframe src='https://www.youtube.com/embed/zJCdkOpU90g?controls=0&amp;autoplay=1' frameborder='0' allow='accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture' allowfullscreen hidden></iframe>";
			break;
		case 2: //저작권 문제 경고창
			songname.innerHTML = "Bad Boy";
			artist.innerHTML = "청하 & Christopher";
			document.getElementById("heart").innerHTML = '♡';
			document.getElementById("play").innerHTML = '▷';
			songimg.innerHTML = "<img src='C:/팀4/사진/지니차트/TOP 200/일간/51.jpg' width='220px' height='220px'>";
			alert("해당곡은 권리사의 요청으로 재생 할 수 없습니다.")
			break;
		case 3:
			songname.innerHTML = "Tight";
			artist.innerHTML = "10CM";
			document.getElementById("heart").innerHTML = '♡';
			document.getElementById("play").innerHTML = '∥';
			songimg.innerHTML = "<img src='C:/팀4/사진/지니차트/TOP 200/일간/4.jpg' width='220px' height='220px'>";
			aa.innerHTML = "<iframe src='https://www.youtube.com/embed/-xm5GpFwHw4?controls=0&amp;autoplay=1' frameborder='0' allow='accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture' allowfullscreen hidden></iframe>";
			break;
		case 4:
			songname.innerHTML = "오래된 노래";
			artist.innerHTML = "Standing Egg";
			document.getElementById("heart").innerHTML = '♡';
			document.getElementById("play").innerHTML = '∥';
			songimg.innerHTML = "<img src='C:/팀4/사진/지니차트/TOP 200/일간/2.jpg' width='220px' height='220px'>";
			aa.innerHTML = "<iframe src='https://www.youtube.com/embed/bW3XExLBf7A?controls=0&amp;autoplay=1' frameborder='0' allow='accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture' allowfullscreen hidden></iframe>";
			break;
		case 5:
			songname.innerHTML = "내 마음이 움찔했던 순간";
			artist.innerHTML = "규현";
			document.getElementById("heart").innerHTML = '♡';
			document.getElementById("play").innerHTML = '∥';
			songimg.innerHTML = "<img src='C:/팀4/사진/지니차트/TOP 200/일간/5.jpg' width='220px' height='220px'>";
			aa.innerHTML = "<iframe src='https://www.youtube.com/embed/3HKnF5ahGdg?controls=0&amp;autoplay=1' frameborder='0' allow='accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture' allowfullscreen hidden></iframe>";
			break;
		}
	}
	function play() {
		document.getElementById("play").innerHTML = '▷'
		aa.innerHTML = "<iframe width='220px' height='220px' src='https://www.youtube.com/embed/zJCdkOpU90g?controls=0&amp;autoplay=1' frameborder='0' allow='accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture' allowfullscreen/>";
	}
	function color() {
		document.getElementById("heart").innerHTML = '♥';
	}
	function login() {
		window.open("G_servlet?command=Login", "로그인", "width=470, height=430")
	}
</script>
</head>
<body>
<%
	
	
%>
	<div id="div1">
		<header>
			<div>
				<img src="C:\팀4\사진\이미지/genie이미지.jpg" width="80px" height="40px">
			</div>
		</header>
		<body>
			<div>
				<fieldset
					style="width: 560px; text-align: center; color: white; margin-left: 120px;">
					<label id="songname" style="font-weight: bolder; font-size: 20px;"><strong>Dynamite</strong></label><br>
					<label id="artist" style="font-size: 15px;"><small>방탄소년단</small></label>
				</fieldset>
				<fieldset
					style="font-size: 20px; width: 560px; text-align: right; color: white; margin-left: 120px;">
					<label onclick="color()" id="heart"><strong>♡</strong></label> <label><small>더보기</small></label>
				</fieldset>
			</div>
			<fieldset
				style="width: 560px; text-align: center; margin-left: 120px;">
				<label id="aa"><iframe width='560px' height='315px'
						<!-- src='https://www.youtube.com/embed/zJCdkOpU90g?controls=0&amp;autoplay=0' -->
						src=${url}
						frameborder='0'
						allow='accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture'
						allowfullscreen></iframe></label>
			</fieldset>
			<footer style="margin-top: 55px;">
				<hr style="background-color: white;">
				<fieldset>
					<label style="color: white; text-align: left; margin-left: 20px;"><small>로그인
							후, 전곡 스트리밍을 이용해 보세요.</small></label> <label
						style="color: white; text-align: right; margin-left: 40px;"
						onclick="login()"><label id="lab1"
						style="border: 1px solid white; border-radius: 5px; margin-left: 68px; margin-right: 0px;"><small>이용권
								구매</small></label>
				</fieldset>
			</footer>
	</div>
</body>
</html>