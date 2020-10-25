<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style>
.hide {
	font: 0/0 a;
	overflow: hidden;
	border: 0 none;
	width: 0;
	height: 0;
	margin: 0;
	padding: 0;
}
td img {
width: 50px;
height: 50px; 
}
</style>
<meta charset="UTF-8">
<link href="/Genie_Project/css/Genie.css" rel="stylesheet"
	type="text/css">
<link href="/Genie_Project/css/Genie.css" rel="stylesheet" type="text/css">
<title>Newest_album_all</title>

<script>
	var login_st = 0;
	function login() {
		if (login_st == 0) {
			var login_list = document.getElementById("login_list");
			login_list.style.opacity = "1";
			login_list.style.visibility = "visible";
			login_st = 1;
		} else if (login_st == 1) {
			var login_list = document.getElementById("login_list");
			login_list.style.opacity = "0";
			login_list.style.visibility = "hidden";
			login_st = 0;
		}
	}
	function play_one(num) {
		window.open("C:/팀4/html/play.html", "플레이리스트", "width=1200, height=630");
		var num = num;
	}
	function play_list(num) {
		window.open("C:/팀4/html/play.html", "플레이리스트", "width=1200, height=630");
	}
	function login() {
		window.open("C:/팀4/html/login.html", "로그인", "width=470, height=430")
	}
</script>

        <script>
            var login_st=0;
                function login(){
                    if(login_st==0){
                        var login_list=document.getElementById("login_list");
                        login_list.style.opacity="1";
                        login_list.style.visibility="visible";
                        login_st=1;
                    }else if(login_st==1){
                        var login_list=document.getElementById("login_list");
                        login_list.style.opacity="0";
                        login_list.style.visibility="hidden";
                        login_st=0;
                    }
                }
                function play_one(num){
                window.open("/Genie_Project/G_servlet?command=Song_play","플레이리스트","width=1200, height=630");
                var num=num;
            }
            function play_list(num){
                window.open("/Genie_Project/G_servlet?command=Song_play","플레이리스트","width=1200, height=630");
            }
            function login(){
                window.open("/Genie_Project/G_servlet?command=Login","로그인","width=470, height=430")
            }
        </script>
</head>
<body>
	<div class="wrap-main">
		<jsp:include page="/Header.jsp"></jsp:include>
		<!-- 헤더 끝 -->
		<!-- 바디시작 -->
		<div id="wrap-body" class="aside">
			<div id="contents">
				<div class="title">
					<h2>
						<img src="C:/팀4/사진/이미지/h2_newest.gif" alt="최신음악">
					</h2>
				</div>
				<!-- title -->
				<div class="title-1">
					<ul>
						<li><a href="Newest_song_hot.jsp"> <img
								src="C:/팀4/사진/이미지/song.png" alt="곡">
						</a></li>
						<li><a href="Newest_album_hot.jsp"> <img
								src="C:/팀4/사진/이미지/album.png" alt="앨범">
						</a></li>
					</ul>
				</div>
				<div class="title-line">
					<h3 style="font: 0/0 a">앨범 종류</h3>
					<ul>
						<li class="hot"><a href="/Genie_Project/G_servlet?command=Newest_album_hot">HOT</a></li>
						<li><a href="/Genie_Project/G_servlet?command=Newest_album_all">전체</a></li>
					</ul>
				</div>
				<!--chart-date -->
				<div class="song-list">
					<div class="song-list-wrap">
						<div class="toolbar">
							<input type="checkbox" class="all-check" title="전체 선택"> <a
								href="#" class="btn btn-listen" title="재생">듣기</a> <a href="#"
								class="btn btn-add" title="추가">추가</a> <a href="#"
								class="btn btn-album" title="담기">담기
								</button> <a href="#" class="btn btn-down" title="다운">다운</a>
								<div class="btns">
									<a href="#" class="btn btn-listen" title="TOP200 듣기">TOP200
										듣기</a>
								</div>
								<!-- btns -->
						</div>
						<!-- toolbar-->
						<table class="list-wrap">
							<thead>
								<tr>
									<th scope="col" class="hd-number">번호</th>
									<th scope="col" class="hd-check" style="width: 180px;"><span
										class="hide">뮤직비디오 이미지</span></th>
									<th scope="col" class="hd-info">영상정보</th>
									<th scope="col" class="hd-large-btns" style="width: 100px;">보기</th>
								</tr>
							</thead>
							<thead>
								<tr class="list">
									<td class="number">1 <span class="rank"> <span
											class="rank"><span class="rank-none"><span
													class="hide">유지</span></span></span>
									</span>
									</td>
									<td><a href="#" class="cover-mv" title="Dynamite"> <span
											class="mask"></span> <img src="C:\팀4\사진\최신음악\최신앨범\전체\1.jpg"
											alt="Dynamite"> <span class="duration">03:47</span>
									</a></td>
									<td class="info"><a href="#" class="title">25:
											Sometimes, we think</a> <a href="#" class="artist">구피 (Goopy)
									</a></td>
									<td class="btns"><a href="#" class="btn-img btn-view"
										title="보기">보기</a></td>
								</tr>
								<tr class="list">
									<td class="number">2 <span class="rank"> <span
											class="rank"><span class="rank-none"><span
													class="hide">유지</span></span></span>
									</span>
									</td>
									<td><a href="#" class="cover-mv" title="Dynamite"> <span
											class="mask"></span> <img src="C:\팀4\사진\최신음악\최신앨범\전체\2.jpg"
											alt="Dynamite"> <span class="duration">03:47</span>
									</a></td>
									<td class="info"><a href="#" class="title">네이버 웹툰
											'랜덤채팅</a> <a href="#" class="artist">오이소박이 </a></td>
									<td class="btns"><a href="#" class="btn-img btn-view"
										title="보기">보기</a></td>
								</tr>
								<tr class="list">
									<td class="number">3 <span class="rank"> <span
											class="rank"><span class="rank-none"><span
													class="hide">유지</span></span></span>
									</span>
									</td>
									<td><a href="#" class="cover-mv" title="Dynamite"> <span
											class="mask"></span> <img src="C:\팀4\사진\최신음악\최신앨범\전체\3.jpg"
											alt="Dynamite"> <span class="duration">03:47</span>
									</a></td>
									<td class="info"><a href="#" class="title">Proximos
											Projimos</a> <a href="#" class="artist">Enjambre</a></td>
									<td class="btns"><a href="#" class="btn-img btn-view"
										title="보기">보기</a></td>
								</tr>
								<tr class="list">
									<td class="number">4 <span class="rank"> <span
											class="rank"><span class="rank-none"><span
													class="hide">유지</span></span></span>
									</span>
									</td>
									<td><a href="#" class="cover-mv" title="Dynamite"> <span
											class="mask"></span> <img src="C:\팀4\사진\최신음악\최신앨범\전체\4.jpg"
											alt="Dynamite"> <span class="duration">03:47</span>
									</a></td>
									<td class="info"><a href="#" class="title">ON MY OWN</a> <a
										href="#" class="artist">The Midnight Romance</a></td>
									<td class="btns"><a href="#" class="btn-img btn-view"
										title="보기">보기</a></td>
								</tr>
								<tr class="list">
									<td class="number">5 <span class="rank"> <span
											class="rank"><span class="rank-none"><span
													class="hide">유지</span></span></span>
									</span>
									</td>
									<td><a href="#" class="cover-mv" title="Dynamite"> <span
											class="mask"></span> <img src="C:\팀4\사진\최신음악\최신앨범\전체\5.jpg"
											alt="Dynamite"> <span class="duration">03:47</span>
									</a></td>
									<td class="info"><a href="#" class="title">미씽: 그들이 있었다
											OST</a> <a href="#" class="artist">신예영</a></td>
									<td class="btns"><a href="#" class="btn-img btn-view"
										title="보기">보기</a></td>
								</tr>
								<tr class="list">
									<td class="number">6 <span class="rank"> <span
											class="rank"><span class="rank-none"><span
													class="hide">유지</span></span></span>
									</span>
									</td>
									<td><a href="#" class="cover-mv" title="Dynamite"> <span
											class="mask"></span> <img src="C:\팀4\사진\최신음악\최신앨범\전체\6.jpg"
											alt="Dynamite"> <span class="duration">03:47</span>
									</a></td>
									<td class="info"><a href="#" class="title">연애의 참견 시즌3
											OST</a> <a href="#" class="artist">세러데이</a></td>
									<td class="btns"><a href="#" class="btn-img btn-view"
										title="보기">보기</a></td>
								</tr>
								<tr class="list">
									<td class="number">7 <span class="rank"> <span
											class="rank"><span class="rank-none"><span
													class="hide">유지</span></span></span>
									</span>
									</td>
									<td><a href="#" class="cover-mv" title="Dynamite"> <span
											class="mask"></span> <img src="C:\팀4\사진\최신음악\최신앨범\전체\7.jpg"
											alt="Dynamite"> <span class="duration">03:47</span>
									</a></td>
									<td class="info"><a href="#" class="title">Cliche</a> <a
										href="#" class="artist">허성현 (Rose de Penny)</a></td>
									<td class="btns"><a href="#" class="btn-img btn-view"
										title="보기">보기</a></td>
								</tr>
								<tr class="list">
									<td class="number">8 <span class="rank"> <span
											class="rank"><span class="rank-none"><span
													class="hide">유지</span></span></span>
									</span>
									</td>
									<td><a href="#" class="cover-mv" title="Dynamite"> <span
											class="mask"></span> <img src="C:\팀4\사진\최신음악\최신앨범\전체\8.jpg"
											alt="Dynamite"> <span class="duration">03:47</span>
									</a></td>
									<td class="info"><a href="#" class="title">Biggest
											Tone</a> <a href="#" class="artist">Kulu</a></td>
									<td class="btns"><a href="#" class="btn-img btn-view"
										title="보기">보기</a></td>
								</tr>
								<tr class="list">
									<td class="number">9 <span class="rank"> <span
											class="rank"><span class="rank-none"><span
													class="hide">유지</span></span></span>
									</span>
									</td>
									<td><a href="#" class="cover-mv" title="Dynamite"> <span
											class="mask"></span> <img src="C:\팀4\사진\최신음악\최신앨범\전체\9.jpg"
											alt="Dynamite"> <span class="duration">03:47</span>
									</a></td>
									<td class="info"><a href="#" class="title">Reve encore</a>
										<a href="#" class="artist">Kikesa</a></td>
									<td class="btns"><a href="#" class="btn-img btn-view"
										title="보기">보기</a></td>
								</tr>
								<tr class="list">
									<td class="number">10 <span class="rank"> <span
											class="rank"><span class="rank-none"><span
													class="hide">유지</span></span></span>
									</span>
									</td>
									<td><a href="#" class="cover-mv" title="Dynamite"> <span
											class="mask"></span> <img src="C:\팀4\사진\최신음악\최신앨범\전체\10.jpg"
											alt="Dynamite"> <span class="duration">03:47</span>
									</a></td>
									<td class="info"><a href="#" class="title">기막힌 유산 OST</a>
										<a href="#" class="artist">나들</a></td>
									<td class="btns"><a href="#" class="btn-img btn-view"
										title="보기">보기</a></td>
								</tr>
								<tr class="list">
									<td class="number">11 <span class="rank"> <span
											class="rank"><span class="rank-none"><span
													class="hide">유지</span></span></span>
									</span>
									</td>
									<td><a href="#" class="cover-mv" title="Dynamite"> <span
											class="mask"></span> <img src="C:\팀4\사진\최신음악\최신앨범\전체\11.jpg"
											alt="Dynamite"> <span class="duration">03:47</span>
									</a></td>
									<td class="info"><a href="#" class="title">오! 삼광빌라!
											OST</a> <a href="#" class="artist">여은</a></td>
									<td class="btns"><a href="#" class="btn-img btn-view"
										title="보기">보기</a></td>
								</tr>
								<tr class="list">
									<td class="number">12 <span class="rank"> <span
											class="rank"><span class="rank-none"><span
													class="hide">유지</span></span></span>
									</span>
									</td>
									<td><a href="#" class="cover-mv" title="Dynamite"> <span
											class="mask"></span> <img src="C:\팀4\사진\최신음악\최신앨범\전체\12.jpg"
											alt="Dynamite"> <span class="duration">03:47</span>
									</a></td>
									<td class="info"><a href="#" class="title">Till I Die</a>
										<a href="#" class="artist">Koukr</a></td>
									<td class="btns"><a href="#" class="btn-img btn-view"
										title="보기">보기</a></td>
								</tr>
								<tr class="list">
									<td class="number">13 <span class="rank"> <span
											class="rank"><span class="rank-none"><span
													class="hide">유지</span></span></span>
									</span>
									</td>
									<td><a href="#" class="cover-mv" title="Dynamite"> <span
											class="mask"></span> <img src="C:\팀4\사진\최신음악\최신앨범\전체\13.jpg"
											alt="Dynamite"> <span class="duration">03:47</span>
									</a></td>
									<td class="info"><a href="#" class="title">Layers</a> <a
										href="#" class="artist">NewFace</a></td>
									<td class="btns"><a href="#" class="btn-img btn-view"
										title="보기">보기</a></td>
								</tr>
								<tr class="list">
									<td class="number">14 <span class="rank"> <span
											class="rank"><span class="rank-none"><span
													class="hide">유지</span></span></span>
									</span>
									</td>
									<td><a href="#" class="cover-mv" title="Dynamite"> <span
											class="mask"></span> <img src="C:\팀4\사진\최신음악\최신앨범\전체\14.jpg"
											alt="Dynamite"> <span class="duration">03:47</span>
									</a></td>
									<td class="info"><a href="#" class="title">Getting
											Lost, Wife, Home</a> <a href="#" class="artist">Rodney
											Dangerfield</a></td>
									<td class="btns"><a href="#" class="btn-img btn-view"
										title="보기">보기</a></td>
								</tr>
								<tr class="list">
									<td class="number">15 <span class="rank"> <span
											class="rank"><span class="rank-none"><span
													class="hide">유지</span></span></span>
									</span>
									</td>
									<td><a href="#" class="cover-mv" title="Dynamite"> <span
											class="mask"></span> <img src="C:\팀4\사진\최신음악\최신앨범\전체\15.jpg"
											alt="Dynamite"> <span class="duration">03:47</span>
									</a></td>
									<td class="info"><a href="#" class="title">다음에 봐</a> <a
										href="#" class="artist">에이민 & 뎁트</a></td>
									<td class="btns"><a href="#" class="btn-img btn-view"
										title="보기">보기</a></td>
								</tr>
								<tr class="list">
									<td class="number">16 <span class="rank"> <span
											class="rank"><span class="rank-none"><span
													class="hide">유지</span></span></span>
									</span>
									</td>
									<td><a href="#" class="cover-mv" title="Dynamite"> <span
											class="mask"></span> <img src="C:\팀4\사진\최신음악\최신앨범\전체\16.jpg"
											alt="Dynamite"> <span class="duration">03:47</span>
									</a></td>
									<td class="info"><a href="#" class="title">BENTLRY 1.5</a>
										<a href="#" class="artist">BENTLRY 1.5염따</a></td>
									<td class="btns"><a href="#" class="btn-img btn-view"
										title="보기">보기</a></td>
								</tr>
								<tr class="list">
									<td class="number">17 <span class="rank"> <span
											class="rank"><span class="rank-none"><span
													class="hide">유지</span></span></span>
									</span>
									</td>
									<td><a href="#" class="cover-mv" title="Dynamite"> <span
											class="mask"></span> <img src="C:\팀4\사진\최신음악\최신앨범\전체\17.jpg"
											alt="Dynamite"> <span class="duration">03:47</span>
									</a></td>
									<td class="info"><a href="#" class="title">바라본다</a> <a
										href="#" class="artist">THUS (더스)</a></td>
									<td class="btns"><a href="#" class="btn-img btn-view"
										title="보기">보기</a></td>
								</tr>
								<tr class="list">
									<td class="number">18 <span class="rank"> <span
											class="rank"><span class="rank-none"><span
													class="hide">유지</span></span></span>
									</span>
									</td>
									<td><a href="#" class="cover-mv" title="Dynamite"> <span
											class="mask"></span> <img src="C:\팀4\사진\최신음악\최신앨범\전체\18.jpg"
											alt="Dynamite"> <span class="duration">03:47</span>
									</a></td>
									<td class="info"><a href="#" class="title">밤하늘의 저 별처럼</a>
										<a href="#" class="artist">헤이즈 (Heize) & 펀치 (Punch)</a></td>
									<td class="btns"><a href="#" class="btn-img btn-view"
										title="보기">보기</a></td>
								</tr>
								<tr class="list">
									<td class="number">19 <span class="rank"> <span
											class="rank"><span class="rank-none"><span
													class="hide">유지</span></span></span>
									</span>
									</td>
									<td><a href="#" class="cover-mv" title="Dynamite"> <span
											class="mask"></span> <img src="C:\팀4\사진\최신음악\최신앨범\전체\19.jpg"
											alt="Dynamite"> <span class="duration">03:47</span>
									</a></td>
									<td class="info"><a href="#" class="title">너의 밤은 어때</a> <a
										href="#" class="artist">정은지 </td>
									<td class="btns"><a href="#" class="btn-img btn-view"
										title="보기">보기</a></td>
								</tr>
								<tr class="list">
									<td class="number">20 <span class="rank"> <span
											class="rank"><span class="rank-none"><span
													class="hide">유지</span></span></span>
									</span>
									</td>
									<td><a href="#" class="cover-mv" title="Dynamite"> <span
											class="mask"></span> <img src="C:\팀4\사진\최신음악\최신앨범\전체\20.jpg"
											alt="Dynamite"> <span class="duration">03:47</span>
									</a></td>
									<td class="info"><a href="#" class="title">im your xYz</a>
										<a href="#" class="artist">용용 (YongYong)</a></td>
									<td class="btns"><a href="#" class="btn-img btn-view"
										title="보기">보기</a></td>
								</tr>
								<tr class="list">
									<td class="number">21 <span class="rank"> <span
											class="rank"><span class="rank-none"><span
													class="hide">유지</span></span></span>
									</span>
									</td>
									<td><a href="#" class="cover-mv" title="Dynamite"> <span
											class="mask"></span> <img src="C:\팀4\사진\최신음악\최신앨범\전체\21.jpg"
											alt="Dynamite"> <span class="duration">03:47</span>
									</a></td>
									<td class="info"><a href="#" class="title">꿈에서 걸려온 전화</a>
										<a href="#" class="artist">김뜻돌</a></td>
									<td class="btns"><a href="#" class="btn-img btn-view"
										title="보기">보기</a></td>
								</tr>
								<tr class="list">
									<td class="number">22 <span class="rank"> <span
											class="rank"><span class="rank-none"><span
													class="hide">유지</span></span></span>
									</span>
									</td>
									<td><a href="#" class="cover-mv" title="Dynamite"> <span
											class="mask"></span> <img src="C:\팀4\사진\최신음악\최신앨범\전체\22.jpg"
											alt="Dynamite"> <span class="duration">03:47</span>
									</a></td>
									<td class="info"><a href="#" class="title">26' seconds</a>
										<a href="#" class="artist">Austn</a></td>
									<td class="btns"><a href="#" class="btn-img btn-view"
										title="보기">보기</a></td>
								</tr>
								<tr class="list">
									<td class="number">23 <span class="rank"> <span
											class="rank"><span class="rank-none"><span
													class="hide">유지</span></span></span>
									</span>
									</td>
									<td><a href="#" class="cover-mv" title="Dynamite"> <span
											class="mask"></span> <img src="C:\팀4\사진\최신음악\최신앨범\전체\23.jpg"
											alt="Dynamite"> <span class="duration">03:47</span>
									</a></td>
									<td class="info"><a href="#" class="title">RAINBOW
											RAYS</a> <a href="#" class="artist">RAFSY</a></td>
									<td class="btns"><a href="#" class="btn-img btn-view"
										title="보기">보기</a></td>
								</tr>
								<tr class="list">
									<td class="number">24 <span class="rank"> <span
											class="rank"><span class="rank-none"><span
													class="hide">유지</span></span></span>
									</span>
									</td>
									<td><a href="#" class="cover-mv" title="Dynamite"> <span
											class="mask"></span> <img src="C:\팀4\사진\최신음악\최신앨범\전체\24.jpg"
											alt="Dynamite"> <span class="duration">03:47</span>
									</a></td>
									<td class="info"><a href="#" class="title">내 방의 우주</a> <a
										href="#" class="artist">포엔 (4&)</a></td>
									<td class="btns"><a href="#" class="btn-img btn-view"
										title="보기">보기</a></td>
								</tr>
								<tr class="list">
									<td class="number">25 <span class="rank"> <span
											class="rank"><span class="rank-none"><span
													class="hide">유지</span></span></span>
									</span>
									</td>
									<td><a href="#" class="cover-mv" title="Dynamite"> <span
											class="mask"></span> <img src="C:\팀4\사진\최신음악\최신앨범\전체\25.jpg"
											alt="Dynamite"> <span class="duration">03:47</span>
									</a></td>
									<td class="info"><a href="#" class="title">Happy Ever
											After</a> <a href="#" class="artist">이더 (E the)</a></td>
									<td class="btns"><a href="#" class="btn-img btn-view"
										title="보기">보기</a></td>
								</tr>
								<tr class="list">
									<td class="number">26 <span class="rank"> <span
											class="rank"><span class="rank-none"><span
													class="hide">유지</span></span></span>
									</span>
									</td>
									<td><a href="#" class="cover-mv" title="Dynamite"> <span
											class="mask"></span> <img src="C:\팀4\사진\최신음악\최신앨범\전체\26.jpg"
											alt="Dynamite"> <span class="duration">03:47</span>
									</a></td>
									<td class="info"><a href="#" class="title">다정</a> <a
										href="#" class="artist">윤송</a></td>
									<td class="btns"><a href="#" class="btn-img btn-view"
										title="보기">보기</a></td>
								</tr>
								<tr class="list">
									<td class="number">27 <span class="rank"> <span
											class="rank"><span class="rank-none"><span
													class="hide">유지</span></span></span>
									</span>
									</td>
									<td><a href="#" class="cover-mv" title="Dynamite"> <span
											class="mask"></span> <img src="C:\팀4\사진\최신음악\최신앨범\전체\27.jpg"
											alt="Dynamite"> <span class="duration">03:47</span>
									</a></td>
									<td class="info"><a href="#" class="title">VERTIGO</a> <a
										href="#" class="artist">Cid Cyan</a></td>
									<td class="btns"><a href="#" class="btn-img btn-view"
										title="보기">보기</a></td>
								</tr>
								<tr class="list">
									<td class="number">28 <span class="rank"> <span
											class="rank"><span class="rank-none"><span
													class="hide">유지</span></span></span>
									</span>
									</td>
									<td><a href="#" class="cover-mv" title="Dynamite"> <span
											class="mask"></span> <img src="C:\팀4\사진\최신음악\최신앨범\전체\28.jpg"
											alt="Dynamite"> <span class="duration">03:47</span>
									</a></td>
									<td class="info"><a href="#" class="title">Forgotten
											Love OST</a> <a href="#" class="artist">주설옥</a></td>
									<td class="btns"><a href="#" class="btn-img btn-view"
										title="보기">보기</a></td>
								</tr>
								<tr class="list">
									<td class="number">29 <span class="rank"> <span
											class="rank"><span class="rank-none"><span
													class="hide">유지</span></span></span>
									</span>
									</td>
									<td><a href="#" class="cover-mv" title="Dynamite"> <span
											class="mask"></span> <img src="C:\팀4\사진\최신음악\최신앨범\전체\29.jpg"
											alt="Dynamite"> <span class="duration">03:47</span>
									</a></td>
									<td class="info"><a href="#" class="title">그대만 내게</a> <a
										href="#" class="artist">주로키 (JUROKEY)</a></td>
									<td class="btns"><a href="#" class="btn-img btn-view"
										title="보기">보기</a></td>
								</tr>
								<tr class="list">
									<td class="number">30 <span class="rank"> <span
											class="rank"><span class="rank-none"><span
													class="hide">유지</span></span></span>
									</span>
									</td>
									<td><a href="#" class="cover-mv" title="Dynamite"> <span
											class="mask"></span> <img src="C:\팀4\사진\최신음악\최신앨범\전체\30.jpg"
											alt="Dynamite"> <span class="duration">03:47</span>
									</a></td>
									<td class="info"><a href="#" class="title">Love You
											Too</a> <a href="#" class="artist">스틸 (Steel)</a></td>
									<td class="btns"><a href="#" class="btn-img btn-view"
										title="보기">보기</a></td>
								</tr>
							</tbody>
						</table>
						<!-- list-wrap -->
						<div class="toolbar">
							<input type="checkbox" class="all-check" title="전체 선택"> <a
								href="#" class="btn btn-listen" title="재생">듣기</a> <a href="#"
								class="btn btn-add" title="추가">추가</a> <a href="#"
								class="btn btn-album" title="담기">담기
								</button> <a href="#" class="btn btn-down" title="다운">다운</a>
						</div>
						<!-- toolbar-->
					</div>
					<!-- song-list-wrap -->
				</div>
				<!-- song-list -->
				<div class="page-nav">
					<a href="#">1 ~ 50 위</a> <a href="#">51~100 위</a> <a href="#">101~150
						위</a> <a href="#">151~200 위</a>
				</div>
				<!-- page-nav -->
			</div>
			<!-- contents -->
		</div>
		<!-- wrap-body -->
	</div>
	<!-- wrap-main -->


<jsp:include page="/Footer.jsp"></jsp:include>
</body>
</html>