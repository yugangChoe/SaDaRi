<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="/Genie_Project/css/Genie.css" rel="stylesheet" type="text/css">
<title>Chart_genre_pop_week</title>
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
                <img src="C:/팀4/사진/이미지/h2_chart.gif" alt="지니차트">
            </h2>
        </div>
        <!-- title -->
        <div class="title-1">
            <ul>
	            <li>
	                <a href="/Genie_Project/G_servlet?command=Chart_top200_present">
	                    <img src="C:/팀4/사진/이미지/top_200.png" alt="탑200">
	                </a>
	            </li>
	            <li>
	                <a href="/Genie_Project/G_servlet?command=Chart_genre_kpop_day">
	                    <img src="C:/팀4/사진/이미지/genre_chart.png" alt="장르별차트">
	                </a>
	            </li>
	            <li>
	                <a href="/Genie_Project/G_servlet?command=Chart_MV_day">
	                    <img src="C:/팀4/사진/이미지/mv_chart.png" alt="뮤직비디오차트"></a>
	            </li>
            </ul>
        </div>
        <div class="title-line">
            <h3 style="font: 0/0 a">장르 종류</h3>
            <ul>
                <li class="hot">
                    <a href="/Genie_Project/G_servlet?command=Chart_genre_kpop_day">가요</a>
                </li>
                <li>
                    <a href="/Genie_Project/G_servlet?command=Chart_genre_pop_day">POP</a>
                </li>
                <li>
                    <a href="/Genie_Project/G_servlet?command=Chart_genre_OST_day">OST</a>
                </li>
                <li>
                    <a href="/Genie_Project/G_servlet?command=Chart_genre_trot_day">트롯</a>
                </li>
            </ul>
        </div><!-- title-line -->
        <div class="chart-date">
            <div class="date">
                <h3>
                    <span id="inc_date">2020.09.2주</span>
                </h3>
                <a href="#">
                    <img src="C:/팀4/사진/이미지/time.png" alt="시간 보기">
                </a>
            </div><!-- date -->
            <ul class="select-term">
                <li><a href="Chart_genre_pop_day.jsp" class="radius ">일간</a></li>
                <li><a href="Chart_genre_pop_week.jsp" class="radius ">주간</a></li>
            </ul>
        </div><!--chart-date -->
        <div class="song-list">
            <div class="song-list-wrap">
                <div class="toolbar">
                    <input type="checkbox" class="all-check" title="전체 선택">
                    <a href="#" class="btn btn-listen" title="재생">듣기</a>
                    <a href="#" class="btn btn-add" title="추가">추가</a>
                    <a href="#" class="btn btn-album" title="담기">담기</button>
                    <a href="#" class="btn btn-down" title="다운">다운</a>
                    <div class="btns">
                        <a href="#" class="btn btn-listen" title="TOP200 듣기">TOP200 듣기</a>
                    </div><!-- btns -->
                </div><!-- toolbar-->
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
                        <tr class="list"> <!-- tr list -->
                            <td class="check"><input type="checkbox" class="select-check" title="Bad Boy"></td>
                            <td class="number">1</td>
                            <td>
                                <a href="#" class="imge">
                                    <span class="mask"></span>
                                    <img src="C:/팀4/사진/지니차트/장르별차트/팝/팝주간/1.jpg" alt="Bad Boy">
                                </a>
                            </td>
                            <td class="info">
                                <a href="#" class="sg songTitle">Bad Boy</a>
                                <a href="#" class="sg songArtist">청하 & Christopher</a>
                                <!-- <a href="#">가수옆작은화살표</a> 이건 제목옆 토글 -->
                                <!-- <a href="#">화살표옆 앨범타이틀</a> -->
                            </td>
                            <td class="btns">
                                    <a href="#" title="재생" class="btn-img btn-listen" onclick="play_one(1)">듣기</a>
                                </td>
                                <td class="btns">
                                    <a href="#" title="추가" class="btn-img btn-add" onclick="play_list(1)">추가</a>
                                </td>
                                <td class="btns">
                                    <a href="#" title="담기" class="btn-img btn-album" onclick="login()">담기</a>
                                </td>
                                <td class="btns">
                                    <a href="#" title="다운" class="btn-img btn-down" onclick="login()">다운</a>
                                </td>
                                <td class="btns">
                                    <a href="#" title="뮤비" class="btn-img btn-movie">뮤비</a>
                                </td>
                        </tr><!-- tr list -->
                        <tr class="list"> <!-- tr list -->
                            <td class="check"><input type="checkbox" class="select-check" title="Holy (Feat. Chance The Rapper)"></td>
                            <td class="number">2</td>
                            <td>
                                <a href="#" class="imge">
                                    <span class="mask"></span>
                                    <img src="C:/팀4/사진/지니차트/장르별차트/팝/팝주간/2.jpg" alt="Holy (Feat. Chance The Rapper)">
                                </a>
                            </td>
                            <td class="info">
                                <a href="#" class="sg songTitle">Holy (Feat. Chance The Rapper)</a>
                                <a href="#" class="sg songArtist">Tones And I</a>
                                <!-- <a href="#">가수옆작은화살표</a> 이건 제목옆 토글 -->
                                <!-- <a href="#">화살표옆 앨범타이틀</a> -->
                            </td>
                            <td class="btns">
                                    <a href="#" title="재생" class="btn-img btn-listen" onclick="play_one(2)">듣기</a>
                                </td>
                                <td class="btns">
                                    <a href="#" title="추가" class="btn-img btn-add" onclick="play_list(2)">추가</a>
                                </td>
                                <td class="btns">
                                    <a href="#" title="담기" class="btn-img btn-album" onclick="login()">담기</a>
                                </td>
                                <td class="btns">
                                    <a href="#" title="다운" class="btn-img btn-down" onclick="login()">다운</a>
                                </td>
                                <td class="btns">
                                    <a href="#" title="뮤비" class="btn-img btn-movie">뮤비</a>
                                </td>
                        </tr><!-- tr list -->
                        <tr class="list"> <!-- tr list -->
                            <td class="check"><input type="checkbox" class="select-check" title="2002)"></td>
                            <td class="number">3</td>
                            <td>
                                <a href="#" class="imge">
                                    <span class="mask"></span>
                                    <img src="C:/팀4/사진/지니차트/장르별차트/팝/팝주간/3.jpg" alt="2002">
                                </a>
                            </td>
                            <td class="info">
                                <a href="#" class="sg songTitle">2002</a>
                                <a href="#" class="sg songArtist">Anne-Marie</a>
                                <!-- <a href="#">가수옆작은화살표</a> 이건 제목옆 토글 -->
                                <!-- <a href="#">화살표옆 앨범타이틀</a> -->
                            </td>
                            <td class="btns">
                                    <a href="#" title="재생" class="btn-img btn-listen" onclick="play_one(3)">듣기</a>
                                </td>
                                <td class="btns">
                                    <a href="#" title="추가" class="btn-img btn-add" onclick="play_list(3)">추가</a>
                                </td>
                                <td class="btns">
                                    <a href="#" title="담기" class="btn-img btn-album" onclick="login()">담기</a>
                                </td>
                                <td class="btns">
                                    <a href="#" title="다운" class="btn-img btn-down" onclick="login()">다운</a>
                                </td>
                                <td class="btns">
                                    <a href="#" title="뮤비" class="btn-img btn-movie">뮤비</a>
                                </td>
                        </tr><!-- tr list -->
                        <tr class="list"> <!-- tr list -->
                            <td class="check"><input type="checkbox" class="select-check" title="Don't Start Now"></td>
                            <td class="number">4</td>
                            <td>
                                <a href="#" class="imge">
                                    <span class="mask"></span>
                                    <img src="C:/팀4/사진/지니차트/장르별차트/팝/팝주간/4.jpg" alt="Don't Start Now">
                                </a>
                            </td>
                            <td class="info">
                                <a href="#" class="sg songTitle">Don't Start Now</a>
                                <a href="#" class="sg songArtist">Dua Lipa</a>
                                <!-- <a href="#">가수옆작은화살표</a> 이건 제목옆 토글 -->
                                <!-- <a href="#">화살표옆 앨범타이틀</a> -->
                            </td>
                            <td class="btns">
                                    <a href="#" title="재생" class="btn-img btn-listen" onclick="play_one(4)">듣기</a>
                                </td>
                                <td class="btns">
                                    <a href="#" title="추가" class="btn-img btn-add" onclick="play_list(4)">추가</a>
                                </td>
                                <td class="btns">
                                    <a href="#" title="담기" class="btn-img btn-album" onclick="login()">담기</a>
                                </td>
                                <td class="btns">
                                    <a href="#" title="다운" class="btn-img btn-down" onclick="login()">다운</a>
                                </td>
                                <td class="btns">
                                    <a href="#" title="뮤비" class="btn-img btn-movie">뮤비</a>
                                </td>
                        </tr><!-- tr list -->
                        <tr class="list"> <!-- tr list -->
                            <td class="check"><input type="checkbox" class="select-check" title="Memories"></td>
                            <td class="number">5</td>
                            <td>
                                <a href="#" class="imge">
                                    <span class="mask"></span>
                                    <img src="C:/팀4/사진/지니차트/장르별차트/팝/팝주간/5.jpg" alt="Memories">
                                </a>
                            </td>
                            <td class="info">
                                <a href="#" class="sg songTitle">Memories</a>
                                <a href="#" class="sg songArtist">Maroon 5</a>
                                <!-- <a href="#">가수옆작은화살표</a> 이건 제목옆 토글 -->
                                <!-- <a href="#">화살표옆 앨범타이틀</a> -->
                            </td>
                            <td class="btns">
                                    <a href="#" title="재생" class="btn-img btn-listen" onclick="play_one(5)">듣기</a>
                                </td>
                                <td class="btns">
                                    <a href="#" title="추가" class="btn-img btn-add" onclick="play_list(5)">추가</a>
                                </td>
                                <td class="btns">
                                    <a href="#" title="담기" class="btn-img btn-album" onclick="login()">담기</a>
                                </td>
                                <td class="btns">
                                    <a href="#" title="다운" class="btn-img btn-down" onclick="login()">다운</a>
                                </td>
                                <td class="btns">
                                    <a href="#" title="뮤비" class="btn-img btn-movie">뮤비</a>
                                </td>
                        </tr><!-- tr list -->
                        <tr class="list"> <!-- tr list -->
                            <td class="check"><input type="checkbox" class="select-check" title="Maniac"></td>
                            <td class="number">6</td>
                            <td>
                                <a href="#" class="imge">
                                    <span class="mask"></span>
                                    <img src="C:/팀4/사진/지니차트/장르별차트/팝/팝주간/6.jpg" alt="Maniac">
                                </a>
                            </td>
                            <td class="info">
                                <a href="#" class="sg songTitle">12 : 45 (Stripped)</a>
                                <a href="#" class="sg songArtist">etham </a>
                                <!-- <a href="#">가수옆작은화살표</a> 이건 제목옆 토글 -->
                                <!-- <a href="#">화살표옆 앨범타이틀</a> -->
                            </td>
                            <td class="btns">
                                    <a href="#" title="재생" class="btn-img btn-listen" onclick="play_one(6)">듣기</a>
                                </td>
                                <td class="btns">
                                    <a href="#" title="추가" class="btn-img btn-add" onclick="play_list(6)">추가</a>
                                </td>
                                <td class="btns">
                                    <a href="#" title="담기" class="btn-img btn-album" onclick="login()">담기</a>
                                </td>
                                <td class="btns">
                                    <a href="#" title="다운" class="btn-img btn-down" onclick="login()">다운</a>
                                </td>
                                <td class="btns">
                                    <a href="#" title="뮤비" class="btn-img btn-movie">뮤비</a>
                                </td>
                        </tr><!-- tr list -->
                        <tr class="list"> <!-- tr list -->
                            <td class="check"><input type="checkbox" class="select-check" title="Maniac"></td>
                            <td class="number">7</td>
                            <td>
                                <a href="#" class="imge">
                                    <span class="mask"></span>
                                    <img src="C:/팀4/사진/지니차트/장르별차트/팝/팝주간/7.jpg" alt="Maniac">
                                </a>
                            </td>
                            <td class="info">
                                <a href="#" class="sg songTitle">Maniac</a>
                                <a href="#" class="sg songArtist">Conan Gray </a>
                                <!-- <a href="#">가수옆작은화살표</a> 이건 제목옆 토글 -->
                                <!-- <a href="#">화살표옆 앨범타이틀</a> -->
                            </td>
                            <td class="btns">
                                    <a href="#" title="재생" class="btn-img btn-listen" onclick="play_one(7)">듣기</a>
                                </td>
                                <td class="btns">
                                    <a href="#" title="추가" class="btn-img btn-add" onclick="play_list(7)">추가</a>
                                </td>
                                <td class="btns">
                                    <a href="#" title="담기" class="btn-img btn-album" onclick="login()">담기</a>
                                </td>
                                <td class="btns">
                                    <a href="#" title="다운" class="btn-img btn-down" onclick="login()">다운</a>
                                </td>
                                <td class="btns">
                                    <a href="#" title="뮤비" class="btn-img btn-movie">뮤비</a>
                                </td>
                        </tr><!-- tr list -->
                        <tr class="list"> <!-- tr list -->
                            <td class="check"><input type="checkbox" class="select-check" title="bad guy"></td>
                            <td class="number">8</td>
                            <td>
                                <a href="#" class="imge">
                                    <span class="mask"></span>
                                    <img src="C:/팀4/사진/지니차트/장르별차트/팝/팝주간/8.jpg" alt="bad guy">
                                </a>
                            </td>
                            <td class="info">
                                <a href="#" class="sg songTitle">bad guy</a>
                                <a href="#" class="sg songArtist">Billie Eilish</a>
                                <!-- <a href="#">가수옆작은화살표</a> 이건 제목옆 토글 -->
                                <!-- <a href="#">화살표옆 앨범타이틀</a> -->
                            </td>
                            <td class="btns">
                                    <a href="#" title="재생" class="btn-img btn-listen" onclick="play_one(8)">듣기</a>
                                </td>
                                <td class="btns">
                                    <a href="#" title="추가" class="btn-img btn-add" onclick="play_list(8)">추가</a>
                                </td>
                                <td class="btns">
                                    <a href="#" title="담기" class="btn-img btn-album" onclick="login()">담기</a>
                                </td>
                                <td class="btns">
                                    <a href="#" title="다운" class="btn-img btn-down" onclick="login()">다운</a>
                                </td>
                                <td class="btns">
                                    <a href="#" title="뮤비" class="btn-img btn-movie">뮤비</a>
                                </td>
                        </tr><!-- tr list -->
                        <tr class="list"> <!-- tr list -->
                            <td class="check"><input type="checkbox" class="select-check" title="Painkiller"></td>
                            <td class="number">9</td>
                            <td>
                                <a href="#" class="imge">
                                    <span class="mask"></span>
                                    <img src="C:/팀4/사진/지니차트/장르별차트/팝/팝주간/9.jpg" alt="Painkiller">
                                </a>
                            </td>
                            <td class="info">
                                <a href="#" class="sg songTitle">Painkiller</a>
                                <a href="#" class="sg songArtist">Ruel </a>
                                <!-- <a href="#">가수옆작은화살표</a> 이건 제목옆 토글 -->
                                <!-- <a href="#">화살표옆 앨범타이틀</a> -->
                            </td>
                            <td class="btns">
                                    <a href="#" title="재생" class="btn-img btn-listen" onclick="play_one(9)">듣기</a>
                                </td>
                                <td class="btns">
                                    <a href="#" title="추가" class="btn-img btn-add" onclick="play_list(9)">추가</a>
                                </td>
                                <td class="btns">
                                    <a href="#" title="담기" class="btn-img btn-album" onclick="login()">담기</a>
                                </td>
                                <td class="btns">
                                    <a href="#" title="다운" class="btn-img btn-down" onclick="login()">다운</a>
                                </td>
                                <td class="btns">
                                    <a href="#" title="뮤비" class="btn-img btn-movie">뮤비</a>
                                </td>
                        </tr><!-- tr list -->
                        <tr class="list"> <!-- tr list -->
                            <td class="check"><input type="checkbox" class="select-check" title="Paris In The Rain"></td>
                            <td class="number">10</td>
                            <td>
                                <a href="#" class="imge">
                                    <span class="mask"></span>
                                    <img src="C:/팀4/사진/지니차트/장르별차트/팝/팝주간/10.jpg" alt="Paris In The Rain">
                                </a>
                            </td>
                            <td class="info">
                                <a href="#" class="sg songTitle">Paris In The Rain</a>
                                <a href="#" class="sg songArtist">Lauv</a>
                                <!-- <a href="#">가수옆작은화살표</a> 이건 제목옆 토글 -->
                                <!-- <a href="#">화살표옆 앨범타이틀</a> -->
                            </td>
                            <td class="btns">
                                    <a href="#" title="재생" class="btn-img btn-listen" onclick="play_one(10)">듣기</a>
                                </td>
                                <td class="btns">
                                    <a href="#" title="추가" class="btn-img btn-add" onclick="play_list(10)">추가</a>
                                </td>
                                <td class="btns">
                                    <a href="#" title="담기" class="btn-img btn-album" onclick="login()">담기</a>
                                </td>
                                <td class="btns">
                                    <a href="#" title="다운" class="btn-img btn-down" onclick="login()">다운</a>
                                </td>
                                <td class="btns">
                                    <a href="#" title="뮤비" class="btn-img btn-movie">뮤비</a>
                                </td>
                        </tr><!-- tr list -->
                        <tr class="list"> <!-- tr list -->
                            <td class="check"><input type="checkbox" class="select-check" title="All Falls Down"></td>
                            <td class="number">11</td>
                            <td>
                                <a href="#" class="imge">
                                    <span class="mask"></span>
                                    <img src="C:/팀4/사진/지니차트/장르별차트/팝/팝주간/11.jpg" alt="All Falls Down">
                                </a>
                            </td>
                            <td class="info">
                                <a href="#" class="sg songTitle"> All Falls Down</a>
                                <a href="#" class="sg songArtist">an Walker</a>
                                <!-- <a href="#">가수옆작은화살표</a> 이건 제목옆 토글 -->
                                <!-- <a href="#">화살표옆 앨범타이틀</a> -->
                            </td>
                            <td class="btns">
                                    <a href="#" title="재생" class="btn-img btn-listen" onclick="play_one(11)">듣기</a>
                                </td>
                                <td class="btns">
                                    <a href="#" title="추가" class="btn-img btn-add" onclick="play_list(11)">추가</a>
                                </td>
                                <td class="btns">
                                    <a href="#" title="담기" class="btn-img btn-album" onclick="login()">담기</a>
                                </td>
                                <td class="btns">
                                    <a href="#" title="다운" class="btn-img btn-down" onclick="login()">다운</a>
                                </td>
                                <td class="btns">
                                    <a href="#" title="뮤비" class="btn-img btn-movie">뮤비</a>
                                </td>
                        </tr><!-- tr list -->
                        <tr class="list"> <!-- tr list -->
                            <td class="check"><input type="checkbox" class="select-check" title="On My Way"></td>
                            <td class="number">12</td>
                            <td>
                                <a href="#" class="imge">
                                    <span class="mask"></span>
                                    <img src="C:/팀4/사진/지니차트/장르별차트/팝/팝주간/12.jpg" alt="On My Way">
                                </a>
                            </td>
                            <td class="info">
                                <a href="#" class="sg songTitle">On My Way</a>
                                <a href="#" class="sg songArtist">Alan Walker</a>
                                <!-- <a href="#">가수옆작은화살표</a> 이건 제목옆 토글 -->
                                <!-- <a href="#">화살표옆 앨범타이틀</a> -->
                            </td>
                            <td class="btns">
                                    <a href="#" title="재생" class="btn-img btn-listen" onclick="play_one(12)">듣기</a>
                                </td>
                                <td class="btns">
                                    <a href="#" title="추가" class="btn-img btn-add" onclick="play_list(12)">추가</a>
                                </td>
                                <td class="btns">
                                    <a href="#" title="담기" class="btn-img btn-album" onclick="login()">담기</a>
                                </td>
                                <td class="btns">
                                    <a href="#" title="다운" class="btn-img btn-down" onclick="login()">다운</a>
                                </td>
                                <td class="btns">
                                    <a href="#" title="뮤비" class="btn-img btn-movie">뮤비</a>
                                </td>
                        </tr><!-- tr list -->
                        <tr class="list"> <!-- tr list -->
                            <td class="check"><input type="checkbox" class="select-check" title="Comethru"></td>
                            <td class="number">13</td>
                            <td>
                                <a href="#" class="imge">
                                    <span class="mask"></span>
                                    <img src="C:/팀4/사진/지니차트/장르별차트/팝/팝주간/13.jpg" alt="Comethru">
                                </a>
                            </td>
                            <td class="info">
                                <a href="#" class="sg songTitle">Comethru</a>
                                <a href="#" class="sg songArtist">Jeremy Zucker</a>
                                <!-- <a href="#">가수옆작은화살표</a> 이건 제목옆 토글 -->
                                <!-- <a href="#">화살표옆 앨범타이틀</a> -->
                            </td>
                            <td class="btns">
                                    <a href="#" title="재생" class="btn-img btn-listen" onclick="play_one(13)">듣기</a>
                                </td>
                                <td class="btns">
                                    <a href="#" title="추가" class="btn-img btn-add" onclick="play_list(13)">추가</a>
                                </td>
                                <td class="btns">
                                    <a href="#" title="담기" class="btn-img btn-album" onclick="login()">담기</a>
                                </td>
                                <td class="btns">
                                    <a href="#" title="다운" class="btn-img btn-down" onclick="login()">다운</a>
                                </td>
                                <td class="btns">
                                    <a href="#" title="뮤비" class="btn-img btn-movie">뮤비</a>
                                </td>
                        </tr><!-- tr list -->
                        <tr class="list"> <!-- tr list -->
                            <td class="check"><input type="checkbox" class="select-check" title="Senorita"></td>
                            <td class="number">14</td>
                            <td>
                                <a href="#" class="imge">
                                    <span class="mask"></span>
                                    <img src="C:/팀4/사진/지니차트/장르별차트/팝/팝주간/14.jpg" alt="Senorita">
                                </a>
                            </td>
                            <td class="info">
                                <a href="#" class="sg songTitle">Senorita</a>
                                <a href="#" class="sg songArtist">Camila Cabello & Shawn Mendes</a>
                                <!-- <a href="#">가수옆작은화살표</a> 이건 제목옆 토글 -->
                                <!-- <a href="#">화살표옆 앨범타이틀</a> -->
                            </td>
                            <td class="btns">
                                    <a href="#" title="재생" class="btn-img btn-listen" onclick="play_one(14)">듣기</a>
                                </td>
                                <td class="btns">
                                    <a href="#" title="추가" class="btn-img btn-add" onclick="play_list(14)">추가</a>
                                </td>
                                <td class="btns">
                                    <a href="#" title="담기" class="btn-img btn-album" onclick="login()">담기</a>
                                </td>
                                <td class="btns">
                                    <a href="#" title="다운" class="btn-img btn-down" onclick="login()">다운</a>
                                </td>
                                <td class="btns">
                                    <a href="#" title="뮤비" class="btn-img btn-movie">뮤비</a>
                                </td>
                        </tr><!-- tr list -->
                        <tr class="list"> <!-- tr list -->
                            <td class="check"><input type="checkbox" class="select-check" title="Juice"></td>
                            <td class="number">15</td>
                            <td>
                                <a href="#" class="imge">
                                    <span class="mask"></span>
                                    <img src="C:/팀4/사진/지니차트/장르별차트/팝/팝주간/15.jpg" alt="Juice">
                                </a>
                            </td>
                            <td class="info">
                                <a href="#" class="sg songTitle">Juice</a>
                                <a href="#" class="sg songArtist">Lizzo</a>
                                <!-- <a href="#">가수옆작은화살표</a> 이건 제목옆 토글 -->
                                <!-- <a href="#">화살표옆 앨범타이틀</a> -->
                            </td>
                            <td class="btns">
                                    <a href="#" title="재생" class="btn-img btn-listen" onclick="play_one(15)">듣기</a>
                                </td>
                                <td class="btns">
                                    <a href="#" title="추가" class="btn-img btn-add" onclick="play_list(15)">추가</a>
                                </td>
                                <td class="btns">
                                    <a href="#" title="담기" class="btn-img btn-album" onclick="login()">담기</a>
                                </td>
                                <td class="btns">
                                    <a href="#" title="다운" class="btn-img btn-down" onclick="login()">다운</a>
                                </td>
                                <td class="btns">
                                    <a href="#" title="뮤비" class="btn-img btn-movie">뮤비</a>
                                </td>
                        </tr><!-- tr list -->
                        <tr class="list"> <!-- tr list -->
                            <td class="check"><input type="checkbox" class="select-check" title="Shape Of You"></td>
                            <td class="number">16</td>
                            <td>
                                <a href="#" class="imge">
                                    <span class="mask"></span>
                                    <img src="C:/팀4/사진/지니차트/장르별차트/팝/팝주간/16.jpg" alt="Shape Of You">
                                </a>
                            </td>
                            <td class="info">
                                <a href="#" class="sg songTitle">Shape Of You</a>
                                <a href="#" class="sg songArtist">Ed Sheeran</a>
                                <!-- <a href="#">가수옆작은화살표</a> 이건 제목옆 토글 -->
                                <!-- <a href="#">화살표옆 앨범타이틀</a> -->
                            </td>
                            <td class="btns">
                                    <a href="#" title="재생" class="btn-img btn-listen" onclick="play_one(16)">듣기</a>
                                </td>
                                <td class="btns">
                                    <a href="#" title="추가" class="btn-img btn-add" onclick="play_list(16)">추가</a>
                                </td>
                                <td class="btns">
                                    <a href="#" title="담기" class="btn-img btn-album" onclick="login()">담기</a>
                                </td>
                                <td class="btns">
                                    <a href="#" title="다운" class="btn-img btn-down" onclick="login()">다운</a>
                                </td>
                                <td class="btns">
                                    <a href="#" title="뮤비" class="btn-img btn-movie">뮤비</a>
                                </td>
                        </tr><!-- tr list -->
                        <tr class="list"> <!-- tr list -->
                            <td class="check"><input type="checkbox" class="select-check" title="To Die For"></td>
                            <td class="number">17</td>
                            <td>
                                <a href="#" class="imge">
                                    <span class="mask"></span>
                                    <img src="C:/팀4/사진/지니차트/장르별차트/팝/팝주간/17.jpg" alt="To Die For">
                                </a>
                            </td>
                            <td class="info">
                                <a href="#" class="sg songTitle">To Die For</a>
                                <a href="#" class="sg songArtist">Sam Smith</a>
                                <!-- <a href="#">가수옆작은화살표</a> 이건 제목옆 토글 -->
                                <!-- <a href="#">화살표옆 앨범타이틀</a> -->
                            </td>
                            <td class="btns">
                                    <a href="#" title="재생" class="btn-img btn-listen" onclick="play_one(17)">듣기</a>
                                </td>
                                <td class="btns">
                                    <a href="#" title="추가" class="btn-img btn-add" onclick="play_list(17)">추가</a>
                                </td>
                                <td class="btns">
                                    <a href="#" title="담기" class="btn-img btn-album" onclick="login()">담기</a>
                                </td>
                                <td class="btns">
                                    <a href="#" title="다운" class="btn-img btn-down" onclick="login()">다운</a>
                                </td>
                                <td class="btns">
                                    <a href="#" title="뮤비" class="btn-img btn-movie">뮤비</a>
                                </td>
                        </tr><!-- tr list -->
                        <tr class="list"> <!-- tr list -->
                            <td class="check"><input type="checkbox" class="select-check" title="The Ocean"></td>
                            <td class="number">18</td>
                            <td>
                                <a href="#" class="imge">
                                    <span class="mask"></span>
                                    <img src="C:/팀4/사진/지니차트/장르별차트/팝/팝주간/18.jpg" alt="The Ocean">
                                </a>
                            </td>
                            <td class="info">
                                <a href="#" class="sg songTitle">The Ocean</a>
                                <a href="#" class="sg songArtist">Mike Perry</a>
                                <!-- <a href="#">가수옆작은화살표</a> 이건 제목옆 토글 -->
                                <!-- <a href="#">화살표옆 앨범타이틀</a> -->
                            </td>
                            <td class="btns">
                                    <a href="#" title="재생" class="btn-img btn-listen" onclick="play_one(18)">듣기</a>
                                </td>
                                <td class="btns">
                                    <a href="#" title="추가" class="btn-img btn-add" onclick="play_list(18)">추가</a>
                                </td>
                                <td class="btns">
                                    <a href="#" title="담기" class="btn-img btn-album" onclick="login()">담기</a>
                                </td>
                                <td class="btns">
                                    <a href="#" title="다운" class="btn-img btn-down" onclick="login()">다운</a>
                                </td>
                                <td class="btns">
                                    <a href="#" title="뮤비" class="btn-img btn-movie">뮤비</a>
                                </td>
                        </tr><!-- tr list -->
                        <tr class="list"> <!-- tr list -->
                            <td class="check"><input type="checkbox" class="select-check" title="Watermelon Sugar"></td>
                            <td class="number">19</td>
                            <td>
                                <a href="#" class="imge">
                                    <span class="mask"></span>
                                    <img src="C:/팀4/사진/지니차트/장르별차트/팝/팝주간/19.jpg" alt="Watermelon Sugar">
                                </a>
                            </td>
                            <td class="info">
                                <a href="#" class="sg songTitle">Watermelon Sugar</a>
                                <a href="#" class="sg songArtist">Harry Styles</a>
                                <!-- <a href="#">가수옆작은화살표</a> 이건 제목옆 토글 -->
                                <!-- <a href="#">화살표옆 앨범타이틀</a> -->
                            </td>
                            <td class="btns">
                                    <a href="#" title="재생" class="btn-img btn-listen" onclick="play_one(19)">듣기</a>
                                </td>
                                <td class="btns">
                                    <a href="#" title="추가" class="btn-img btn-add" onclick="play_list(19)">추가</a>
                                </td>
                                <td class="btns">
                                    <a href="#" title="담기" class="btn-img btn-album" onclick="login()">담기</a>
                                </td>
                                <td class="btns">
                                    <a href="#" title="다운" class="btn-img btn-down" onclick="login()">다운</a>
                                </td>
                                <td class="btns">
                                    <a href="#" title="뮤비" class="btn-img btn-movie">뮤비</a>
                                </td>
                        </tr><!-- tr list -->
                        <tr class="list"> <!-- tr list -->
                            <td class="check"><input type="checkbox" class="select-check" title="YOUTH"></td>
                            <td class="number">20</td>
                            <td>
                                <a href="#" class="imge">
                                    <span class="mask"></span>
                                    <img src="C:/팀4/사진/지니차트/장르별차트/팝/팝주간/20.jpg" alt="YOUTH">
                                </a>
                            </td>
                            <td class="info">
                                <a href="#" class="sg songTitle">YOUTH></a>
                                <a href="#" class="sg songArtist">Troye Sivan</a>
                                <!-- <a href="#">가수옆작은화살표</a> 이건 제목옆 토글 -->
                                <!-- <a href="#">화살표옆 앨범타이틀</a> -->
                            </td>
                            <td class="btns">
                                    <a href="#" title="재생" class="btn-img btn-listen" onclick="play_one(20)">듣기</a>
                                </td>
                                <td class="btns">
                                    <a href="#" title="추가" class="btn-img btn-add" onclick="play_list(20)">추가</a>
                                </td>
                                <td class="btns">
                                    <a href="#" title="담기" class="btn-img btn-album" onclick="login()">담기</a>
                                </td>
                                <td class="btns">
                                    <a href="#" title="다운" class="btn-img btn-down" onclick="login()">다운</a>
                                </td>
                                <td class="btns">
                                    <a href="#" title="뮤비" class="btn-img btn-movie">뮤비</a>
                                </td>
                        </tr><!-- tr list -->
                        <tr class="list"> <!-- tr list -->
                            <td class="check"><input type="checkbox" class="select-check" title="Believer"></td>
                            <td class="number">21</td>
                            <td>
                                <a href="#" class="imge">
                                    <span class="mask"></span>
                                    <img src="C:/팀4/사진/지니차트/장르별차트/팝/팝주간/21.jpg" alt="Believer">
                                </a>
                            </td>
                            <td class="info">
                                <a href="#" class="sg songTitle">Believer</a>
                                <a href="#" class="sg songArtist">Imagine Dragons</a>
                                <!-- <a href="#">가수옆작은화살표</a> 이건 제목옆 토글 -->
                                <!-- <a href="#">화살표옆 앨범타이틀</a> -->
                            </td>
                            <td class="btns">
                                    <a href="#" title="재생" class="btn-img btn-listen" onclick="play_one(21)">듣기</a>
                                </td>
                                <td class="btns">
                                    <a href="#" title="추가" class="btn-img btn-add" onclick="play_list(21)">추가</a>
                                </td>
                                <td class="btns">
                                    <a href="#" title="담기" class="btn-img btn-album" onclick="login()">담기</a>
                                </td>
                                <td class="btns">
                                    <a href="#" title="다운" class="btn-img btn-down" onclick="login()">다운</a>
                                </td>
                                <td class="btns">
                                    <a href="#" title="뮤비" class="btn-img btn-movie">뮤비</a>
                                </td>
                        </tr><!-- tr list -->
                        <tr class="list"> <!-- tr list -->
                            <td class="check"><input type="checkbox" class="select-check" title="Faded"></td>
                            <td class="number">22</td>
                            <td>
                                <a href="#" class="imge">
                                    <span class="mask"></span>
                                    <img src="C:/팀4/사진/지니차트/장르별차트/팝/팝주간/22.jpg" alt="Faded">
                                </a>
                            </td>
                            <td class="info">
                                <a href="#" class="sg songTitle">Faded</a>
                                <a href="#" class="sg songArtist">Alan Walker</a>
                                <!-- <a href="#">가수옆작은화살표</a> 이건 제목옆 토글 -->
                                <!-- <a href="#">화살표옆 앨범타이틀</a> -->
                            </td>
                            <td class="btns">
                                    <a href="#" title="재생" class="btn-img btn-listen" onclick="play_one(22)">듣기</a>
                                </td>
                                <td class="btns">
                                    <a href="#" title="추가" class="btn-img btn-add" onclick="play_list(22)">추가</a>
                                </td>
                                <td class="btns">
                                    <a href="#" title="담기" class="btn-img btn-album" onclick="login()">담기</a>
                                </td>
                                <td class="btns">
                                    <a href="#" title="다운" class="btn-img btn-down" onclick="login()">다운</a>
                                </td>
                                <td class="btns">
                                    <a href="#" title="뮤비" class="btn-img btn-movie">뮤비</a>
                                </td>
                        </tr><!-- tr list -->
                        <tr class="list"> <!-- tr list -->
                            <td class="check"><input type="checkbox" class="select-check" title="Bad"></td>
                            <td class="number">23</td>
                            <td>
                                <a href="#" class="imge">
                                    <span class="mask"></span>
                                    <img src="C:/팀4/사진/지니차트/장르별차트/팝/팝주간/23.jpg" alt="Bad">
                                </a>
                            </td>
                            <td class="info">
                                <a href="#" class="sg songTitle">Bad</a>
                                <a href="#" class="sg songArtist">Christopher</a>
                                <!-- <a href="#">가수옆작은화살표</a> 이건 제목옆 토글 -->
                                <!-- <a href="#">화살표옆 앨범타이틀</a> -->
                            </td>
                            <td class="btns">
                                    <a href="#" title="재생" class="btn-img btn-listen" onclick="play_one(23)">듣기</a>
                                </td>
                                <td class="btns">
                                    <a href="#" title="추가" class="btn-img btn-add" onclick="play_list(23)">추가</a>
                                </td>
                                <td class="btns">
                                    <a href="#" title="담기" class="btn-img btn-album" onclick="login()">담기</a>
                                </td>
                                <td class="btns">
                                    <a href="#" title="다운" class="btn-img btn-down" onclick="login()">다운</a>
                                </td>
                                <td class="btns">
                                    <a href="#" title="뮤비" class="btn-img btn-movie">뮤비</a>
                                </td>
                        </tr><!-- tr list -->
                        <tr class="list"> <!-- tr list -->
                            <td class="check"><input type="checkbox" class="select-check" title="Birthday"></td>
                            <td class="number">24</td>
                            <td>
                                <a href="#" class="imge">
                                    <span class="mask"></span>
                                    <img src="C:/팀4/사진/지니차트/장르별차트/팝/팝주간/24.jpg" alt="Birthday">
                                </a>
                            </td>
                            <td class="info">
                                <a href="#" class="sg songTitle">Birthday</a>
                                <a href="#" class="sg songArtist">Anne-Marie</a>
                                <!-- <a href="#">가수옆작은화살표</a> 이건 제목옆 토글 -->
                                <!-- <a href="#">화살표옆 앨범타이틀</a> -->
                            </td>
                            <td class="btns">
                                    <a href="#" title="재생" class="btn-img btn-listen" onclick="play_one(24)">듣기</a>
                                </td>
                                <td class="btns">
                                    <a href="#" title="추가" class="btn-img btn-add" onclick="play_list(24)">추가</a>
                                </td>
                                <td class="btns">
                                    <a href="#" title="담기" class="btn-img btn-album" onclick="login()">담기</a>
                                </td>
                                <td class="btns">
                                    <a href="#" title="다운" class="btn-img btn-down" onclick="login()">다운</a>
                                </td>
                                <td class="btns">
                                    <a href="#" title="뮤비" class="btn-img btn-movie">뮤비</a>
                                </td>
                        </tr><!-- tr list -->
                        <tr class="list"> <!-- tr list -->
                            <td class="check"><input type="checkbox" class="select-check" title="One Call Away"></td>
                            <td class="number">25</td>
                            <td>
                                <a href="#" class="imge">
                                    <span class="mask"></span>
                                    <img src="C:/팀4/사진/지니차트/장르별차트/팝/팝주간/25.jpg" alt="One Call Away">
                                </a>
                            </td>
                            <td class="info">
                                <a href="#" class="sg songTitle">One Call Away</a>
                                <a href="#" class="sg songArtist">Charlie Puth</a>
                                <!-- <a href="#">가수옆작은화살표</a> 이건 제목옆 토글 -->
                                <!-- <a href="#">화살표옆 앨범타이틀</a> -->
                            </td>
                            <td class="btns">
                                    <a href="#" title="재생" class="btn-img btn-listen" onclick="play_one(25)">듣기</a>
                                </td>
                                <td class="btns">
                                    <a href="#" title="추가" class="btn-img btn-add" onclick="play_list(25)">추가</a>
                                </td>
                                <td class="btns">
                                    <a href="#" title="담기" class="btn-img btn-album" onclick="login()">담기</a>
                                </td>
                                <td class="btns">
                                    <a href="#" title="다운" class="btn-img btn-down" onclick="login()">다운</a>
                                </td>
                                <td class="btns">
                                    <a href="#" title="뮤비" class="btn-img btn-movie">뮤비</a>
                                </td>
                        </tr><!-- tr list -->
                        <tr class="list"> <!-- tr list -->
                            <td class="check"><input type="checkbox" class="select-check" title="Attention"></td>
                            <td class="number">26</td>
                            <td>
                                <a href="#" class="imge">
                                    <span class="mask"></span>
                                    <img src="C:/팀4/사진/지니차트/장르별차트/팝/팝주간/26.jpg" alt="Attention">
                                </a>
                            </td>
                            <td class="info">
                                <a href="#" class="sg songTitle">Attention</a>
                                <a href="#" class="sg songArtist">Charlie Puth</a>
                                <!-- <a href="#">가수옆작은화살표</a> 이건 제목옆 토글 -->
                                <!-- <a href="#">화살표옆 앨범타이틀</a> -->
                            </td>
                            <td class="btns">
                                    <a href="#" title="재생" class="btn-img btn-listen" onclick="play_one(26)">듣기</a>
                                </td>
                                <td class="btns">
                                    <a href="#" title="추가" class="btn-img btn-add" onclick="play_list(26)">추가</a>
                                </td>
                                <td class="btns">
                                    <a href="#" title="담기" class="btn-img btn-album" onclick="login()">담기</a>
                                </td>
                                <td class="btns">
                                    <a href="#" title="다운" class="btn-img btn-down" onclick="login()">다운</a>
                                </td>
                                <td class="btns">
                                    <a href="#" title="뮤비" class="btn-img btn-movie">뮤비</a>
                                </td>
                        </tr><!-- tr list -->
                        <tr class="list"> <!-- tr list -->
                            <td class="check"><input type="checkbox" class="select-check" title="Stuck With U"></td>
                            <td class="number">27</td>
                            <td>
                                <a href="#" class="imge">
                                    <span class="mask"></span>
                                    <img src="C:/팀4/사진/지니차트/장르별차트/팝/팝주간/27.jpg" alt="Stuck With U">
                                </a>
                            </td>
                            <td class="info">
                                <a href="#" class="sg songTitle">Stuck With U</a>
                                <a href="#" class="sg songArtist">Ariana Grande & Justin Bieber</a>
                                <!-- <a href="#">가수옆작은화살표</a> 이건 제목옆 토글 -->
                                <!-- <a href="#">화살표옆 앨범타이틀</a> -->
                            </td>
                            <td class="btns">
                                    <a href="#" title="재생" class="btn-img btn-listen" onclick="play_one(27)">듣기</a>
                                </td>
                                <td class="btns">
                                    <a href="#" title="추가" class="btn-img btn-add" onclick="play_list(27)">추가</a>
                                </td>
                                <td class="btns">
                                    <a href="#" title="담기" class="btn-img btn-album" onclick="login()">담기</a>
                                </td>
                                <td class="btns">
                                    <a href="#" title="다운" class="btn-img btn-down" onclick="login()">다운</a>
                                </td>
                                <td class="btns">
                                    <a href="#" title="뮤비" class="btn-img btn-movie">뮤비</a>
                                </td>
                        </tr><!-- tr list -->
                        <tr class="list"> <!-- tr list -->
                            <td class="check"><input type="checkbox" class="select-check" title="Say So"></td>
                            <td class="number">28</td>
                            <td>
                                <a href="#" class="imge">
                                    <span class="mask"></span>
                                    <img src="C:/팀4/사진/지니차트/장르별차트/팝/팝주간/28.jpg" alt="Say So">
                                </a>
                            </td>
                            <td class="info">
                                <a href="#" class="sg songTitle">Say So</a>
                                <a href="#" class="sg songArtist">Doja Cat</a>
                                <!-- <a href="#">가수옆작은화살표</a> 이건 제목옆 토글 -->
                                <!-- <a href="#">화살표옆 앨범타이틀</a> -->
                            </td>
                            <td class="btns">
                                    <a href="#" title="재생" class="btn-img btn-listen" onclick="play_one(28)">듣기</a>
                                </td>
                                <td class="btns">
                                    <a href="#" title="추가" class="btn-img btn-add" onclick="play_list(28)">추가</a>
                                </td>
                                <td class="btns">
                                    <a href="#" title="담기" class="btn-img btn-album" onclick="login()">담기</a>
                                </td>
                                <td class="btns">
                                    <a href="#" title="다운" class="btn-img btn-down" onclick="login()">다운</a>
                                </td>
                                <td class="btns">
                                    <a href="#" title="뮤비" class="btn-img btn-movie">뮤비</a>
                                </td>
                        </tr><!-- tr list -->
                        <tr class="list"> <!-- tr list -->
                            <td class="check"><input type="checkbox" class="select-check" title="ROXANNE"></td>
                            <td class="number">29</td>
                            <td>
                                <a href="#" class="imge">
                                    <span class="mask"></span>
                                    <img src="C:/팀4/사진/지니차트/장르별차트/팝/팝주간/29.jpg" alt="ROXANNE">
                                </a>
                            </td>
                            <td class="info">
                                <a href="#" class="sg songTitle">ROXANNE</a>
                                <a href="#" class="sg songArtist">Arizona Zervas</a>
                                <!-- <a href="#">가수옆작은화살표</a> 이건 제목옆 토글 -->
                                <!-- <a href="#">화살표옆 앨범타이틀</a> -->
                            </td>
                            <td class="btns">
                                <a href="#" title="재생" class="btn-img btn-listen" onclick="play_one(29)">듣기</a>
                            </td>
                            <td class="btns">
                                <a href="#" title="추가" class="btn-img btn-add" onclick="play_list(29)">추가</a>
                            </td>
                            <td class="btns">
                                <a href="#" title="담기" class="btn-img btn-album" onclick="login()">담기</a>
                            </td>
                            <td class="btns">
                                <a href="#" title="다운" class="btn-img btn-down" onclick="login()">다운</a>
                            </td>
                            <td class="btns">
                                <a href="#" title="뮤비" class="btn-img btn-movie">뮤비</a>
                            </td>
                            </tr><!-- tr list -->
                            <tr class="list">
                                <!-- tr list -->
                                <td class="check"><input type="checkbox" class="select-check" title="Holy (Feat. Chance The Rapper)"></td>
                                <td class="number">30</td>
                                <td>
                                    <a href="#" class="imge">
                                        <span class="mask"></span>
                                        <img src="C:/팀4/사진/지니차트/장르별차트/팝/팝주간/30.jpg" alt="Holy (Feat. Chance The Rapper)">
                                    </a>
                                </td>
                                <td class="info">
                                    <a href="#" class="sg songTitle">Holy (Feat. Chance The Rapper)</a>
                                    <a href="#" class="sg songArtist">Justin Bieber</a>
                                    <!-- <a href="#">가수옆작은화살표</a> 이건 제목옆 토글 -->
                                    <!-- <a href="#">화살표옆 앨범타이틀</a> -->
                                </td>
                                <td class="btns">
                                    <a href="#" title="재생" class="btn-img btn-listen" onclick="play_one(30)">듣기</a>
                                </td>
                                <td class="btns">
                                    <a href="#" title="추가" class="btn-img btn-add" onclick="play_list(30)">추가</a>
                                </td>
                                <td class="btns">
                                    <a href="#" title="담기" class="btn-img btn-album" onclick="login()">담기</a>
                                </td>
                                <td class="btns">
                                    <a href="#" title="다운" class="btn-img btn-down" onclick="login()">다운</a>
                                </td>
                                <td class="btns">
                                    <a href="#" title="뮤비" class="btn-img btn-movie">뮤비</a>
                                </td>
                                <!--<ul class="more-list">
                                                                                                                                                                                                                <li><a href="#" class="item" title="공유">공유하기/음악나누기</a></li>
                                                                                                                                                                                                                <li><a href="#" class="item" title="선물">선물하기</a></li>
                                                                                                                                                                                                            </ul>-->
                                </div>
                                </td>
                            </tr><!-- tr list -->
                    </tbody>
                </table><!-- list-wrap -->
            </div> <!-- song-list-wrap -->
        </div><!-- song-list -->
        <div class="page-nav">
            <a href="#">1 ~ 50 위</a>
            <a href="#">51~100 위</a>
            <a href="#">101~150 위</a>
            <a href="#">151~200 위</a>
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