<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="/Genie_Project/css/Genie.css" rel="stylesheet" type="text/css">
<title>Chart_genre_kpop_day</title>
<script>
		var login_st=0;
        function login(){
        	if(login_st==0){v
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
	<%@ include file="/Header.jsp"%>
		<!-- 바디시작 -->
		<div id="wrap-body" class="aside">
			<div id="contents">
				<div class="title">
					<h2>
						<img src="C:/팀4/사진/이미지/h2_chart.gif" alt="지니차트">
					</h2>
				</div>
				<!-- title -->
				<div class="title-1">
					<ul>
						<li><a href="/Genie_Project/G_servlet?command=Chart_top200_present"> <img
								src="C:/팀4/사진/이미지/top_200.png" alt="탑200">
						</a></li>
						<li><a href="/Genie_Project/G_servlet?command=Chart_genre_kpop_day"> <img
								src="C:/팀4/사진/이미지/genre_chart.png" alt="장르별차트">
						</a></li>
						<li><a href="/Genie_Project/G_servlet?command=Chart_MV_day"> <img
								src="C:/팀4/사진/이미지/mv_chart.png" alt="뮤직비디오차트"></a></li>
					</ul>
				</div>
				<div class="title-line">
					<h3 style="font: 0/0 a">장르 종류</h3>
					<ul>
						<li class="hot"><a href="/Genie_Project/G_servlet?command=Chart_genre_kpop_day">가요</a></li>
						<li><a href="/Genie_Project/G_servlet?command=Chart_genre_pop_day">POP</a></li>
						<li><a href="/Genie_Project/G_servlet?command=Chart_genre_OST_day">OST</a></li>
						<li><a href="/Genie_Project/G_servlet?command=Chart_genre_trot_day">트롯</a></li>
					</ul>
				</div>
				<!-- title-line -->
				<div class="chart-date">
					<div class="date">
						<h3>
							<span id="inc_date">2020.09.29</span>
						</h3>
						<a href="#"> <img src="C:/팀4/사진/이미지/time.png" alt="시간 보기">
						</a>
					</div>
					<!-- date -->
					<ul class="select-term">
						<li><a href="/Genie_Project/G_servlet?command=Chart_genre_kpop_day" class="radius ">일간</a></li>
						<li><a href="/Genie_Project/G_servlet?command=Chart_genre_kpop_week" class="radius ">주간</a></li>
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
									<th scope="col" class="hd-check"><span class="hide">선택</span></th>
									<th scope="col" class="hd-number">번호</th>
									<th scope="col" class="hd-album"><span class="hide">앨범이미지</span></th>
									<!-- <th scope="col" class="hd-link"><span class="hide">곡정보 이동 링크</span></th> -->
									<th scope="col" class="hd-info">곡정보</th>
									<th scope="col" class="hd-btns">듣기</th>
									<th scope="col" class="hd-btns">추가</th>
									<th scope="col" class="hd-btns">담기</th>
									<th scope="col" class="hd-btns">다운</th>
									<th scope="col" class="hd-btns">뮤비</th>
								</tr>
							</thead>
							<tbody>
								<tr class="list">
									<!-- tr list -->
									<td class="check"><input type="checkbox"
										class="select-check" title="Dynamite"></td>
									<td class="number">1</td>
									<td><a href="#" class="imge"> <span class="mask"></span>
											<img src="C:팀4/사진/지니차트/장르별차트/가요일/1.jpg" alt="Dynamite">
									</a></td>
									<td class="info"><a href="#" class="sg songTitle">Dynamite</a>
										<a href="#" class="sg songArtist">방탄소년단</a> <!-- <a href="#">가수옆작은화살표</a> 이건 제목옆 토글 -->
										<!-- <a href="#">화살표옆 앨범타이틀</a> --></td>
									<td class="btns"><a href="#" title="재생"
										class="btn-img btn-listen" onclick="play_one(1)">듣기</a></td>
									<td class="btns"><a href="#" title="추가"
										class="btn-img btn-add" onclick="play_list(1)">추가</a></td>
									<td class="btns"><a href="#" title="담기"
										class="btn-img btn-album" onclick="login()">담기</a></td>
									<td class="btns"><a href="#" title="다운"
										class="btn-img btn-down" onclick="login()">다운</a></td>
									<td class="btns"><a href="#" title="뮤비"
										class="btn-img btn-movie">뮤비</a></td>
								</tr>
								<!-- tr list -->
								<tr class="list">
									<!-- tr list -->
									<td class="check"><input type="checkbox"
										class="select-check" title="오래된 노래"></td>
									<td class="number">2</td>
									<td><a href="#" class="imge"> <span class="mask"></span>
											<img src="C:팀4/사진/지니차트/장르별차트/가요일/2.jpg" alt="오래된 노래">
									</a></td>
									<td class="info"><a href="#" class="sg songTitle">오래된
											노래</a> <a href="#" class="sg songArtist">Standing Egg</a> <!-- <a href="#">가수옆작은화살표</a> 이건 제목옆 토글 -->
										<!-- <a href="#">화살표옆 앨범타이틀</a> --></td>
									<td class="btns"><a href="#" title="재생"
										class="btn-img btn-listen" onclick="play_one(2)">듣기</a></td>
									<td class="btns"><a href="#" title="추가"
										class="btn-img btn-add" onclick="play_list(2)">추가</a></td>
									<td class="btns"><a href="#" title="담기"
										class="btn-img btn-album" onclick="login()">담기</a></td>
									<td class="btns"><a href="#" title="다운"
										class="btn-img btn-down" onclick="login()">다운</a></td>
									<td class="btns"><a href="#" title="뮤비"
										class="btn-img btn-movie">뮤비</a></td>
								</tr>
								<!-- tr list -->
								<tr class="list">
									<!-- tr list -->
									<td class="check"><input type="checkbox"
										class="select-check" title="너의 밤은 어때"></td>
									<td class="number">3</td>
									<td><a href="#" class="imge"> <span class="mask"></span>
											<img src="C:팀4/사진/지니차트/장르별차트/가요일/3.jpg" alt="너의 밤은 어때">
									</a></td>
									<td class="info"><a href="#" class="sg songTitle">너의
											밤은 어때</a> <a href="#" class="sg songArtist">정은지</a> <!-- <a href="#">가수옆작은화살표</a> 이건 제목옆 토글 -->
										<!-- <a href="#">화살표옆 앨범타이틀</a> --></td>
									<td class="btns"><a href="#" title="재생"
										class="btn-img btn-listen" onclick="play_one(3)">듣기</a></td>
									<td class="btns"><a href="#" title="추가"
										class="btn-img btn-add" onclick="play_list(3)">추가</a></td>
									<td class="btns"><a href="#" title="담기"
										class="btn-img btn-album" onclick="login()">담기</a></td>
									<td class="btns"><a href="#" title="다운"
										class="btn-img btn-down" onclick="login()">다운</a></td>
									<td class="btns"><a href="#" title="뮤비"
										class="btn-img btn-movie">뮤비</a></td>
								</tr>
								<!-- tr list -->
								<tr class="list">
									<!-- tr list -->
									<td class="check"><input type="checkbox"
										class="select-check" title="취기를 빌려"></td>
									<td class="number">4</td>
									<td><a href="#" class="imge"> <span class="mask"></span>
											<img src="C:팀4/사진/지니차트/장르별차트/가요일/4.jpg" alt="취기를 빌려">
									</a></td>
									<td class="info"><a href="#" class="sg songTitle">취기를
											빌려</a> <a href="#" class="sg songArtist">산들</a> <!-- <a href="#">가수옆작은화살표</a> 이건 제목옆 토글 -->
										<!-- <a href="#">화살표옆 앨범타이틀</a> --></td>
									<td class="btns"><a href="#" title="재생"
										class="btn-img btn-listen" onclick="play_one(4)">듣기</a></td>
									<td class="btns"><a href="#" title="추가"
										class="btn-img btn-add" onclick="play_list(4)">추가</a></td>
									<td class="btns"><a href="#" title="담기"
										class="btn-img btn-album" onclick="login()">담기</a></td>
									<td class="btns"><a href="#" title="다운"
										class="btn-img btn-down" onclick="login()">다운</a></td>
									<td class="btns"><a href="#" title="뮤비"
										class="btn-img btn-movie">뮤비</a></td>
								</tr>
								<!-- tr list -->
								<tr class="list">
									<!-- tr list -->
									<td class="check"><input type="checkbox"
										class="select-check" title="내 마음이 움찔했던 순간"></td>
									<td class="number">5</td>
									<td><a href="#" class="imge"> <span class="mask"></span>
											<img src="C:팀4/사진/지니차트/장르별차트/가요일/5.jpg" alt="내 마음이 움찔했던 순간">
									</a></td>
									<td class="info"><a href="#" class="sg songTitle">내
											마음이 움찔했던 순간</a> <a href="#" class="sg songArtist">규현</a> <!-- <a href="#">가수옆작은화살표</a> 이건 제목옆 토글 -->
										<!-- <a href="#">화살표옆 앨범타이틀</a> --></td>
									<td class="btns"><a href="#" title="재생"
										class="btn-img btn-listen" onclick="play_one(5)">듣기</a></td>
									<td class="btns"><a href="#" title="추가"
										class="btn-img btn-add" onclick="play_list(5)">추가</a></td>
									<td class="btns"><a href="#" title="담기"
										class="btn-img btn-album" onclick="login()">담기</a></td>
									<td class="btns"><a href="#" title="다운"
										class="btn-img btn-down" onclick="login()">다운</a></td>
									<td class="btns"><a href="#" title="뮤비"
										class="btn-img btn-movie">뮤비</a></td>
								</tr>
								<!-- tr list -->
								<tr class="list">
									<!-- tr list -->
									<td class="check"><input type="checkbox"
										class="select-check" title="When We Disco"></td>
									<td class="number">6</td>
									<td><a href="#" class="imge"> <span class="mask"></span>
											<img src="C:팀4/사진/지니차트/장르별차트/가요일/6.jpg" alt="When We Disco">
									</a></td>
									<td class="info"><a href="#" class="sg songTitle">When
											We Disco</a> <a href="#" class="sg songArtist">박진영</a> <!-- <a href="#">가수옆작은화살표</a> 이건 제목옆 토글 -->
										<!-- <a href="#">화살표옆 앨범타이틀</a> --></td>
									<td class="btns"><a href="#" title="재생"
										class="btn-img btn-listen" onclick="play_one(6)">듣기</a></td>
									<td class="btns"><a href="#" title="추가"
										class="btn-img btn-add" onclick="play_list(6)">추가</a></td>
									<td class="btns"><a href="#" title="담기"
										class="btn-img btn-album" onclick="login()">담기</a></td>
									<td class="btns"><a href="#" title="다운"
										class="btn-img btn-down" onclick="login()">다운</a></td>
									<td class="btns"><a href="#" title="뮤비"
										class="btn-img btn-movie">뮤비</a></td>
								</tr>
								<!-- tr list -->
								<tr class="list">
									<!-- tr list -->
									<td class="check"><input type="checkbox"
										class="select-check" title="눈누난나"></td>
									<td class="number">7</td>
									<td><a href="#" class="imge"> <span class="mask"></span>
											<img src="C:팀4/사진/지니차트/장르별차트/가요일/7.jpg" alt="눈누난나">
									</a></td>
									<td class="info"><a href="#" class="sg songTitle">눈누난나</a>
										<a href="#" class="sg songArtist">제시</a> <!-- <a href="#">가수옆작은화살표</a> 이건 제목옆 토글 -->
										<!-- <a href="#">화살표옆 앨범타이틀</a> --></td>
									<td class="btns"><a href="#" title="재생"
										class="btn-img btn-listen" onclick="play_one(7)">듣기</a></td>
									<td class="btns"><a href="#" title="추가"
										class="btn-img btn-add" onclick="play_list(7)">추가</a></td>
									<td class="btns"><a href="#" title="담기"
										class="btn-img btn-album" onclick="login()">담기</a></td>
									<td class="btns"><a href="#" title="다운"
										class="btn-img btn-down" onclick="login()">다운</a></td>
									<td class="btns"><a href="#" title="뮤비"
										class="btn-img btn-movie">뮤비</a></td>
								</tr>
								<!-- tr list -->
								<tr class="list">
									<!-- tr list -->
									<td class="check"><input type="checkbox"
										class="select-check" title="Tight"></td>
									<td class="number">8</td>
									<td><a href="#" class="imge"> <span class="mask"></span>
											<img src="C:팀4/사진/지니차트/장르별차트/가요일/8.jpg" alt="Tight">
									</a></td>
									<td class="info"><a href="#" class="sg songTitle">Tight</a>
										<a href="#" class="sg songArtist">10CM</a> <!-- <a href="#">가수옆작은화살표</a> 이건 제목옆 토글 -->
										<!-- <a href="#">화살표옆 앨범타이틀</a> --></td>
									<td class="btns"><a href="#" title="재생"
										class="btn-img btn-listen" onclick="play_one(8)">듣기</a></td>
									<td class="btns"><a href="#" title="추가"
										class="btn-img btn-add" onclick="play_list(8)">추가</a></td>
									<td class="btns"><a href="#" title="담기"
										class="btn-img btn-album" onclick="login()">담기</a></td>
									<td class="btns"><a href="#" title="다운"
										class="btn-img btn-down" onclick="login()">다운</a></td>
									<td class="btns"><a href="#" title="뮤비"
										class="btn-img btn-movie">뮤비</a></td>
								</tr>
								<!-- tr list -->
								<tr class="list">
									<!-- tr list -->
									<td class="check"><input type="checkbox"
										class="select-check" title="마리아(Maria)"></td>
									<td class="number">9</td>
									<td><a href="#" class="imge"> <span class="mask"></span>
											<img src="C:팀4/사진/지니차트/장르별차트/가요일/9.jpg" alt="마리아(Maria)">
									</a></td>
									<td class="info"><a href="#" class="sg songTitle">마리아(Maria)</a>
										<a href="#" class="sg songArtist">화사</a> <!-- <a href="#">가수옆작은화살표</a> 이건 제목옆 토글 -->
										<!-- <a href="#">화살표옆 앨범타이틀</a> --></td>
									<td class="btns"><a href="#" title="재생"
										class="btn-img btn-listen" onclick="play_one(9)">듣기</a></td>
									<td class="btns"><a href="#" title="추가"
										class="btn-img btn-add" onclick="play_list(9)">추가</a></td>
									<td class="btns"><a href="#" title="담기"
										class="btn-img btn-album" onclick="login()">담기</a></td>
									<td class="btns"><a href="#" title="다운"
										class="btn-img btn-down" onclick="login()">다운</a></td>
									<td class="btns"><a href="#" title="뮤비"
										class="btn-img btn-movie">뮤비</a></td>
								</tr>
								<!-- tr list -->
								<tr class="list">
									<!-- tr list -->
									<td class="check"><input type="checkbox"
										class="select-check" title="에잇 (Prod. * SUGA of BTS)"></td>
									<td class="number">10</td>
									<td><a href="#" class="imge"> <span class="mask"></span>
											<img src="C:팀4/사진/지니차트/장르별차트/가요일/10.jpg"
											alt="에잇 (Prod. * SUGA of BTS)">
									</a></td>
									<td class="info"><a href="#" class="sg songTitle">에잇
											(Prod. * SUGA of BTS)</a> <a href="#" class="sg songArtist">아이유</a>
										<!-- <a href="#">가수옆작은화살표</a> 이건 제목옆 토글 --> <!-- <a href="#">화살표옆 앨범타이틀</a> -->
									</td>
									<td class="btns"><a href="#" title="재생"
										class="btn-img btn-listen" onclick="play_one(10)">듣기</a></td>
									<td class="btns"><a href="#" title="추가"
										class="btn-img btn-add" onclick="play_list(10)">추가</a></td>
									<td class="btns"><a href="#" title="담기"
										class="btn-img btn-album" onclick="login()">담기</a></td>
									<td class="btns"><a href="#" title="다운"
										class="btn-img btn-down" onclick="login()">다운</a></td>
									<td class="btns"><a href="#" title="뮤비"
										class="btn-img btn-movie">뮤비</a></td>
								</tr>
								<!-- tr list -->
								<tr class="list">
									<!-- tr list -->
									<td class="check"><input type="checkbox"
										class="select-check" title="다시 여기 바닷가"></td>
									<td class="number">11</td>
									<td><a href="#" class="imge"> <span class="mask"></span>
											<img src="C:팀4/사진/지니차트/장르별차트/가요일/11.jpg" alt="다시 여기 바닷가">
									</a></td>
									<td class="info"><a href="#" class="sg songTitle">다시
											여기 바닷가</a> <a href="#" class="sg songArtist">싹쓰리</a> <!-- <a href="#">가수옆작은화살표</a> 이건 제목옆 토글 -->
										<!-- <a href="#">화살표옆 앨범타이틀</a> --></td>
									<td class="btns"><a href="#" title="재생"
										class="btn-img btn-listen" onclick="play_one(11)">듣기</a></td>
									<td class="btns"><a href="#" title="추가"
										class="btn-img btn-add" onclick="play_list(11)">추가</a></td>
									<td class="btns"><a href="#" title="담기"
										class="btn-img btn-album" onclick="login()">담기</a></td>
									<td class="btns"><a href="#" title="다운"
										class="btn-img btn-down" onclick="login()">다운</a></td>
									<td class="btns"><a href="#" title="뮤비"
										class="btn-img btn-movie">뮤비</a></td>
								</tr>
								<!-- tr list -->
								<tr class="list">
									<!-- tr list -->
									<td class="check"><input type="checkbox"
										class="select-check" title="축하해"></td>
									<td class="number">12</td>
									<td><a href="#" class="imge"> <span class="mask"></span>
											<img src="C:팀4/사진/지니차트/장르별차트/가요일/12.jpg" alt="축하해">
									</a></td>
									<td class="info"><a href="#" class="sg songTitle">축하해</a>
										<a href="#" class="sg songArtist">오반</a> <!-- <a href="#">가수옆작은화살표</a> 이건 제목옆 토글 -->
										<!-- <a href="#">화살표옆 앨범타이틀</a> --></td>
									<td class="btns"><a href="#" title="재생"
										class="btn-img btn-listen" onclick="play_one(12)">듣기</a></td>
									<td class="btns"><a href="#" title="추가"
										class="btn-img btn-add" onclick="play_list(12)">추가</a></td>
									<td class="btns"><a href="#" title="담기"
										class="btn-img btn-album" onclick="login()">담기</a></td>
									<td class="btns"><a href="#" title="다운"
										class="btn-img btn-down" onclick="login()">다운</a></td>
									<td class="btns"><a href="#" title="뮤비"
										class="btn-img btn-movie">뮤비</a></td>
								</tr>
								<!-- tr list -->
								<tr class="list">
									<!-- tr list -->
									<td class="check"><input type="checkbox"
										class="select-check" title="Dolphin"></td>
									<td class="number">13</td>
									<td><a href="#" class="imge"> <span class="mask"></span>
											<img src="C:팀4/사진/지니차트/장르별차트/가요일/13.jpg" alt="Dolphin">
									</a></td>
									<td class="info"><a href="#" class="sg songTitle">Dolphin/a>
											<a href="#" class="sg songArtist">오마이걸</a> <!-- <a href="#">가수옆작은화살표</a> 이건 제목옆 토글 -->
											<!-- <a href="#">화살표옆 앨범타이틀</a> --></td>
									<td class="btns"><a href="#" title="재생"
										class="btn-img btn-listen" onclick="play_one(13)">듣기</a></td>
									<td class="btns"><a href="#" title="추가"
										class="btn-img btn-add" onclick="play_list(13)">추가</a></td>
									<td class="btns"><a href="#" title="담기"
										class="btn-img btn-album" onclick="login()">담기</a></td>
									<td class="btns"><a href="#" title="다운"
										class="btn-img btn-down" onclick="login()">다운</a></td>
									<td class="btns"><a href="#" title="뮤비"
										class="btn-img btn-movie">뮤비</a></td>
								</tr>
								<!-- tr list -->
								<tr class="list">
									<!-- tr list -->
									<td class="check"><input type="checkbox"
										class="select-check" title="How You Like That"></td>
									<td class="number">14</td>
									<td><a href="#" class="imge"> <span class="mask"></span>
											<img src="C:팀4/사진/지니차트/장르별차트/가요일/14.jpg"
											alt="How You Like That">
									</a></td>
									<td class="info"><a href="#" class="sg songTitle">How
											You Like That</a> <a href="#" class="sg songArtist">BLACKPINK</a>
										<!-- <a href="#">가수옆작은화살표</a> 이건 제목옆 토글 --> <!-- <a href="#">화살표옆 앨범타이틀</a> -->
									</td>
									<td class="btns"><a href="#" title="재생"
										class="btn-img btn-listen" onclick="play_one(14)">듣기</a></td>
									<td class="btns"><a href="#" title="추가"
										class="btn-img btn-add" onclick="play_list(14)">추가</a></td>
									<td class="btns"><a href="#" title="담기"
										class="btn-img btn-album" onclick="login()">담기</a></td>
									<td class="btns"><a href="#" title="다운"
										class="btn-img btn-down" onclick="login()">다운</a></td>
									<td class="btns"><a href="#" title="뮤비"
										class="btn-img btn-movie">뮤비</a></td>
								</tr>
								<!-- tr list -->
								<tr class="list">
									<!-- tr list -->
									<td class="check"><input type="checkbox"
										class="select-check" title="Not Shy"></td>
									<td class="number">15</td>
									<td><a href="#" class="imge"> <span class="mask"></span>
											<img src="C:팀4/사진/지니차트/장르별차트/가요일/15.jpg" alt="Not Shy">
									</a></td>
									<td class="info"><a href="#" class="sg songTitle">Not
											Shy</a> <a href="#" class="sg songArtist">ITZY(있지)</a> <!-- <a href="#">가수옆작은화살표</a> 이건 제목옆 토글 -->
										<!-- <a href="#">화살표옆 앨범타이틀</a> --></td>
									<td class="btns"><a href="#" title="재생"
										class="btn-img btn-listen" onclick="play_one(15)">듣기</a></td>
									<td class="btns"><a href="#" title="추가"
										class="btn-img btn-add" onclick="play_list(15)">추가</a></td>
									<td class="btns"><a href="#" title="담기"
										class="btn-img btn-album" onclick="login()">담기</a></td>
									<td class="btns"><a href="#" title="다운"
										class="btn-img btn-down" onclick="login()">다운</a></td>
									<td class="btns"><a href="#" title="뮤비"
										class="btn-img btn-movie">뮤비</a></td>
								</tr>
								<!-- tr list -->
								<tr class="list">
									<!-- tr list -->
									<td class="check"><input type="checkbox"
										class="select-check" title="이제 나만 믿어요"></td>
									<td class="number">16</td>
									<td><a href="#" class="imge"> <span class="mask"></span>
											<img src="C:팀4/사진/지니차트/장르별차트/가요일/16.jpg" alt="이제 나만 믿어요">
									</a></td>
									<td class="info"><a href="#" class="sg songTitle">이제
											나만 믿어요</a> <a href="#" class="sg songArtist">임영웅</a> <!-- <a href="#">가수옆작은화살표</a> 이건 제목옆 토글 -->
										<!-- <a href="#">화살표옆 앨범타이틀</a> --></td>
									<td class="btns"><a href="#" title="재생"
										class="btn-img btn-listen" onclick="play_one(16)">듣기</a></td>
									<td class="btns"><a href="#" title="추가"
										class="btn-img btn-add" onclick="play_list(16)">추가</a></td>
									<td class="btns"><a href="#" title="담기"
										class="btn-img btn-album" onclick="login()">담기</a></td>
									<td class="btns"><a href="#" title="다운"
										class="btn-img btn-down" onclick="login()">다운</a></td>
									<td class="btns"><a href="#" title="뮤비"
										class="btn-img btn-movie">뮤비</a></td>
								</tr>
								<!-- tr list -->
								<tr class="list">
									<!-- tr list -->
									<td class="check"><input type="checkbox"
										class="select-check" title="Ice Cream"></td>
									<td class="number">17</td>
									<td><a href="#" class="imge"> <span class="mask"></span>
											<img src="C:팀4/사진/지니차트/장르별차트/가요일/17.jpg" alt="Ice Cream">
									</a></td>
									<td class="info"><a href="#" class="sg songTitle">Ice
											Cream</a> <a href="#" class="sg songArtist">BLACKPINK</a> <!-- <a href="#">가수옆작은화살표</a> 이건 제목옆 토글 -->
										<!-- <a href="#">화살표옆 앨범타이틀</a> --></td>
									<td class="btns"><a href="#" title="재생"
										class="btn-img btn-listen" onclick="play_one(17)">듣기</a></td>
									<td class="btns"><a href="#" title="추가"
										class="btn-img btn-add" onclick="play_list(17)">추가</a></td>
									<td class="btns"><a href="#" title="담기"
										class="btn-img btn-album" onclick="login()">담기</a></td>
									<td class="btns"><a href="#" title="다운"
										class="btn-img btn-down" onclick="login()">다운</a></td>
									<td class="btns"><a href="#" title="뮤비"
										class="btn-img btn-movie">뮤비</a></td>
								</tr>
								<!-- tr list -->
								<tr class="list">
									<!-- tr list -->
									<td class="check"><input type="checkbox"
										class="select-check" title="Blueming"></td>
									<td class="number">18</td>
									<td><a href="#" class="imge"> <span class="mask"></span>
											<img src="C:팀4/사진/지니차트/장르별차트/가요일/18.jpg" alt="Blueming">
									</a></td>
									<td class="info"><a href="#" class="sg songTitle">Blueming</a>
										<a href="#" class="sg songArtist">아이유(IU)</a> <!-- <a href="#">가수옆작은화살표</a> 이건 제목옆 토글 -->
										<!-- <a href="#">화살표옆 앨범타이틀</a> --></td>
									<td class="btns"><a href="#" title="재생"
										class="btn-img btn-listen" onclick="play_one(18)">듣기</a></td>
									<td class="btns"><a href="#" title="추가"
										class="btn-img btn-add" onclick="play_list(18)">추가</a></td>
									<td class="btns"><a href="#" title="담기"
										class="btn-img btn-album" onclick="login()">담기</a></td>
									<td class="btns"><a href="#" title="다운"
										class="btn-img btn-down" onclick="login()">다운</a></td>
									<td class="btns"><a href="#" title="뮤비"
										class="btn-img btn-movie">뮤비</a></td>
								</tr>
								<!-- tr list -->
								<tr class="list">
									<!-- tr list -->
									<td class="check"><input type="checkbox"
										class="select-check" title="홀로"></td>
									<td class="number">19</td>
									<td><a href="#" class="imge"> <span class="mask"></span>
											<img src="C:팀4/사진/지니차트/장르별차트/가요일/19.jpg" alt="홀로">
									</a></td>
									<td class="info"><a href="#" class="sg songTitle">홀로</a> <a
										href="#" class="sg songArtist">이하이</a> <!-- <a href="#">가수옆작은화살표</a> 이건 제목옆 토글 -->
										<!-- <a href="#">화살표옆 앨범타이틀</a> --></td>
									<td class="btns"><a href="#" title="재생"
										class="btn-img btn-listen" onclick="play_one(19)">듣기</a></td>
									<td class="btns"><a href="#" title="추가"
										class="btn-img btn-add" onclick="play_list(19)">추가</a></td>
									<td class="btns"><a href="#" title="담기"
										class="btn-img btn-album" onclick="login()">담기</a></td>
									<td class="btns"><a href="#" title="다운"
										class="btn-img btn-down" onclick="login()">다운</a></td>
									<td class="btns"><a href="#" title="뮤비"
										class="btn-img btn-movie">뮤비</a></td>
								</tr>
								<!-- tr list -->
								<tr class="list">
									<!-- tr list -->
									<td class="check"><input type="checkbox"
										class="select-check" title="Downtown Baby"></td>
									<td class="number">20</td>
									<td><a href="#" class="imge"> <span class="mask"></span>
											<img src="C:팀4/사진/지니차트/장르별차트/가요일/20.jpg" alt="Downtown Baby">
									</a></td>
									<td class="info"><a href="#" class="sg songTitle" Downtown
										Baby></a> <a href="#" class="sg songArtist">블루</a> <!-- <a href="#">가수옆작은화살표</a> 이건 제목옆 토글 -->
										<!-- <a href="#">화살표옆 앨범타이틀</a> --></td>
									<td class="btns"><a href="#" title="재생"
										class="btn-img btn-listen" onclick="play_one(20)">듣기</a></td>
									<td class="btns"><a href="#" title="추가"
										class="btn-img btn-add" onclick="play_list(20)">추가</a></td>
									<td class="btns"><a href="#" title="담기"
										class="btn-img btn-album" onclick="login()">담기</a></td>
									<td class="btns"><a href="#" title="다운"
										class="btn-img btn-down" onclick="login()">다운</a></td>
									<td class="btns"><a href="#" title="뮤비"
										class="btn-img btn-movie">뮤비</a></td>
								</tr>
								<!-- tr list -->
								<tr class="list">
									<!-- tr list -->
									<td class="check"><input type="checkbox"
										class="select-check" title="덤디덤디"></td>
									<td class="number">21</td>
									<td><a href="#" class="imge"> <span class="mask"></span>
											<img src="C:팀4/사진/지니차트/장르별차트/가요일/21.jpg" alt="덤디덤디">
									</a></td>
									<td class="info"><a href="#" class="sg songTitle">덤디덤디</a>
										<a href="#" class="sg songArtist">(여자)아이들</a> <!-- <a href="#">가수옆작은화살표</a> 이건 제목옆 토글 -->
										<!-- <a href="#">화살표옆 앨범타이틀</a> --></td>
									<td class="btns"><a href="#" title="재생"
										class="btn-img btn-listen" onclick="play_one(21)">듣기</a></td>
									<td class="btns"><a href="#" title="추가"
										class="btn-img btn-add" onclick="play_list(21)">추가</a></td>
									<td class="btns"><a href="#" title="담기"
										class="btn-img btn-album" onclick="login()">담기</a></td>
									<td class="btns"><a href="#" title="다운"
										class="btn-img btn-down" onclick="login()">다운</a></td>
									<td class="btns"><a href="#" title="뮤비"
										class="btn-img btn-movie">뮤비</a></td>
								</tr>
								<!-- tr list -->
								<tr class="list">
									<!-- tr list -->
									<td class="check"><input type="checkbox"
										class="select-check" title="오래된 노래"></td>
									<td class="number">22</td>
									<td><a href="#" class="imge"> <span class="mask"></span>
											<img src="C:팀4/사진/지니차트/장르별차트/가요일/22.jpg" alt="오래된 노래">
									</a></td>
									<td class="info"><a href="#" class="sg songTitle">오래된
											노래</a> <a href="#" class="sg songArtist">임영웅</a> <!-- <a href="#">가수옆작은화살표</a> 이건 제목옆 토글 -->
										<!-- <a href="#">화살표옆 앨범타이틀</a> --></td>
									<td class="btns"><a href="#" title="재생"
										class="btn-img btn-listen" onclick="play_one(22)">듣기</a></td>
									<td class="btns"><a href="#" title="추가"
										class="btn-img btn-add" onclick="play_list(22)">추가</a></td>
									<td class="btns"><a href="#" title="담기"
										class="btn-img btn-album" onclick="login()">담기</a></td>
									<td class="btns"><a href="#" title="다운"
										class="btn-img btn-down" onclick="login()">다운</a></td>
									<td class="btns"><a href="#" title="뮤비"
										class="btn-img btn-movie">뮤비</a></td>
								</tr>
								<!-- tr list -->
								<tr class="list">
									<!-- tr list -->
									<td class="check"><input type="checkbox"
										class="select-check" title="작은 것들을 위한 시"></td>
									<td class="number">23</td>
									<td><a href="#" class="imge"> <span class="mask"></span>
											<img src="C:팀4/사진/지니차트/장르별차트/가요일/23.jpg" alt="작은 것들을 위한 시">
									</a></td>
									<td class="info"><a href="#" class="sg songTitle">작은
											것들을 위한 시</a> <a href="#" class="sg songArtist">방탄소년단</a> <!-- <a href="#">가수옆작은화살표</a> 이건 제목옆 토글 -->
										<!-- <a href="#">화살표옆 앨범타이틀</a> --></td>
									<td class="btns"><a href="#" title="재생"
										class="btn-img btn-listen" onclick="play_one(23)">듣기</a></td>
									<td class="btns"><a href="#" title="추가"
										class="btn-img btn-add" onclick="play_list(23)">추가</a></td>
									<td class="btns"><a href="#" title="담기"
										class="btn-img btn-album" onclick="login()">담기</a></td>
									<td class="btns"><a href="#" title="다운"
										class="btn-img btn-down" onclick="login()">다운</a></td>
									<td class="btns"><a href="#" title="뮤비"
										class="btn-img btn-movie">뮤비</a></td>
								</tr>
								<!-- tr list -->
								<tr class="list">
									<!-- tr list -->
									<td class="check"><input type="checkbox"
										class="select-check" title="살짝 설렛어"></td>
									<td class="number">24</td>
									<td><a href="#" class="imge"> <span class="mask"></span>
											<img src="C:팀4/사진/지니차트/장르별차트/가요일/24.jpg" alt="살짝 설렛어">
									</a></td>
									<td class="info"><a href="#" class="sg songTitle">살짝
											설렛어</a> <a href="#" class="sg songArtist">오마이걸</a> <!-- <a href="#">가수옆작은화살표</a> 이건 제목옆 토글 -->
										<!-- <a href="#">화살표옆 앨범타이틀</a> --></td>
									<td class="btns"><a href="#" title="재생"
										class="btn-img btn-listen" onclick="play_one(24)">듣기</a></td>
									<td class="btns"><a href="#" title="추가"
										class="btn-img btn-add" onclick="play_list(24)">추가</a></td>
									<td class="btns"><a href="#" title="담기"
										class="btn-img btn-album" onclick="login()">담기</a></td>
									<td class="btns"><a href="#" title="다운"
										class="btn-img btn-down" onclick="login()">다운</a></td>
									<td class="btns"><a href="#" title="뮤비"
										class="btn-img btn-movie">뮤비</a></td>
								</tr>
								<!-- tr list -->
								<tr class="list">
									<!-- tr list -->
									<td class="check"><input type="checkbox"
										class="select-check" title="METEOR"></td>
									<td class="number">25</td>
									<td><a href="#" class="imge"> <span class="mask"></span>
											<img src="C:팀4/사진/지니차트/장르별차트/가요일/25.jpg" alt="METEOR">
									</a></td>
									<td class="info"><a href="#" class="sg songTitle">METEOR</a>
										<a href="#" class="sg songArtist">창모</a> <!-- <a href="#">가수옆작은화살표</a> 이건 제목옆 토글 -->
										<!-- <a href="#">화살표옆 앨범타이틀</a> --></td>
									<td class="btns"><a href="#" title="재생"
										class="btn-img btn-listen" onclick="play_one(25)">듣기</a></td>
									<td class="btns"><a href="#" title="추가"
										class="btn-img btn-add" onclick="play_list(25)">추가</a></td>
									<td class="btns"><a href="#" title="담기"
										class="btn-img btn-album" onclick="login()">담기</a></td>
									<td class="btns"><a href="#" title="다운"
										class="btn-img btn-down" onclick="login()">다운</a></td>
									<td class="btns"><a href="#" title="뮤비"
										class="btn-img btn-movie">뮤비</a></td>
								</tr>
								<!-- tr list -->
								<tr class="list">
									<!-- tr list -->
									<td class="check"><input type="checkbox"
										class="select-check" title="어떻게 지내"></td>
									<td class="number">26</td>
									<td><a href="#" class="imge"> <span class="mask"></span>
											<img src="C:팀4/사진/지니차트/장르별차트/가요일/26.jpg" alt="어떻게 지내">
									</a></td>
									<td class="info"><a href="#" class="sg songTitle">어떻게
											지내</a> <a href="#" class="sg songArtist">오반</a> <!-- <a href="#">가수옆작은화살표</a> 이건 제목옆 토글 -->
										<!-- <a href="#">화살표옆 앨범타이틀</a> --></td>
									<td class="btns"><a href="#" title="재생"
										class="btn-img btn-listen" onclick="play_one(26)">듣기</a></td>
									<td class="btns"><a href="#" title="추가"
										class="btn-img btn-add" onclick="play_list(26)">추가</a></td>
									<td class="btns"><a href="#" title="담기"
										class="btn-img btn-album" onclick="login()">담기</a></td>
									<td class="btns"><a href="#" title="다운"
										class="btn-img btn-down" onclick="login()">다운</a></td>
									<td class="btns"><a href="#" title="뮤비"
										class="btn-img btn-movie">뮤비</a></td>
								</tr>
								<!-- tr list -->
								<tr class="list">
									<!-- tr list -->
									<td class="check"><input type="checkbox"
										class="select-check" title="아틀란티스 소녀"></td>
									<td class="number">27</td>
									<td><a href="#" class="imge"> <span class="mask"></span>
											<img src="C:팀4/사진/지니차트/장르별차트/가요일/27.jpg" alt="아틀란티스 소녀">
									</a></td>
									<td class="info"><a href="#" class="sg songTitle">아틀란티스
											소녀</a> <a href="#" class="sg songArtist">볼빨간사춘기</a> <!-- <a href="#">가수옆작은화살표</a> 이건 제목옆 토글 -->
										<!-- <a href="#">화살표옆 앨범타이틀</a> --></td>
									<td class="btns"><a href="#" title="재생"
										class="btn-img btn-listen" onclick="play_one(27)">듣기</a></td>
									<td class="btns"><a href="#" title="추가"
										class="btn-img btn-add" onclick="play_list(27)">추가</a></td>
									<td class="btns"><a href="#" title="담기"
										class="btn-img btn-album" onclick="login()">담기</a></td>
									<td class="btns"><a href="#" title="다운"
										class="btn-img btn-down" onclick="login()">다운</a></td>
									<td class="btns"><a href="#" title="뮤비"
										class="btn-img btn-movie">뮤비</a></td>
								</tr>
								<!-- tr list -->
								<tr class="list">
									<!-- tr list -->
									<td class="check"><input type="checkbox"
										class="select-check" title="Summer Hate"></td>
									<td class="number">28</td>
									<td><a href="#" class="imge"> <span class="mask"></span>
											<img src="C:팀4/사진/지니차트/장르별차트/가요일/28.jpg" alt="Summer Hate">
									</a></td>
									<td class="info"><a href="#" class="sg songTitle">Summer
											Hate</a> <a href="#" class="sg songArtist">지코</a> <!-- <a href="#">가수옆작은화살표</a> 이건 제목옆 토글 -->
										<!-- <a href="#">화살표옆 앨범타이틀</a> --></td>
									<td class="btns"><a href="#" title="재생"
										class="btn-img btn-listen" onclick="play_one(28)">듣기</a></td>
									<td class="btns"><a href="#" title="추가"
										class="btn-img btn-add" onclick="play_list(28)">추가</a></td>
									<td class="btns"><a href="#" title="담기"
										class="btn-img btn-album" onclick="login()">담기</a></td>
									<td class="btns"><a href="#" title="다운"
										class="btn-img btn-down" onclick="login()">다운</a></td>
									<td class="btns"><a href="#" title="뮤비"
										class="btn-img btn-movie">뮤비</a></td>
								</tr>
								<!-- tr list -->
								<tr class="list">
									<!-- tr list -->
									<td class="check"><input type="checkbox"
										class="select-check" title="오늘도 빛나는 너에게"></td>
									<td class="number">29</td>
									<td><a href="#" class="imge"> <span class="mask"></span>
											<img src="C:팀4/사진/지니차트/장르별차트/가요일/29.jpg" alt="오늘도 빛나는 너에게">
									</a></td>
									<td class="info"><a href="#" class="sg songTitle">오늘도
											빛나는 너에게</a> <a href="#" class="sg songArtist">마크툽</a> <!-- <a href="#">가수옆작은화살표</a> 이건 제목옆 토글 -->
										<!-- <a href="#">화살표옆 앨범타이틀</a> --></td>
									<td class="btns"><a href="#" title="재생"
										class="btn-img btn-listen" onclick="play_one(29)">듣기</a></td>
									<td class="btns"><a href="#" title="추가"
										class="btn-img btn-add" onclick="play_list(29)">추가</a></td>
									<td class="btns"><a href="#" title="담기"
										class="btn-img btn-album" onclick="login()">담기</a></td>
									<td class="btns"><a href="#" title="다운"
										class="btn-img btn-down" onclick="login()">다운</a></td>
									<td class="btns"><a href="#" title="뮤비"
										class="btn-img btn-movie">뮤비</a></td>
								</tr>
								<!-- tr list -->
								<tr class="list">
									<!-- tr list -->
									<td class="check"><input type="checkbox"
										class="select-check" title="숲의 아이"></td>
									<td class="number">30</td>
									<td><a href="#" class="imge"> <span class="mask"></span>
											<img src="C:팀4/사진/지니차트/장르별차트/가요일/30.jpg" alt="숲의 아이">
									</a></td>
									<td class="info"><a href="#" class="sg songTitle">숲의
											아이</a> <a href="#" class="sg songArtist">유아</a> <!-- <a href="#">가수옆작은화살표</a> 이건 제목옆 토글 -->
										<!-- <a href="#">화살표옆 앨범타이틀</a> --></td>
									<td class="btns"><a href="#" title="재생"
										class="btn-img btn-listen" onclick="play_one(30)">듣기</a></td>
									<td class="btns"><a href="#" title="추가"
										class="btn-img btn-add" onclick="play_list(30)">추가</a></td>
									<td class="btns"><a href="#" title="담기"
										class="btn-img btn-album" onclick="login()">담기</a></td>
									<td class="btns"><a href="#" title="다운"
										class="btn-img btn-down" onclick="login()">다운</a></td>
									<td class="btns"><a href="#" title="뮤비"
										class="btn-img btn-movie">뮤비</a></td>
								</tr>
								<!-- tr list -->
							</tbody>
						</table>
						<!-- list-wrap -->
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
	<%@ include file="/Footer.jsp"%>
</body>
</html>