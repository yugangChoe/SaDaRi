<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="/Genie_Project/css/Genie.css" rel="stylesheet" type="text/css">
<title>Chart_genre_OST_day</title>
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
        <div class="wrap-head" style="z-index: 90;">
            <div class="head-list">
                <h1 class="logo">
                    <a href="#">
                        홈으로가기
                    </a>
                </h1>
                <div class="gnb">
                    <!-- gnb -->
                    <ul class="menu-list clearfix" id="main_menu">
                        <li>
                            <!-- 지니차트 -->
                            <a href="Chart_top200_present.jsp" class="gnb-menu">지니차트</a>
                            <div class="sub_menu" style=" width: 48%;">
                                <ul id="sub_menu_chart">
                                    <li>
                                        <a href="Chart_top200_present.jsp">TOP200</a>
                                    </li>
                                    <li>
                                        <a href="Chart_genre_kpop_day.jsp">장르별 차트</a>
                                    </li>
                                    <li>
                                        <a href="Chart_MV_day.jsp">뮤직비디오 차트</a>
                                    </li>
                                </ul>
                            </div>
                        </li>
                        <!-- 지니차트끝 -->

                        <li>
                            <!-- 최신음악 -->
                            <a href="Newest_song_hot.jsp" class="gnb-menu">최신음악</a>
                            <div class="sub_menu" style="width: 38%;">
                                <ul id="sub_menu_newest">
                                    <li>
                                        <a href="Newest_song_hot.jsp">최신 곡</a>
                                    </li>
                                    <li>
                                        <a href="Newest_album_hot.jsp">최신 앨범</a>
                                    </li>
                                </ul>
                            </div>
                        </li>
                        <!-- 최신음악 끝-->

                        <li>
                            <!-- 장르음악 -->
                            <a href="Genre_kpop_all.jsp" class="gnb-menu">장르음악</a>
                            <div class="sub_menu" style="width: 24%;">
                                <ul id="sub_menu_genre">
                                    <li>
                                        <a href="Genre_kpop_all.jsp">가요</a>
                                    </li>
                                    <li>
                                        <a href="Genre_pop_all.jsp">POP</a>
                                    </li>
                                    <li>
                                        <a href="Genre_OST_all.jsp">OST</a>
                                    </li>
                                    <li>
                                        <a href="Genre_trot.jsp">트롯</a>
                                    </li>
                                </ul>
                            </div>
                        </li>
                        <!-- 장르음악 끝-->
                        <div class="gnb_my">
                            <button type="button" onclick="login()" class="gnb_btn">로그인/회원가입</button>
                            <div id="login_list">
                                <ul class="list_login">
                                    <li>
                                        <div>
                                            <input placeholder="아이디" size="25"></div>
                                        </li>
                                        <li>
                                            <div>
                                                <input placeholder="비밀번호" size="25"></div>
                                            </li>
                                        </ul>
                                        <!-- list_login -->
                                        <div class="login-form">
                                            <a
                                                href="#"
                                                class="btn-login"
                                                title="새창 열림"
                                                onclick="loginPopup(); return false;">
                                                <span class="txt">
                                                    <span class="hide">genie</span>로그인</span>
                                            </a>
                                            <div class="btns clearfix">
                                                <a href="//www.genie.co.kr/member/find/findId">아이디/비밀번호 찾기</a>
                                                <a href="//www.genie.co.kr/member/signUp" class="text-bold">회원가입</a>
                                            </div>
                                            <!-- btns clearfix -->
                                        </div>
                                        <!-- login-form -->
                                        <button type="button" onclick="login()" class="gnb_btn">닫기</button>
                                    </div>
                                    <!-- login_list -->
                                </div>
                                <!--gnb_my -->
                            </ul>
                            <!-- menu-list -->
                        </div>
                        <!-- gnb -->
                    </div>
                    <!-- head-list -->
                </div>
                <!-- wrap-header -->

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
                    <span id="inc_date">2020.09.29</span>
                </h3>
                <a href="#">
                    <img src="C:/팀4/사진/이미지/time.png" alt="시간 보기">
                </a>
            </div><!-- date -->
            <ul class="select-term">
                <li><a href="/Genie_Project/G_servlet?command=Chart_genre_OST_day" class="radius ">일간</a></li>
                <li><a href="/Genie_Project/G_servlet?command=Chart_genre_OST_week" class="radius ">주간</a></li>
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
                            <td class="check"><input type="checkbox" class="select-check" title="밤하늘의 저 별처럼"></td>
                            <td class="number">1</td>
                            <td>
                                <a href="#" class="imge">
                                    <span class="mask"></span>
                                    <img src="C:팀4/사진/지니차트/장르별차트/OST일/1.jpg" alt="밤하늘의 저 별처럼">
                                </a>
                            </td>
                            <td class="info">
                                <a href="#" class="sg songTitle">밤하늘의 저 별처럼</a>
                                <a href="#" class="sg songArtist">헤이즈</a>
                                <!-- <a href="#">가수옆작은화살표</a> 이건 제목옆 토글 -->
                                <!-- <a href="#">화살표옆 앨범타이틀</a> -->
                            </td>
                            <td class="btns">
                                <a href="#" title="재생" class="btn-img btn-listen">듣기</a>
                            </td>
                            <td class="btns">
                                <a href="#" title="추가" class="btn-img btn-add">추가</a>
                            </td>
                            <td class="btns">
                                <a href="#" title="담기" class="btn-img btn-album">담기</a>
                            </td>
                            <td class="btns">
                                <a href="#" title="다운" class="btn-img btn-down">다운</a>
                            </td>
                            <td class="btns">
                                <a href="#" title="뮤비" class="btn-img btn-movie">뮤비</a>
                            </td>
                        </tr><!-- tr list -->
                        <tr class="list"> <!-- tr list -->
                            <td class="check"><input type="checkbox" class="select-check" title="아로하"></td>
                            <td class="number">2</td>
                            <td>
                                <a href="#" class="imge">
                                    <span class="mask"></span>
                                    <img src="C:팀4/사진/지니차트/장르별차트/OST일/2.jpg" alt="아로하">
                                </a>
                            </td>
                            <td class="info">
                                <a href="#" class="sg songTitle">아로하</a>
                                <a href="#" class="sg songArtist">조정석</a>
                                <!-- <a href="#">가수옆작은화살표</a> 이건 제목옆 토글 -->
                                <!-- <a href="#">화살표옆 앨범타이틀</a> -->
                            </td>
                            <td class="btns">
                                <a href="#" title="재생" class="btn-img btn-listen">듣기</a>
                            </td>
                            <td class="btns">
                                <a href="#" title="추가" class="btn-img btn-add">추가</a>
                            </td>
                            <td class="btns">
                                <a href="#" title="담기" class="btn-img btn-album">담기</a>
                            </td>
                            <td class="btns">
                                <a href="#" title="다운" class="btn-img btn-down">다운</a>
                            </td>
                            <td class="btns">
                                <a href="#" title="뮤비" class="btn-img btn-movie">뮤비</a>
                            </td>
                        </tr><!-- tr list -->
                        <tr class="list"> <!-- tr list -->
                            <td class="check"><input type="checkbox" class="select-check" title="내일은 고백할게"></td>
                            <td class="number">3</td>
                            <td>
                                <a href="#" class="imge">
                                    <span class="mask"></span>
                                    <img src="C:팀4/사진/지니차트/장르별차트/OST일/3.jpg" alt="내일은 고백할게">
                                </a>
                            </td>
                            <td class="info">
                                <a href="#" class="sg songTitle">내일은 고백할게</a>
                                <a href="#" class="sg songArtist">태연</a>
                                <!-- <a href="#">가수옆작은화살표</a> 이건 제목옆 토글 -->
                                <!-- <a href="#">화살표옆 앨범타이틀</a> -->
                            </td>
                            <td class="btns">
                                <a href="#" title="재생" class="btn-img btn-listen">듣기</a>
                            </td>
                            <td class="btns">
                                <a href="#" title="추가" class="btn-img btn-add">추가</a>
                            </td>
                            <td class="btns">
                                <a href="#" title="담기" class="btn-img btn-album">담기</a>
                            </td>
                            <td class="btns">
                                <a href="#" title="다운" class="btn-img btn-down">다운</a>
                            </td>
                            <td class="btns">
                                <a href="#" title="뮤비" class="btn-img btn-movie">뮤비</a>
                            </td>
                        </tr><!-- tr list -->
                        <tr class="list"> <!-- tr list -->
                            <td class="check"><input type="checkbox" class="select-check" title="흔들리는 꽃들 속에서 네 샴퓨향이 느껴진거야"></td>
                            <td class="number">4</td>
                            <td>
                                <a href="#" class="imge">
                                    <span class="mask"></span>
                                    <img src="C:팀4/사진/지니차트/장르별차트/OST일/4.jpg" alt="흔들리는 꽃들 속에서 네 샴퓨향이 느껴진거야">
                                </a>
                            </td>
                            <td class="info">
                                <a href="#" class="sg songTitle">흔들리는 꽃들 속에서 네 샴퓨향이 느껴진거야</a>
                                <a href="#" class="sg songArtist">장범준</a>
                                <!-- <a href="#">가수옆작은화살표</a> 이건 제목옆 토글 -->
                                <!-- <a href="#">화살표옆 앨범타이틀</a> -->
                            </td>
                            <td class="btns">
                                <a href="#" title="재생" class="btn-img btn-listen">듣기</a>
                            </td>
                            <td class="btns">
                                <a href="#" title="추가" class="btn-img btn-add">추가</a>
                            </td>
                            <td class="btns">
                                <a href="#" title="담기" class="btn-img btn-album">담기</a>
                            </td>
                            <td class="btns">
                                <a href="#" title="다운" class="btn-img btn-down">다운</a>
                            </td>
                            <td class="btns">
                                <a href="#" title="뮤비" class="btn-img btn-movie">뮤비</a>
                            </td>
                        </tr><!-- tr list -->
                        <tr class="list"> <!-- tr list -->
                            <td class="check"><input type="checkbox" class="select-check" title="모든날, 모든 순간"></td>
                            <td class="number">5</td>
                            <td>
                                <a href="#" class="imge">
                                    <span class="mask"></span>
                                    <img src="C:팀4/사진/지니차트/장르별차트/OST일/5.jpg" alt="모든날, 모든 순간">
                                </a>
                            </td>
                            <td class="info">
                                <a href="#" class="sg songTitle">모든날, 모든 순간</a>
                                <a href="#" class="sg songArtist">폴킴</a>
                                <!-- <a href="#">가수옆작은화살표</a> 이건 제목옆 토글 -->
                                <!-- <a href="#">화살표옆 앨범타이틀</a> -->
                            </td>
                            <td class="btns">
                                <a href="#" title="재생" class="btn-img btn-listen">듣기</a>
                            </td>
                            <td class="btns">
                                <a href="#" title="추가" class="btn-img btn-add">추가</a>
                            </td>
                            <td class="btns">
                                <a href="#" title="담기" class="btn-img btn-album">담기</a>
                            </td>
                            <td class="btns">
                                <a href="#" title="다운" class="btn-img btn-down">다운</a>
                            </td>
                            <td class="btns">
                                <a href="#" title="뮤비" class="btn-img btn-movie">뮤비</a>
                            </td>
                        </tr><!-- tr list -->
                        <tr class="list"> <!-- tr list -->
                            <td class="check"><input type="checkbox" class="select-check" title="사랑하게 될 줄 알았어"></td>
                            <td class="number">6</td>
                            <td>
                                <a href="#" class="imge">
                                    <span class="mask"></span>
                                    <img src="C:팀4/사진/지니차트/장르별차트/OST일/6.jpg" alt="사랑하게 될 줄 알았어">
                                </a>
                            </td>
                            <td class="info">
                                <a href="#" class="sg songTitle">사랑하게 될 줄 알았어</a>
                                <a href="#" class="sg songArtist">전미도</a>
                                <!-- <a href="#">가수옆작은화살표</a> 이건 제목옆 토글 -->
                                <!-- <a href="#">화살표옆 앨범타이틀</a> -->
                            </td>
                            <td class="btns">
                                <a href="#" title="재생" class="btn-img btn-listen">듣기</a>
                            </td>
                            <td class="btns">
                                <a href="#" title="추가" class="btn-img btn-add">추가</a>
                            </td>
                            <td class="btns">
                                <a href="#" title="담기" class="btn-img btn-album">담기</a>
                            </td>
                            <td class="btns">
                                <a href="#" title="다운" class="btn-img btn-down">다운</a>
                            </td>
                            <td class="btns">
                                <a href="#" title="뮤비" class="btn-img btn-movie">뮤비</a>
                            </td>
                        </tr><!-- tr list -->
                        <tr class="list"> <!-- tr list -->
                            <td class="check"><input type="checkbox" class="select-check" title="나의 시간은"></td>
                            <td class="number">7</td>
                            <td>
                                <a href="#" class="imge">
                                    <span class="mask"></span>
                                    <img src="C:팀4/사진/지니차트/장르별차트/OST일/7.jpg" alt="나의 시간은">
                                </a>
                            </td>
                            <td class="info">
                                <a href="#" class="sg songTitle">나의 시간은</a>
                                <a href="#" class="sg songArtist">백현</a>
                                <!-- <a href="#">가수옆작은화살표</a> 이건 제목옆 토글 -->
                                <!-- <a href="#">화살표옆 앨범타이틀</a> -->
                            </td>
                            <td class="btns">
                                <a href="#" title="재생" class="btn-img btn-listen">듣기</a>
                            </td>
                            <td class="btns">
                                <a href="#" title="추가" class="btn-img btn-add">추가</a>
                            </td>
                            <td class="btns">
                                <a href="#" title="담기" class="btn-img btn-album">담기</a>
                            </td>
                            <td class="btns">
                                <a href="#" title="다운" class="btn-img btn-down">다운</a>
                            </td>
                            <td class="btns">
                                <a href="#" title="뮤비" class="btn-img btn-movie">뮤비</a>
                            </td>
                        </tr><!-- tr list -->
                        <tr class="list"> <!-- tr list -->
                            <td class="check"><input type="checkbox" class="select-check" title="안녕"></td>
                            <td class="number">8</td>
                            <td>
                                <a href="#" class="imge">
                                    <span class="mask"></span>
                                    <img src="C:팀4/사진/지니차트/장르별차트/OST일/8.jpg" alt="안녕">
                                </a>
                            </td>
                            <td class="info">
                                <a href="#" class="sg songTitle">안녕</a>
                                <a href="#" class="sg songArtist">폴킴</a>
                                <!-- <a href="#">가수옆작은화살표</a> 이건 제목옆 토글 -->
                                <!-- <a href="#">화살표옆 앨범타이틀</a> -->
                            </td>
                            <td class="btns">
                                <a href="#" title="재생" class="btn-img btn-listen">듣기</a>
                            </td>
                            <td class="btns">
                                <a href="#" title="추가" class="btn-img btn-add">추가</a>
                            </td>
                            <td class="btns">
                                <a href="#" title="담기" class="btn-img btn-album">담기</a>
                            </td>
                            <td class="btns">
                                <a href="#" title="다운" class="btn-img btn-down">다운</a>
                            </td>
                            <td class="btns">
                                <a href="#" title="뮤비" class="btn-img btn-movie">뮤비</a>
                            </td>
                        </tr><!-- tr list -->
                        <tr class="list"> <!-- tr list -->
                            <td class="check"><input type="checkbox" class="select-check" title="시작"></td>
                            <td class="number">9</td>
                            <td>
                                <a href="#" class="imge">
                                    <span class="mask"></span>
                                    <img src="C:팀4/사진/지니차트/장르별차트/OST일/9.jpg" alt="시작">
                                </a>
                            </td>
                            <td class="info">
                                <a href="#" class="sg songTitle">시작</a>
                                <a href="#" class="sg songArtist">가호</a>
                                <!-- <a href="#">가수옆작은화살표</a> 이건 제목옆 토글 -->
                                <!-- <a href="#">화살표옆 앨범타이틀</a> -->
                            </td>
                            <td class="btns">
                                <a href="#" title="재생" class="btn-img btn-listen">듣기</a>
                            </td>
                            <td class="btns">
                                <a href="#" title="추가" class="btn-img btn-add">추가</a>
                            </td>
                            <td class="btns">
                                <a href="#" title="담기" class="btn-img btn-album">담기</a>
                            </td>
                            <td class="btns">
                                <a href="#" title="다운" class="btn-img btn-down">다운</a>
                            </td>
                            <td class="btns">
                                <a href="#" title="뮤비" class="btn-img btn-movie">뮤비</a>
                            </td>
                        </tr><!-- tr list -->
                        <tr class="list"> <!-- tr list -->
                            <td class="check"><input type="checkbox" class="select-check" title="마음을 드려요"></td>
                            <td class="number">10</td>
                            <td>
                                <a href="#" class="imge">
                                    <span class="mask"></span>
                                    <img src="C:팀4/사진/지니차트/장르별차트/OST일/10.jpg" alt="마음을 드려요">
                                </a>
                            </td>
                            <td class="info">
                                <a href="#" class="sg songTitle">마음을 드려요</a>
                                <a href="#" class="sg songArtist">아이유</a>
                                <!-- <a href="#">가수옆작은화살표</a> 이건 제목옆 토글 -->
                                <!-- <a href="#">화살표옆 앨범타이틀</a> -->
                            </td>
                            <td class="btns">
                                <a href="#" title="재생" class="btn-img btn-listen">듣기</a>
                            </td>
                            <td class="btns">
                                <a href="#" title="추가" class="btn-img btn-add">추가</a>
                            </td>
                            <td class="btns">
                                <a href="#" title="담기" class="btn-img btn-album">담기</a>
                            </td>
                            <td class="btns">
                                <a href="#" title="다운" class="btn-img btn-down">다운</a>
                            </td>
                            <td class="btns">
                                <a href="#" title="뮤비" class="btn-img btn-movie">뮤비</a>
                            </td>
                        </tr><!-- tr list -->
                        <tr class="list"> <!-- tr list -->
                            <td class="check"><input type="checkbox" class="select-check" title="좋은 사람 있으면 소개시켜줘"></td>
                            <td class="number">11</td>
                            <td>
                                <a href="#" class="imge">
                                    <span class="mask"></span>
                                    <img src="C:팀4/사진/지니차트/장르별차트/OST일/11.jpg" alt="좋은 사람 있으면 소개시켜줘">
                                </a>
                            </td>
                            <td class="info">
                                <a href="#" class="sg songTitle">좋은 사람 있으면 소개시켜줘</a>
                                <a href="#" class="sg songArtist">조이</a>
                                <!-- <a href="#">가수옆작은화살표</a> 이건 제목옆 토글 -->
                                <!-- <a href="#">화살표옆 앨범타이틀</a> -->
                            </td>
                            <td class="btns">
                                <a href="#" title="재생" class="btn-img btn-listen">듣기</a>
                            </td>
                            <td class="btns">
                                <a href="#" title="추가" class="btn-img btn-add">추가</a>
                            </td>
                            <td class="btns">
                                <a href="#" title="담기" class="btn-img btn-album">담기</a>
                            </td>
                            <td class="btns">
                                <a href="#" title="다운" class="btn-img btn-down">다운</a>
                            </td>
                            <td class="btns">
                                <a href="#" title="뮤비" class="btn-img btn-movie">뮤비</a>
                            </td>
                        </tr><!-- tr list -->
                        <tr class="list"> <!-- tr list -->
                            <td class="check"><input type="checkbox" class="select-check" title="아직 너의 시간에 살아"></td>
                            <td class="number">12</td>
                            <td>
                                <a href="#" class="imge">
                                    <span class="mask"></span>
                                    <img src="C:팀4/사진/지니차트/장르별차트/OST일/12.jpg" alt="아직 너의 시간에 살아">
                                </a>
                            </td>
                            <td class="info">
                                <a href="#" class="sg songTitle">아직 너의 시간에 살아</a>
                                <a href="#" class="sg songArtist">이수현</a>
                                <!-- <a href="#">가수옆작은화살표</a> 이건 제목옆 토글 -->
                                <!-- <a href="#">화살표옆 앨범타이틀</a> -->
                            </td>
                            <td class="btns">
                                <a href="#" title="재생" class="btn-img btn-listen">듣기</a>
                            </td>
                            <td class="btns">
                                <a href="#" title="추가" class="btn-img btn-add">추가</a>
                            </td>
                            <td class="btns">
                                <a href="#" title="담기" class="btn-img btn-album">담기</a>
                            </td>
                            <td class="btns">
                                <a href="#" title="다운" class="btn-img btn-down">다운</a>
                            </td>
                            <td class="btns">
                                <a href="#" title="뮤비" class="btn-img btn-movie">뮤비</a>
                            </td>
                        </tr><!-- tr list -->
                        <tr class="list"> <!-- tr list -->
                            <td class="check"><input type="checkbox" class="select-check" title="그대라는 시"></td>
                            <td class="number">13</td>
                            <td>
                                <a href="#" class="imge">
                                    <span class="mask"></span>
                                    <img src="C:팀4/사진/지니차트/장르별차트/OST일/13.jpg" alt="그대라는 시">
                                </a>
                            </td>
                            <td class="info">
                                <a href="#" class="sg songTitle">그대라는 시</a>
                                <a href="#" class="sg songArtist">태연</a>
                                <!-- <a href="#">가수옆작은화살표</a> 이건 제목옆 토글 -->
                                <!-- <a href="#">화살표옆 앨범타이틀</a> -->
                            </td>
                            <td class="btns">
                                <a href="#" title="재생" class="btn-img btn-listen">듣기</a>
                            </td>
                            <td class="btns">
                                <a href="#" title="추가" class="btn-img btn-add">추가</a>
                            </td>
                            <td class="btns">
                                <a href="#" title="담기" class="btn-img btn-album">담기</a>
                            </td>
                            <td class="btns">
                                <a href="#" title="다운" class="btn-img btn-down">다운</a>
                            </td>
                            <td class="btns">
                                <a href="#" title="뮤비" class="btn-img btn-movie">뮤비</a>
                            </td>
                        </tr><!-- tr list -->
                        <tr class="list"> <!-- tr list -->
                            <td class="check"><input type="checkbox" class="select-check" title="너에게 난, 나에게 넌"></td>
                            <td class="number">14</td>
                            <td>
                                <a href="#" class="imge">
                                    <span class="mask"></span>
                                    <img src="C:팀4/사진/지니차트/장르별차트/OST일/14.jpg" alt="너에게 난, 나에게 넌">
                                </a>
                            </td>
                            <td class="info">
                                <a href="#" class="sg songTitle">너에게 난, 나에게 넌</a>
                                <a href="#" class="sg songArtist">미도와파라솔</a>
                                <!-- <a href="#">가수옆작은화살표</a> 이건 제목옆 토글 -->
                                <!-- <a href="#">화살표옆 앨범타이틀</a> -->
                            </td>
                            <td class="btns">
                                <a href="#" title="재생" class="btn-img btn-listen">듣기</a>
                            </td>
                            <td class="btns">
                                <a href="#" title="추가" class="btn-img btn-add">추가</a>
                            </td>
                            <td class="btns">
                                <a href="#" title="담기" class="btn-img btn-album">담기</a>
                            </td>
                            <td class="btns">
                                <a href="#" title="다운" class="btn-img btn-down">다운</a>
                            </td>
                            <td class="btns">
                                <a href="#" title="뮤비" class="btn-img btn-movie">뮤비</a>
                            </td>
                        </tr><!-- tr list -->
                        <tr class="list"> <!-- tr list -->
                            <td class="check"><input type="checkbox" class="select-check" title="화려하지 않은 고백"></td>
                            <td class="number">15</td>
                            <td>
                                <a href="#" class="imge">
                                    <span class="mask"></span>
                                    <img src="C:팀4/사진/지니차트/장르별차트/OST일/15.jpg" alt="화려하지 않은 고백">
                                </a>
                            </td>
                            <td class="info">
                                <a href="#" class="sg songTitle">화려하지 않은 고백</a>
                                <a href="#" class="sg songArtist">규현</a>
                                <!-- <a href="#">가수옆작은화살표</a> 이건 제목옆 토글 -->
                                <!-- <a href="#">화살표옆 앨범타이틀</a> -->
                            </td>
                            <td class="btns">
                                <a href="#" title="재생" class="btn-img btn-listen">듣기</a>
                            </td>
                            <td class="btns">
                                <a href="#" title="추가" class="btn-img btn-add">추가</a>
                            </td>
                            <td class="btns">
                                <a href="#" title="담기" class="btn-img btn-album">담기</a>
                            </td>
                            <td class="btns">
                                <a href="#" title="다운" class="btn-img btn-down">다운</a>
                            </td>
                            <td class="btns">
                                <a href="#" title="뮤비" class="btn-img btn-movie">뮤비</a>
                            </td>
                        </tr><!-- tr list -->
                        <tr class="list"> <!-- tr list -->
                            <td class="check"><input type="checkbox" class="select-check" title="내 눈물 모아"></td>
                            <td class="number">16</td>
                            <td>
                                <a href="#" class="imge">
                                    <span class="mask"></span>
                                    <img src="C:팀4/사진/지니차트/장르별차트/OST일/16.jpg" alt="내 눈물 모아">
                                </a>
                            </td>
                            <td class="info">
                                <a href="#" class="sg songTitle">내 눈물 모아</a>
                                <a href="#" class="sg songArtist">휘인</a>
                                <!-- <a href="#">가수옆작은화살표</a> 이건 제목옆 토글 -->
                                <!-- <a href="#">화살표옆 앨범타이틀</a> -->
                            </td>
                            <td class="btns">
                                <a href="#" title="재생" class="btn-img btn-listen">듣기</a>
                            </td>
                            <td class="btns">
                                <a href="#" title="추가" class="btn-img btn-add">추가</a>
                            </td>
                            <td class="btns">
                                <a href="#" title="담기" class="btn-img btn-album">담기</a>
                            </td>
                            <td class="btns">
                                <a href="#" title="다운" class="btn-img btn-down">다운</a>
                            </td>
                            <td class="btns">
                                <a href="#" title="뮤비" class="btn-img btn-movie">뮤비</a>
                            </td>
                        </tr><!-- tr list -->
                        <tr class="list"> <!-- tr list -->
                            <td class="check"><input type="checkbox" class="select-check" title="기억해줘요 내모든 날과 그때를"></td>
                            <td class="number">17</td>
                            <td>
                                <a href="#" class="imge">
                                    <span class="mask"></span>
                                    <img src="C:팀4/사진/지니차트/장르별차트/OST일/17.jpg" alt="기억해줘요 내모든 날과 그때를">
                                </a>
                            </td>
                            <td class="info">
                                <a href="#" class="sg songTitle">기억해줘요 내 모든 날과 그때를</a>
                                <a href="#" class="sg songArtist">거미</a>
                                <!-- <a href="#">가수옆작은화살표</a> 이건 제목옆 토글 -->
                                <!-- <a href="#">화살표옆 앨범타이틀</a> -->
                            </td>
                            <td class="btns">
                                <a href="#" title="재생" class="btn-img btn-listen">듣기</a>
                            </td>
                            <td class="btns">
                                <a href="#" title="추가" class="btn-img btn-add">추가</a>
                            </td>
                            <td class="btns">
                                <a href="#" title="담기" class="btn-img btn-album">담기</a>
                            </td>
                            <td class="btns">
                                <a href="#" title="다운" class="btn-img btn-down">다운</a>
                            </td>
                            <td class="btns">
                                <a href="#" title="뮤비" class="btn-img btn-movie">뮤비</a>
                            </td>
                        </tr><!-- tr list -->
                        <tr class="list"> <!-- tr list -->
                            <td class="check"><input type="checkbox" class="select-check" title="돌덩이"></td>
                            <td class="number">18</td>
                            <td>
                                <a href="#" class="imge">
                                    <span class="mask"></span>
                                    <img src="C:팀4/사진/지니차트/장르별차트/OST일/18.jpg" alt="돌덩이">
                                </a>
                            </td>
                            <td class="info">
                                <a href="#" class="sg songTitle">돌덩이</a>
                                <a href="#" class="sg songArtist">하현우</a>
                                <!-- <a href="#">가수옆작은화살표</a> 이건 제목옆 토글 -->
                                <!-- <a href="#">화살표옆 앨범타이틀</a> -->
                            </td>
                            <td class="btns">
                                <a href="#" title="재생" class="btn-img btn-listen">듣기</a>
                            </td>
                            <td class="btns">
                                <a href="#" title="추가" class="btn-img btn-add">추가</a>
                            </td>
                            <td class="btns">
                                <a href="#" title="담기" class="btn-img btn-album">담기</a>
                            </td>
                            <td class="btns">
                                <a href="#" title="다운" class="btn-img btn-down">다운</a>
                            </td>
                            <td class="btns">
                                <a href="#" title="뮤비" class="btn-img btn-movie">뮤비</a>
                            </td>
                        </tr><!-- tr list -->
                        <tr class="list"> <!-- tr list -->
                            <td class="check"><input type="checkbox" class="select-check" title="그때 그 아인"></td>
                            <td class="number">19</td>
                            <td>
                                <a href="#" class="imge">
                                    <span class="mask"></span>
                                    <img src="C:팀4/사진/지니차트/장르별차트/OST일/19.jpg" alt="그때 그 아인">
                                </a>
                            </td>
                            <td class="info">
                                <a href="#" class="sg songTitle">그때 그 아인</a>
                                <a href="#" class="sg songArtist">김필</a>
                                <!-- <a href="#">가수옆작은화살표</a> 이건 제목옆 토글 -->
                                <!-- <a href="#">화살표옆 앨범타이틀</a> -->
                            </td>
                            <td class="btns">
                                <a href="#" title="재생" class="btn-img btn-listen">듣기</a>
                            </td>
                            <td class="btns">
                                <a href="#" title="추가" class="btn-img btn-add">추가</a>
                            </td>
                            <td class="btns">
                                <a href="#" title="담기" class="btn-img btn-album">담기</a>
                            </td>
                            <td class="btns">
                                <a href="#" title="다운" class="btn-img btn-down">다운</a>
                            </td>
                            <td class="btns">
                                <a href="#" title="뮤비" class="btn-img btn-movie">뮤비</a>
                            </td>
                        </tr><!-- tr list -->
                        <tr class="list"> <!-- tr list -->
                            <td class="check"><input type="checkbox" class="select-check" title="첫눈 처럼 너에게 가겠다"></td>
                            <td class="number">20</td>
                            <td>
                                <a href="#" class="imge">
                                    <span class="mask"></span>
                                    <img src="C:팀4/사진/지니차트/장르별차트/OST일/20.jpg" alt="첫눈 처럼 너에게 가겠다">
                                </a>
                            </td>
                            <td class="info">
                                <a href="#" class="sg songTitle">첫눈 처럼 너에게 가겠다</a>
                                <a href="#" class="sg songArtist">에일리</a>
                                <!-- <a href="#">가수옆작은화살표</a> 이건 제목옆 토글 -->
                                <!-- <a href="#">화살표옆 앨범타이틀</a> -->
                            </td>
                            <td class="btns">
                                <a href="#" title="재생" class="btn-img btn-listen">듣기</a>
                            </td>
                            <td class="btns">
                                <a href="#" title="추가" class="btn-img btn-add">추가</a>
                            </td>
                            <td class="btns">
                                <a href="#" title="담기" class="btn-img btn-album">담기</a>
                            </td>
                            <td class="btns">
                                <a href="#" title="다운" class="btn-img btn-down">다운</a>
                            </td>
                            <td class="btns">
                                <a href="#" title="뮤비" class="btn-img btn-movie">뮤비</a>
                            </td>
                        </tr><!-- tr list -->
                        <tr class="list"> <!-- tr list -->
                            <td class="check"><input type="checkbox" class="select-check" title="우연일까"></td>
                            <td class="number">21</td>
                            <td>
                                <a href="#" class="imge">
                                    <span class="mask"></span>
                                    <img src="C:팀4/사진/지니차트/장르별차트/OST일/21.jpg" alt="우연일까">
                                </a>
                            </td>
                            <td class="info">
                                <a href="#" class="sg songTitle">우연일까</a>
                                <a href="#" class="sg songArtist">하성운</a>
                                <!-- <a href="#">가수옆작은화살표</a> 이건 제목옆 토글 -->
                                <!-- <a href="#">화살표옆 앨범타이틀</a> -->
                            </td>
                            <td class="btns">
                                <a href="#" title="재생" class="btn-img btn-listen">듣기</a>
                            </td>
                            <td class="btns">
                                <a href="#" title="추가" class="btn-img btn-add">추가</a>
                            </td>
                            <td class="btns">
                                <a href="#" title="담기" class="btn-img btn-album">담기</a>
                            </td>
                            <td class="btns">
                                <a href="#" title="다운" class="btn-img btn-down">다운</a>
                            </td>
                            <td class="btns">
                                <a href="#" title="뮤비" class="btn-img btn-movie">뮤비</a>
                            </td>
                        </tr><!-- tr list -->
                        <tr class="list"> <!-- tr list -->
                            <td class="check"><input type="checkbox" class="select-check" title="그대 고운 내사랑"></td>
                            <td class="number">22</td>
                            <td>
                                <a href="#" class="imge">
                                    <span class="mask"></span>
                                    <img src="C:팀4/사진/지니차트/장르별차트/OST일/22.jpg" alt="그대 고운 내사랑">
                                </a>
                            </td>
                            <td class="info">
                                <a href="#" class="sg songTitle">그대 고운 내사랑</a>
                                <a href="#" class="sg songArtist">어반자카파</a>
                                <!-- <a href="#">가수옆작은화살표</a> 이건 제목옆 토글 -->
                                <!-- <a href="#">화살표옆 앨범타이틀</a> -->
                            </td>
                            <td class="btns">
                                <a href="#" title="재생" class="btn-img btn-listen">듣기</a>
                            </td>
                            <td class="btns">
                                <a href="#" title="추가" class="btn-img btn-add">추가</a>
                            </td>
                            <td class="btns">
                                <a href="#" title="담기" class="btn-img btn-album">담기</a>
                            </td>
                            <td class="btns">
                                <a href="#" title="다운" class="btn-img btn-down">다운</a>
                            </td>
                            <td class="btns">
                                <a href="#" title="뮤비" class="btn-img btn-movie">뮤비</a>
                            </td>
                        </tr><!-- tr list -->
                        <tr class="list"> <!-- tr list -->
                            <td class="check"><input type="checkbox" class="select-check" title="다시 난 여기"></td>
                            <td class="number">23</td>
                            <td>
                                <a href="#" class="imge">
                                    <span class="mask"></span>
                                    <img src="C:팀4/사진/지니차트/장르별차트/OST일/23.jpg" alt="다시 난 여기">
                                </a>
                            </td>
                            <td class="info">
                                <a href="#" class="sg songTitle">다시 난 여기</a>
                                <a href="#" class="sg songArtist">백예린</a>
                                <!-- <a href="#">가수옆작은화살표</a> 이건 제목옆 토글 -->
                                <!-- <a href="#">화살표옆 앨범타이틀</a> -->
                            </td>
                            <td class="btns">
                                <a href="#" title="재생" class="btn-img btn-listen">듣기</a>
                            </td>
                            <td class="btns">
                                <a href="#" title="추가" class="btn-img btn-add">추가</a>
                            </td>
                            <td class="btns">
                                <a href="#" title="담기" class="btn-img btn-album">담기</a>
                            </td>
                            <td class="btns">
                                <a href="#" title="다운" class="btn-img btn-down">다운</a>
                            </td>
                            <td class="btns">
                                <a href="#" title="뮤비" class="btn-img btn-movie">뮤비</a>
                            </td>
                        </tr><!-- tr list -->
                        <tr class="list"> <!-- tr list -->
                            <td class="check"><input type="checkbox" class="select-check" title="어떤 날엔"></td>
                            <td class="number">24</td>
                            <td>
                                <a href="#" class="imge">
                                    <span class="mask"></span>
                                    <img src="C:팀4/사진/지니차트/장르별차트/OST일/24.jpg" alt="어떤 날엔">
                                </a>
                            </td>
                            <td class="info">
                                <a href="#" class="sg songTitle">어떤 날엔</a>
                                <a href="#" class="sg songArtist">김재환</a>
                                <!-- <a href="#">가수옆작은화살표</a> 이건 제목옆 토글 -->
                                <!-- <a href="#">화살표옆 앨범타이틀</a> -->
                            </td>
                            <td class="btns">
                                <a href="#" title="재생" class="btn-img btn-listen">듣기</a>
                            </td>
                            <td class="btns">
                                <a href="#" title="추가" class="btn-img btn-add">추가</a>
                            </td>
                            <td class="btns">
                                <a href="#" title="담기" class="btn-img btn-album">담기</a>
                            </td>
                            <td class="btns">
                                <a href="#" title="다운" class="btn-img btn-down">다운</a>
                            </td>
                            <td class="btns">
                                <a href="#" title="뮤비" class="btn-img btn-movie">뮤비</a>
                            </td>
                        </tr><!-- tr list -->
                        <tr class="list"> <!-- tr list -->
                            <td class="check"><input type="checkbox" class="select-check" title="너의 모든 순간"></td>
                            <td class="number">25</td>
                            <td>
                                <a href="#" class="imge">
                                    <span class="mask"></span>
                                    <img src="C:팀4/사진/지니차트/장르별차트/OST일/25.jpg" alt="너의 모든 순간">
                                </a>
                            </td>
                            <td class="info">
                                <a href="#" class="sg songTitle">너의 모든 순간</a>
                                <a href="#" class="sg songArtist">성시경</a>
                                <!-- <a href="#">가수옆작은화살표</a> 이건 제목옆 토글 -->
                                <!-- <a href="#">화살표옆 앨범타이틀</a> -->
                            </td>
                            <td class="btns">
                                <a href="#" title="재생" class="btn-img btn-listen">듣기</a>
                            </td>
                            <td class="btns">
                                <a href="#" title="추가" class="btn-img btn-add">추가</a>
                            </td>
                            <td class="btns">
                                <a href="#" title="담기" class="btn-img btn-album">담기</a>
                            </td>
                            <td class="btns">
                                <a href="#" title="다운" class="btn-img btn-down">다운</a>
                            </td>
                            <td class="btns">
                                <a href="#" title="뮤비" class="btn-img btn-movie">뮤비</a>
                            </td>
                        </tr><!-- tr list -->
                        <tr class="list"> <!-- tr list -->
                            <td class="check"><input type="checkbox" class="select-check" title="너를 사랑하고 있어"></td>
                            <td class="number">26</td>
                            <td>
                                <a href="#" class="imge">
                                    <span class="mask"></span>
                                    <img src="C:팀4/사진/지니차트/장르별차트/OST일/26.jpg" alt="너를 사랑하고 있어">
                                </a>
                            </td>
                            <td class="info">
                                <a href="#" class="sg songTitle">너를 사랑하고 있어</a>
                                <a href="#" class="sg songArtist">백현</a>
                                <!-- <a href="#">가수옆작은화살표</a> 이건 제목옆 토글 -->
                                <!-- <a href="#">화살표옆 앨범타이틀</a> -->
                            </td>
                            <td class="btns">
                                <a href="#" title="재생" class="btn-img btn-listen">듣기</a>
                            </td>
                            <td class="btns">
                                <a href="#" title="추가" class="btn-img btn-add">추가</a>
                            </td>
                            <td class="btns">
                                <a href="#" title="담기" class="btn-img btn-album">담기</a>
                            </td>
                            <td class="btns">
                                <a href="#" title="다운" class="btn-img btn-down">다운</a>
                            </td>
                            <td class="btns">
                                <a href="#" title="뮤비" class="btn-img btn-movie">뮤비</a>
                            </td>
                        </tr><!-- tr list -->
                        <tr class="list"> <!-- tr list -->
                            <td class="check"><input type="checkbox" class="select-check" title="나의 어깨에 기대어요"></td>
                            <td class="number">27</td>
                            <td>
                                <a href="#" class="imge">
                                    <span class="mask"></span>
                                    <img src="C:팀4/사진/지니차트/장르별차트/OST일/27.jpg" alt="나의 어깨에 기대어요">
                                </a>
                            </td>
                            <td class="info">
                                <a href="#" class="sg songTitle">나의 어깨에 기대어요</a>
                                <a href="#" class="sg songArtist">10cm</a>
                                <!-- <a href="#">가수옆작은화살표</a> 이건 제목옆 토글 -->
                                <!-- <a href="#">화살표옆 앨범타이틀</a> -->
                            </td>
                            <td class="btns">
                                <a href="#" title="재생" class="btn-img btn-listen">듣기</a>
                            </td>
                            <td class="btns">
                                <a href="#" title="추가" class="btn-img btn-add">추가</a>
                            </td>
                            <td class="btns">
                                <a href="#" title="담기" class="btn-img btn-album">담기</a>
                            </td>
                            <td class="btns">
                                <a href="#" title="다운" class="btn-img btn-down">다운</a>
                            </td>
                            <td class="btns">
                                <a href="#" title="뮤비" class="btn-img btn-movie">뮤비</a>
                            </td>
                        </tr><!-- tr list -->
                        <tr class="list"> <!-- tr list -->
                            <td class="check"><input type="checkbox" class="select-check" title="내 생에 아름다운"></td>
                            <td class="number">28</td>
                            <td>
                                <a href="#" class="imge">
                                    <span class="mask"></span>
                                    <img src="C:팀4/사진/지니차트/장르별차트/OST일/28.jpg" alt="내 생에 아름다운">
                                </a>
                            </td>
                            <td class="info">
                                <a href="#" class="sg songTitle">내 생에 아름다운</a>
                                <a href="#" class="sg songArtist">케이윌</a>
                                <!-- <a href="#">가수옆작은화살표</a> 이건 제목옆 토글 -->
                                <!-- <a href="#">화살표옆 앨범타이틀</a> -->
                            </td>
                            <td class="btns">
                                <a href="#" title="재생" class="btn-img btn-listen">듣기</a>
                            </td>
                            <td class="btns">
                                <a href="#" title="추가" class="btn-img btn-add">추가</a>
                            </td>
                            <td class="btns">
                                <a href="#" title="담기" class="btn-img btn-album">담기</a>
                            </td>
                            <td class="btns">
                                <a href="#" title="다운" class="btn-img btn-down">다운</a>
                            </td>
                            <td class="btns">
                                <a href="#" title="뮤비" class="btn-img btn-movie">뮤비</a>
                            </td>
                        </tr><!-- tr list -->
                        <tr class="list"> <!-- tr list -->
                            <td class="check"><input type="checkbox" class="select-check" title="그리워하면 그댈 만날까봐"></td>
                            <td class="number">29</td>
                            <td>
                                <a href="#" class="imge">
                                    <span class="mask"></span>
                                    <img src="C:팀4/사진/지니차트/장르별차트/OST일/29.jpg" alt="그리워하면 그댈 만날까봐">
                                </a>
                            </td>
                            <td class="info">
                                <a href="#" class="sg songTitle">그리워하면 그댈 만날까봐</a>
                                <a href="#" class="sg songArtist">김나영</a>
                                <!-- <a href="#">가수옆작은화살표</a> 이건 제목옆 토글 -->
                                <!-- <a href="#">화살표옆 앨범타이틀</a> -->
                            </td>
                            <td class="btns">
                                <a href="#" title="재생" class="btn-img btn-listen">듣기</a>
                            </td>
                            <td class="btns">
                                <a href="#" title="추가" class="btn-img btn-add">추가</a>
                            </td>
                            <td class="btns">
                                <a href="#" title="담기" class="btn-img btn-album">담기</a>
                            </td>
                            <td class="btns">
                                <a href="#" title="다운" class="btn-img btn-down">다운</a>
                            </td>
                            <td class="btns">
                                <a href="#" title="뮤비" class="btn-img btn-movie">뮤비</a>
                            </td>
                        </tr><!-- tr list -->
                        <tr class="list"> <!-- tr list -->
                            <td class="check"><input type="checkbox" class="select-check" title="희재"></td>
                            <td class="number">30</td>
                            <td>
                                <a href="#" class="imge">
                                    <span class="mask"></span>
                                    <img src="C:팀4/사진/지니차트/장르별차트/OST일/30.jpg" alt="희재">
                                </a>
                            </td>
                            <td class="info">
                                <a href="#" class="sg songTitle">희재</a>
                                <a href="#" class="sg songArtist">성시경</a>
                                <!-- <a href="#">가수옆작은화살표</a> 이건 제목옆 토글 -->
                                <!-- <a href="#">화살표옆 앨범타이틀</a> -->
                            </td>
                            <td class="btns">
                                <a href="#" title="재생" class="btn-img btn-listen">듣기</a>
                            </td>
                            <td class="btns">
                                <a href="#" title="추가" class="btn-img btn-add">추가</a>
                            </td>
                            <td class="btns">
                                <a href="#" title="담기" class="btn-img btn-album">담기</a>
                            </td>
                            <td class="btns">
                                <a href="#" title="다운" class="btn-img btn-down">다운</a>
                            </td>
                            <td class="btns">
                                <a href="#" title="뮤비" class="btn-img btn-movie">뮤비</a>
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
<div id="wrap-foot" class="footer">
	<div class="ft-info">
        <div class="notice">
            <ul class="link-wrap">
                <li><a href="http://www.geniemusic.co.kr/" target="_blank">회사소개</a></li>
                <li><a href="//www.genie.co.kr/guide/userAgreement">이용약관</a></li>
                <li><a href="//www.genie.co.kr/guide/userPrivacy" class="text-bold">개인정보처리방침</a></li>
                <li><a href="//www.genie.co.kr/guide/teenPrivacy">청소년보호정책</a></li>
                <li><a href="#" onclick="window.open('//www.genie.co.kr/guide/emailNotCollect', 'EmailNotCollect', 'width=400, height=200'); return false;">이메일주소무단수집거부</a></li>
                <li><a href="//www.genie.co.kr/support/service/contact">서비스 이용문의</a></li>
                <li><a href="https://www.geniemusic.co.kr/etc/cooperation.html">제휴 문의</a></li>
            </ul><!-- link-wrap -->
        </div><!-- notice -->
    </div><!-- ft-info -->
    <div class="info-company">
        <h3 class="logo-company">(주)지니뮤직</h3>
        <dl>
            <dd>Project by 4th group</dd>
            <dd>copy from GENIE MUSIC</dd>
        </dl>
        <dl>
            <dt>대표이사</dt>
            <dd>조훈</dd>
            <dt class="hide">주소</dt>
            <dd>서울 강남구 테헤란로415 (L7HOTELS강남타워 6,7,8층)</dd>
            <dt>사업자등록번호</dt>
            <dd>314-81-03453</dd>
            <dt>통신판매일신고</dt>
            <dd>2013-서울강남-01302</dd>
        </dl>
        <dl>
            <dt>개인정보보호책임자</dt>
            <dd>홍세희 본부장</dd>
            <dt>문의전화</dt>
            <dd>1577-5337 <a href="http://www.ftc.go.kr/info/bizinfo/communicationViewPopup.jsp?wrkr_no=3148103453" target="_blank" title="새창 열림" onclick="ow_no('http://www.ftc.go.kr/info/bizinfo/communicationViewPopup.jsp?wrkr_no=3148103453','communicationViewPopup',750,700); return false;">사업자정보확인 &gt;</a></dd>
            <dt>호스팅제공자:</dt>
            <dd>(주)지니뮤직</dd>
            <dt class="hide">카피라이트</dt>
            <dd>COPYRIGHTⓒGENIE MUSIC CORP ALL RIGHTS RESERVED.</dd>
        </dl>
    </div><!-- inf-company -->
</div><!-- wrap-foot -->
</body>
</html>