<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="/Genie_Project/css/Genie.css" rel="stylesheet" type="text/css">
<title>Chart_genre_trot_day</title>
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
                    <span id="inc_date">2020.09.29</span>
                </h3>
                <a href="#">
                    <img src="C:/팀4/사진/이미지/time.png" alt="시간 보기">
                </a>
            </div><!-- date -->
            <ul class="select-term">
                <li><a href="/Genie_Project/G_servlet?command=Chart_genre_trot_day" class="radius ">일간</a></li>
                <li><a href="/Genie_Project/G_servlet?command=Chart_genre_trot_week" class="radius ">주간</a></li>
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
                            <td class="check"><input type="checkbox" class="select-check" title="이젠 나만 믿어요"></td>
                            <td class="number">1</td>
                            <td>
                                <a href="#" class="imge">
                                    <span class="mask"></span>
                                    <img src="C:/팀4/사진/지니차트/장르별차트/트롯/트롯일/1.jpg" alt="이젠 나만 믿어요">
                                </a>
                            </td>
                            <td class="info">
                                <a href="#" class="sg songTitle">이젠 나만 믿어요</a>
                                <a href="#" class="sg songArtist">임영웅</a>
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
                            <td class="check"><input type="checkbox" class="select-check" title="오래된 노래"></td>
                            <td class="number">2</td>
                            <td>
                                <a href="#" class="imge">
                                    <span class="mask"></span>
                                    <img src="C:/팀4/사진/지니차트/장르별차트/트롯/트롯일/2.jpg" alt="오래된 노래">
                                </a>
                            </td>
                            <td class="info">
                                <a href="#" class="sg songTitle">오래된 노래</a>
                                <a href="#" class="sg songArtist">임영웅</a>
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
                            <td class="check"><input type="checkbox" class="select-check" title="만개"></td>
                            <td class="number">3</td>
                            <td>
                                <a href="#" class="imge">
                                    <span class="mask"></span>
                                    <img src="C:/팀4/사진/지니차트/장르별차트/트롯/트롯일/3.jpg" alt="만개">
                                </a>
                            </td>
                            <td class="info">
                                <a href="#" class="sg songTitle">만개</a>
                                <a href="#" class="sg songArtist">김호중</a>
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
                            <td class="check"><input type="checkbox" class="select-check" title="어느 60대 노부부 이야기"></td>
                            <td class="number">4</td>
                            <td>
                                <a href="#" class="imge">
                                    <span class="mask"></span>
                                    <img src="C:/팀4/사진/지니차트/장르별차트/트롯/트롯일/4.jpg" alt="어느 60대 노부부 이야기">
                                </a>
                            </td>
                            <td class="info">
                                <a href="#" class="sg songTitle">어느 60대 노부부 이야기</a>
                                <a href="#" class="sg songArtist">임영웅</a>
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
                            <td class="check"><input type="checkbox" class="select-check" title="바램"></td>
                            <td class="number">5</td>
                            <td>
                                <a href="#" class="imge">
                                    <span class="mask"></span>
                                    <img src="C:/팀4/사진/지니차트/장르별차트/트롯/트롯일/5.jpg" alt="바램">
                                </a>
                            </td>
                            <td class="info">
                                <a href="#" class="sg songTitle">바램</a>
                                <a href="#" class="sg songArtist">임영웅</a>
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
                            <td class="check"><input type="checkbox" class="select-check" title="우산이 없어요"></td>
                            <td class="number">6</td>
                            <td>
                                <a href="#" class="imge">
                                    <span class="mask"></span>
                                    <img src="C:/팀4/사진/지니차트/장르별차트/트롯/트롯일/6.jpg" alt="우산이 없어요">
                                </a>
                            </td>
                            <td class="info">
                                <a href="#" class="sg songTitle">우산이 없어요</a>
                                <a href="#" class="sg songArtist">김호중</a>
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
                            <td class="check"><input type="checkbox" class="select-check" title="그 중에 그대를만나"></td>
                            <td class="number">7</td>
                            <td>
                                <a href="#" class="imge">
                                    <span class="mask"></span>
                                    <img src="C:/팀4/사진/지니차트/장르별차트/트롯/트롯일/7.jpg" alt="그 중에 그대를만나">
                                </a>
                            </td>
                            <td class="info">
                                <a href="#" class="sg songTitle">그 중에 그대를만나</a>
                                <a href="#" class="sg songArtist">임영웅</a>
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
                            <td class="check"><input type="checkbox" class="select-check" title="보라빛 엽서"></td>
                            <td class="number">8</td>
                            <td>
                                <a href="#" class="imge">
                                    <span class="mask"></span>
                                    <img src="C:/팀4/사진/지니차트/장르별차트/트롯/트롯일/8.jpg" alt="보라빛 엽서">
                                </a>
                            </td>
                            <td class="info">
                                <a href="#" class="sg songTitle">보라빛 엽서</a>
                                <a href="#" class="sg songArtist">임영웅</a>
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
                            <td class="number">9</td>
                            <td>
                                <a href="#" class="imge">
                                    <span class="mask"></span>
                                    <img src="C:/팀4/사진/지니차트/장르별차트/트롯/트롯일/9.jpg" alt="아로하">
                                </a>
                            </td>
                            <td class="info">
                                <a href="#" class="sg songTitle">아로하</a>
                                <a href="#" class="sg songArtist">임영웅</a>
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
                            <td class="check"><input type="checkbox" class="select-check" title="니가 왜 거기서 나와"></td>
                            <td class="number">10</td>
                            <td>
                                <a href="#" class="imge">
                                    <span class="mask"></span>
                                    <img src="C:/팀4/사진/지니차트/장르별차트/트롯/트롯일/10.jpg" alt="니가 왜 거기서 나와">
                                </a>
                            </td>
                            <td class="info">
                                <a href="#" class="sg songTitle">니가 왜 거기서 나와</a>
                                <a href="#" class="sg songArtist">영탁</a>
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
                            <td class="check"><input type="checkbox" class="select-check" title="찐이야"></td>
                            <td class="number">11</td>
                            <td>
                                <a href="#" class="imge">
                                    <span class="mask"></span>
                                    <img src="C:/팀4/사진/지니차트/장르별차트/트롯/트롯일/11.jpg" alt="찐이야">
                                </a>
                            </td>
                            <td class="info">
                                <a href="#" class="sg songTitle">찐이야</a>
                                <a href="#" class="sg songArtist">영탁</a>
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
                            <td class="check"><input type="checkbox" class="select-check" title="나보다 더 사랑해요"></td>
                            <td class="number">12</td>
                            <td>
                                <a href="#" class="imge">
                                    <span class="mask"></span>
                                    <img src="C:/팀4/사진/지니차트/장르별차트/트롯/트롯일/12.jpg" alt="나보다 더 사랑해요">
                                </a>
                            </td>
                            <td class="info">
                                <a href="#" class="sg songTitle">나보다 더 사랑해요</a>
                                <a href="#" class="sg songArtist">김호중</a>
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
                            <td class="check"><input type="checkbox" class="select-check" title="그런사람 또 없습니다"></td>
                            <td class="number">13</td>
                            <td>
                                <a href="#" class="imge">
                                    <span class="mask"></span>
                                    <img src="C:/팀4/사진/지니차트/장르별차트/트롯/트롯일/13.jpg" alt="그런사람 또 없습니다">
                                </a>
                            </td>
                            <td class="info">
                                <a href="#" class="sg songTitle">그런사람 또 없습니다</a>
                                <a href="#" class="sg songArtist">김호중</a>
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
                            <td class="check"><input type="checkbox" class="select-check" title="나보다 더 사랑해요"></td>
                            <td class="number">14</td>
                            <td>
                                <a href="#" class="imge">
                                    <span class="mask"></span>
                                    <img src="C:/팀4/사진/지니차트/장르별차트/트롯/트롯일/14.jpg" alt="나보다 더 사랑해요">
                                </a>
                            </td>
                            <td class="info">
                                <a href="#" class="sg songTitle">나보다 더 사랑해요</a>
                                <a href="#" class="sg songArtist">김호중</a>
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
                            <td class="number">15</td>
                            <td>
                                <a href="#" class="imge">
                                    <span class="mask"></span>
                                    <img src="C:/팀4/사진/지니차트/장르별차트/트롯/트롯일/15.jpg" alt="너의 모든 순간">
                                </a>
                            </td>
                            <td class="info">
                                <a href="#" class="sg songTitle">너의 모든 순간</a>
                                <a href="#" class="sg songArtist">임영웅</a>
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
                            <td class="check"><input type="checkbox" class="select-check" title="일편 단심 민들레야"></td>
                            <td class="number">16</td>
                            <td>
                                <a href="#" class="imge">
                                    <span class="mask"></span>
                                    <img src="C:/팀4/사진/지니차트/장르별차트/트롯/트롯일/16.jpg" alt="일편 단심 민들레야">
                                </a>
                            </td>
                            <td class="info">
                                <a href="#" class="sg songTitle">일편 단심 민들레야</a>
                                <a href="#" class="sg songArtist">임영웅</a>
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
                            <td class="check"><input type="checkbox" class="select-check" title="이제 나만 믿어요"></td>
                            <td class="number">17</td>
                            <td>
                                <a href="#" class="imge">
                                    <span class="mask"></span>
                                    <img src="C:/팀4/사진/지니차트/장르별차트/트롯/트롯일/17.jpg" alt="이제 나만 믿어요">
                                </a>
                            </td>
                            <td class="info">
                                <a href="#" class="sg songTitle">이제 나만 믿어요</a>
                                <a href="#" class="sg songArtist">임영웅</a>
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
                            <td class="check"><input type="checkbox" class="select-check" title="계단말고 엘리베이터"></td>
                            <td class="number">18</td>
                            <td>
                                <a href="#" class="imge">
                                    <span class="mask"></span>
                                    <img src="C:/팀4/사진/지니차트/장르별차트/트롯/트롯일/18.jpg" alt="계단말고 엘리베이터">
                                </a>
                            </td>
                            <td class="info">
                                <a href="#" class="sg songTitle">계단말고 엘리베이터</a>
                                <a href="#" class="sg songArtist">임영웅</a>
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
                            <td class="check"><input type="checkbox" class="select-check" title="퇴근길"></td>
                            <td class="number">19</td>
                            <td>
                                <a href="#" class="imge">
                                    <span class="mask"></span>
                                    <img src="C:/팀4/사진/지니차트/장르별차트/트롯/트롯일/19.jpg" alt="퇴근길">
                                </a>
                            </td>
                            <td class="info">
                                <a href="#" class="sg songTitle">퇴근길</a>
                                <a href="#" class="sg songArtist">김호중</a>
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
                            <td class="check"><input type="checkbox" class="select-check" title="백화"></td>
                            <td class="number">20</td>
                            <td>
                                <a href="#" class="imge">
                                    <span class="mask"></span>
                                    <img src="C:/팀4/사진/지니차트/장르별차트/트롯/트롯일/20.jpg" alt="백화">
                                </a>
                            </td>
                            <td class="info">
                                <a href="#" class="sg songTitle"백화></a>
                                <a href="#" class="sg songArtist">김호중</a>
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
                            <td class="check"><input type="checkbox" class="select-check" title="두 주먹"></td>
                            <td class="number">21</td>
                            <td>
                                <a href="#" class="imge">
                                    <span class="mask"></span>
                                    <img src="C:/팀4/사진/지니차트/장르별차트/트롯/트롯일/21.jpg" alt="두 주먹">
                                </a>
                            </td>
                            <td class="info">
                                <a href="#" class="sg songTitle">두 주먹</a>
                                <a href="#" class="sg songArtist">임영웅</a>
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
                            <td class="check"><input type="checkbox" class="select-check" title="막걸리 한잔"></td>
                            <td class="number">22</td>
                            <td>
                                <a href="#" class="imge">
                                    <span class="mask"></span>
                                    <img src="C:/팀4/사진/지니차트/장르별차트/트롯/트롯일/22.jpg" alt="막걸리 한잔">
                                </a>
                            </td>
                            <td class="info">
                                <a href="#" class="sg songTitle">막걸리 한잔</a>
                                <a href="#" class="sg songArtist">영탁</a>
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
                            <td class="check"><input type="checkbox" class="select-check" title="미워요"></td>
                            <td class="number">23</td>
                            <td>
                                <a href="#" class="imge">
                                    <span class="mask"></span>
                                    <img src="C:/팀4/사진/지니차트/장르별차트/트롯/트롯일/23.jpg" alt="미워요">
                                </a>
                            </td>
                            <td class="info">
                                <a href="#" class="sg songTitle">미워요</a>
                                <a href="#" class="sg songArtist">임영웅</a>
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
                            <td class="check"><input type="checkbox" class="select-check" title="태클을 걸지마"></td>
                            <td class="number">24</td>
                            <td>
                                <a href="#" class="imge">
                                    <span class="mask"></span>
                                    <img src="C:/팀4/사진/지니차트/장르별차트/트롯/트롯일/24.jpg" alt="태클을 걸지마">
                                </a>
                            </td>
                            <td class="info">
                                <a href="#" class="sg songTitle">태클을 걸지마</a>
                                <a href="#" class="sg songArtist">김호중</a>
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
                            <td class="check"><input type="checkbox" class="select-check" title="나만의 길"></td>
                            <td class="number">25</td>
                            <td>
                                <a href="#" class="imge">
                                    <span class="mask"></span>
                                    <img src="C:/팀4/사진/지니차트/장르별차트/트롯/트롯일/25.jpg" alt="나만의 길">
                                </a>
                            </td>
                            <td class="info">
                                <a href="#" class="sg songTitle">나만의 길</a>
                                <a href="#" class="sg songArtist">김호중</a>
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
                            <td class="check"><input type="checkbox" class="select-check" title="애인이 되어줄게요"></td>
                            <td class="number">26</td>
                            <td>
                                <a href="#" class="imge">
                                    <span class="mask"></span>
                                    <img src="C:/팀4/사진/지니차트/장르별차트/트롯/트롯일/26.jpg" alt="애인이 되어줄게요">
                                </a>
                            </td>
                            <td class="info">
                                <a href="#" class="sg songTitle">애인이 되어줄게요</a>
                                <a href="#" class="sg songArtist">김호중</a>
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
                            <td class="check"><input type="checkbox" class="select-check" title="홀로아리랑"></td>
                            <td class="number">27</td>
                            <td>
                                <a href="#" class="imge">
                                    <span class="mask"></span>
                                    <img src="C:/팀4/사진/지니차트/장르별차트/트롯/트롯일/27.jpg" alt="홀로아리랑">
                                </a>
                            </td>
                            <td class="info">
                                <a href="#" class="sg songTitle">홀로아리랑</a>
                                <a href="#" class="sg songArtist">김호중</a>
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
                            <td class="check"><input type="checkbox" class="select-check" title="희망가"></td>
                            <td class="number">28</td>
                            <td>
                                <a href="#" class="imge">
                                    <span class="mask"></span>
                                    <img src="C:/팀4/사진/지니차트/장르별차트/트롯/트롯일/28.jpg" alt="희망가">
                                </a>
                            </td>
                            <td class="info">
                                <a href="#" class="sg songTitle">희망가</a>
                                <a href="#" class="sg songArtist">김호중</a>
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
                            <td class="check"><input type="checkbox" class="select-check" title="오늘 밤에"></td>
                            <td class="number">29</td>
                            <td>
                                <a href="#" class="imge">
                                    <span class="mask"></span>
                                    <img src="C:/팀4/사진/지니차트/장르별차트/트롯/트롯일/29.jpg" alt="오늘 밤에">
                                </a>
                            </td>
                            <td class="info">
                                <a href="#" class="sg songTitle">오늘 밤에</a>
                                <a href="#" class="sg songArtist">홍진영</a>
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
                            <td class="check"><input type="checkbox" class="select-check" title="주라주라"></td>
                            <td class="number">30</td>
                            <td>
                                <a href="#" class="imge">
                                    <span class="mask"></span>
                                    <img src="C:/팀4/사진/지니차트/장르별차트/트롯/트롯일/30.jpg" alt="주라주라">
                                </a>
                            </td>
                            <td class="info">
                                <a href="#" class="sg songTitle">주라주라</a>
                                <a href="#" class="sg songArtist">둘째이모 김다비</a>
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
<jsp:include page="/Footer.jsp"></jsp:include>
</body>
</html>