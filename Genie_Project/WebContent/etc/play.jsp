<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Genie Web Player</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
	integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
	crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"
	integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
	integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
	crossorigin="anonymous"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"
	integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6"
	crossorigin="anonymous"></script>
<title>Play</title>
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
        function checkbox_play(){
            var aa=document.getElementById("aa");
            var songname=document.getElementById("songname");
            var artist=document.getElementById("artist");
            var songimg=document.getElementById("songimg");
            var like_id=document.getElementById("like_id");
            
            var id_r=document.getElementById("id_r").value;
            var url_r=document.getElementById("url_r").value;
            var artist_r=document.getElementById("artist_r").value;
            var title_r=document.getElementById("title_r").value;
            var img_r=document.getElementById("img_r").value;
            
            aa.innerHTML=utl_r;
            songname.innerHTML=title_r;
            artist.innerHTML=artist_r;
            songimg.innerHTML=img_r;
            like_id.innerHTML=id_r;
            
            
            /*switch (num){
                case 1:
                    songname.innerHTML="Dynamite";
                    //songname.style.fontWeight='border';
                    artist.innerHTML="방탄소년단";
                    document.getElementById("heart").innerHTML='♡';
                    document.getElementById("play").innerHTML='∥';
                    songimg.innerHTML="<img src='C:/팀4/사진/지니차트/TOP 200/일간/1.jpg' width='220px' height='220px'>";
                    aa.innerHTML="<iframe src='https://www.youtube.com/embed/zJCdkOpU90g?controls=0&amp;autoplay=1' frameborder='0' allow='accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture' allowfullscreen hidden></iframe>";
                    break;
                case 2: //저작권 문제 경고창
                    songname.innerHTML="Bad Boy";
                    artist.innerHTML="청하 & Christopher";
                    document.getElementById("heart").innerHTML='♡';
                    document.getElementById("play").innerHTML='▷';
                    songimg.innerHTML="<img src='C:/팀4/사진/지니차트/TOP 200/일간/51.jpg' width='220px' height='220px'>";
                    alert("해당곡은 권리사의 요청으로 재생 할 수 없습니다.")
                    break;
                case 3:
                songname.innerHTML="Tight";
                    artist.innerHTML="10CM";
                    document.getElementById("heart").innerHTML='♡';
                    document.getElementById("play").innerHTML='∥';
                    songimg.innerHTML="<img src='C:/팀4/사진/지니차트/TOP 200/일간/4.jpg' width='220px' height='220px'>";
                    aa.innerHTML="<iframe src='https://www.youtube.com/embed/-xm5GpFwHw4?controls=0&amp;autoplay=1' frameborder='0' allow='accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture' allowfullscreen hidden></iframe>";
                    break;
                case 4:
                songname.innerHTML="오래된 노래";
                    artist.innerHTML="Standing Egg";
                    document.getElementById("heart").innerHTML='♡';
                    document.getElementById("play").innerHTML='∥';
                    songimg.innerHTML="<img src='C:/팀4/사진/지니차트/TOP 200/일간/2.jpg' width='220px' height='220px'>";
                    aa.innerHTML="<iframe src='https://www.youtube.com/embed/bW3XExLBf7A?controls=0&amp;autoplay=1' frameborder='0' allow='accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture' allowfullscreen hidden></iframe>";
                    break;
                case 5:
                songname.innerHTML="내 마음이 움찔했던 순간";
                    artist.innerHTML="규현";
                    document.getElementById("heart").innerHTML='♡';
                    document.getElementById("play").innerHTML='∥';
                    songimg.innerHTML="<img src='C:/팀4/사진/지니차트/TOP 200/일간/5.jpg' width='220px' height='220px'>";
                    aa.innerHTML="<iframe src='https://www.youtube.com/embed/3HKnF5ahGdg?controls=0&amp;autoplay=1' frameborder='0' allow='accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture' allowfullscreen hidden></iframe>";
                    break;
            }
            */
        }
        function play(){
            document.getElementById("play").innerHTML='▷'
        }
        function color() {
            var h=document.getElementById("heart");
            var id=document.getElementById("like_id").value;
            var stat=0;
            if(h.innerHTML=='♡'){
               h.innerHTML= '♥';
               stat=1;
               window.open("/Genie_Project/G_servlet?command=likeCheck&id="+id+"&stat="+stat,"좋아요","width=10, height=10");
            }
            else if(h.innerHTML=='♥'){
               h.innerHTML= '♡';
               stat=0;
               window.open("/Genie_Project/G_servlet?command=likeCheck&id="+id+"&stat="+stat,"좋아요","width=10, height=10");
            }
          }
        function login(){
        	window.open("/Genie_Project/G_servlet?command=Login", "로그인", "width=470, height=430")
            }
    </script>
</head>
<body>
	<div id="div1">
		<header>
			<div>
				<img src="C:\팀4\사진\이미지/genie이미지.jpg" width="80px" height="40px">
			</div>
		</header>
		<div>
			<fieldset
				style="width: 220px; text-align: center; color: white; margin-left: 120px;">
				<label id="songname" style="font-weight: bolder; font-size: 20px;"><strong>${songList[0].getTitle()}</strong></label><br>
				<label id="artist" style="font-size: 15px;"><small>${songList[0].getArtist()}</small></label>
				<input type="hidden" id="like_id" value="${songList[0].getSongid() }">
			</fieldset>
			<fieldset
				style="font-size: 20px; width: 220px; text-align: right; color: white; margin-left: 120px;">
				<label onclick="color()" id="heart" value="♡">♡</label> <label><small>더보기</small></label>
			</fieldset>
		</div>
		<fieldset
			style="width: 220px; text-align: center; margin-left: 120px;">
			<label id="songimg"><img src="/Genie_Project/img/song/${songList[0].getSongid() }.jpg" alt="${songList[0].getTitle() }"
				width="220px" height="220px"></label> 
			<label id="aa"><iframe
					width='560px' height='315px' src='${songList[0].getG_url()}'
					frameborder='0'
					allow='accelerometer; autoplay;
						clipboard-write; encrypted-media; gyroscope; picture-in-picture'
					allowfullscreen hidden> </iframe></label>
		</fieldset>
		<fieldset
			style="width: 220px; text-align: center; margin-left: 120px; color: white;">
			<label>--재생중--</label>
		</fieldset>
		<fieldset>
			<table
				style="width: 300px; height: 50px; color: white; font-weight: bolder; font-size: 30px; margin-left: 100px; margin-top: 10px;">
				<tr>
					<td colspan="5">-----------------------</td>
				</tr>
				<tr>
					<td>⟲</td>
					<td>↶</td>
					<td onclick="play()" id="play">▷</td>
					<td>↷</td>
					<td>⟳</td>
				</tr>
			</table>
		</fieldset>

		<footer style="margin-top: 55px;">
			<hr style="background-color: white;">
			<fieldset>
				<label style="color: white; text-align: left; margin-left: 20px;">
					<small>로그인 후, 전곡 스트리밍을 이용해 보세요.</small></label> 
				<label style="color: white; text-align: right; margin-left: 40px;" onclick="login()">
				<label id="lab1" style="border: 1px solid white; border-radius: 5px; margin-left: 68px; margin-right: 0px;">
					<small>이용권 구매</small></label>
			</fieldset>
		</footer>
	</div>




	<div id="div2">
		<fieldset id="rf1">
			<a href="" onclick="login()" style="color: white; font-size: 13px;">로그인하세요
				></a> <span id="faq"
				style="color: white; margin-left: 10px; font-size: 13px;">이용안내
			</span> <span id="yi" style="color: white; font-size: 13px;">FAQ </span>
		</fieldset>
		<div id="rd1">
			<button id="rb1" style="border: 1px solid white;">재생목록</button>
			<button id="rb2" onclick="login()"
				style="background-color: #f6f7fb; border: 1px solid #d9dde9; color: #b5a5ba;">마이뮤직</button>

		</div>
		<div id="rd2">
			<button id="rb3"
				style="font-size: 13px; padding: 4px; border: 1px solid #d9dde9; border-radius: 4px; background-color: white;">중복곡
				삭제</button>
			<div class="dropdown" id="rdd1">
				<button class="btn btn-secondary dropdown-toggle" type="button"
					id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true"
					aria-expanded="false"
					style="color: black; font-size: 13px; padding: 4px; border: 1px solid #d9dde9; border-radius: 4px; background-color: #f6f7fb;">
					재생목록 동기화</button>
				<div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
					<a class="dropdown-item" href="#">현재목록 올리기</a> <a
						class="dropdown-item" href="#">동기화 목록 내려받기</a> <a
						class="dropdown-item" href="#">동기화 목록 보기</a>
				</div>
			</div>
			<div class="dropdown" id="rdd2">
				<button class="btn btn-secondary dropdown-toggle" type="button"
					id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true"
					aria-expanded="false"
					style="color: black; font-size: 13px; padding: 4px; border: 1px solid #d9dde9; border-radius: 4px; background-color: #f6f7fb; width: 70px;">
					곡명순</button>
				<div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
					<a class="dropdown-item" href="#" style="font-size: 13px;">추가순</a>
					<a class="dropdown-item" href="#" style="font-size: 13px;">발매일순</a>
					<a class="dropdown-item" href="#" style="font-size: 13px;">곡명순</a>
					<a class="dropdown-item" href="#" style="font-size: 13px;">곡명
						역순</a> <a class="dropdown-item" href="#" style="font-size: 13px;">아티스트명순</a>
					<a class="dropdown-item" href="#" style="font-size: 13px;">아티스트명
						역순</a> <a class="dropdown-item" href="#" style="font-size: 13px;">앨범명순</a>
					<a class="dropdown-item" href="#" style="font-size: 13px;">앨범명
						역순</a> <a class="dropdown-item" href="#" style="font-size: 13px;">셔플</a>

				</div>
			</div>
			<!-- <div>
    <button id="rb4">재생목록 동기화</button>
    <ul id="list">
        <li>현재목록 올리기</li>
        <li>동기화 목록 내려받기</li>
        <li>동기화 목록 보기</li>

    </ul>
</div> -->
		</div>
		<hr>
		<div id="music">
			<table>
				<c:forEach var="i" begin="0" end="${songList.size()-1}">

				<tr>
					<td><input type="checkbox" name="list_check" value="1"
						style="margin-left: 20px;"></td>
					<td colspan="3">${songList[i].getTitle()}<br> <small
						style="color: #8d8d8d;">${songList[i].getArtist()}</small></td>
					<td><input type="button"
						onclick="checkbox_play()" value="▶"
						style="font-size: 10px; margin: 0px; padding: 4px; border: 1px solid #d9dde9; border-radius: 4px; background-color: white;"></td>
					<td style="font-size: 12px;">더보기</td>
					<input type="hidden" id="id_r" value="${songList[i].getSongid() }">
					<input type="hidden" id="url_r" value="<iframe width='560px' height='315px' src='${songList[i].getG_url()}' frameborder='0' allow='accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture' allowfullscreen hidden></iframe>">
					<input type="hidden" id="artist_r" value="${songList[i].getArtist() }">
					<input type="hidden" id="title_r" value="${songList[i].getTitle() }">
					<input type="hidden" id="img_r" value="<img src='/Genie_Project/img/song/${songList[i].getSongid() }.jpg' image-view='true'>">
				</tr>
				</c:forEach>
				<!-- 
        <tr>
            <td><input type="checkbox" name="list_check" value="1" style="margin-left: 20px;"></td>
            <td colspan="3">Dynamite<br><small style="color: #8d8d8d;">방탄소년단</small></td>
            <td><input type="button" onclick="checkbox_play(1)" value="▶" style="font-size: 10px; margin: 0px;padding:4px;border: 1px solid #d9dde9;border-radius: 4px;background-color: white;"></td>
            <td style="font-size: 12px;">더보기</td>
        </tr>
        <tr>
            <td><input type="checkbox" name="list_check" value="2" style="margin-left: 20px;"></td>
            <td colspan="3">Bad Boy<br><small style="color:#27282d">청하 & Christopher</small></td>
            <td><input type="button" onclick="checkbox_play(2)" value="▶" style="font-size: 10px; margin: 0px;padding:4px;border: 1px solid #d9dde9;border-radius: 4px;background-color: white;"></td>
            <td style="font-size: 12px;">더보기</td>
        </tr>
        <tr>
            <td><input type="checkbox" name="list_check" value="3" style="margin-left: 20px;"></td>
            <td colspan="3">Tight<br><small style="color: #8d8d8d;">10CM</small></td>
            <td><input type="button" onclick="checkbox_play(3)" value="▶" style="font-size: 10px; margin: 0px;padding:4px;border: 1px solid #d9dde9;border-radius: 4px;background-color: white;"></td>
            <td style="font-size: 12px;">더보기</td>
        </tr>
        <tr>
            <td><input type="checkbox" name="list_check" value="4" style="margin-left: 20px;"></td>
            <td colspan="3">오래된 노래<br><small style="color: #8d8d8d;">Standing Egg</small></td>
            <td><input type="button" onclick="checkbox_play(4)" value="▶" style="font-size: 10px; margin: 0px;padding:4px;border: 1px solid #d9dde9;border-radius: 4px;background-color: white;"></td>
            <td style="font-size: 12px;">더보기</td>
        </tr>
        <tr>
            <td><input type="checkbox" name="list_check" value="5" style="margin-left: 20px;"></td>
            <td colspan="3">내 마음이 움찔했던 순간<br><small style="color: #8d8d8d;">규현</small></td>
            <td><input type="button" onclick="checkbox_play(5)" value="▶" style="font-size: 10px; margin: 0px;padding:4px;border: 1px solid #d9dde9;border-radius: 4px;background-color: white;"></td>
            <td style="font-size: 12px;">더보기</td>
        </tr>
         -->

			</table>


		</div>
		<footer style="margin-top: 139px;">
			<div id="toolbar">
				<tr>
					<td><input type="checkbox"
						style="margin-top: 25px; margin-left: 20px;"></td>
					<td><input type="button" value="▲"
						style="font-size: 13px; margin: 0px; padding: 4px; border: 1px solid #d9dde9; border-radius: 4px; background-color: white;">
						<input type="button" value="▼"
						style="font-size: 13px; margin: 0px; padding: 4px; border: 1px solid #d9dde9; border-radius: 4px; background-color: white;"></td>
					<td colspan="3"><input type="button" value="담기"
						style="font-size: 13px; margin: 0px; padding: 4px; border: 1px solid #d9dde9; border-radius: 4px; background-color: white;">
						<input type="button" value="다운"
						style="font-size: 13px; margin: 0px; padding: 4px; border: 1px solid #d9dde9; border-radius: 4px; background-color: white;">
						<input type="button" value="삭제"
						style="font-size: 13px; margin: 0px; padding: 4px; border: 1px solid #d9dde9; border-radius: 4px; background-color: white;">
					</td>
					<td><span id="span1" style="margin-left: 150px; color: aqua;">1</span><span
						style="color: aqua;">곡</span><span> / </span><span>${songList.size()}</span><span>곡</span></td>
				</tr>

			</div>
		</footer>

	</div>

	<script>

    </script>
</body>
</html>