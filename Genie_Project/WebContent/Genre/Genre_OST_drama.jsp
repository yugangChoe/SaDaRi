<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="/Genie_Project/css/Genie.css" rel="stylesheet" type="text/css">
<title>Genre_OST_drama</title>
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
                <img src="C:/팀4/사진/이미지/h2_genre.gif" alt="장르음악">
            </h2>
        </div>
        <!-- title -->
        <div class="title-1">
            <ul>
                <li>
                    <a href="/Genie_Project/G_servlet?command=Genre_kpop_all">
                        <img src="C:/팀4/사진/이미지/genre_1_2020.png" alt="가요">
                    </a>
                </li>
                <li>
                    <a href="/Genie_Project/G_servlet?command=Genre_pop_all">
                        <img src="C:/팀4/사진/이미지/genre_2_2020.png" alt="POP">
                    </a>
                </li>
                <li>
                    <a href="/Genie_Project/G_servlet?command=Genre_OST_all">
                        <img src="C:/팀4/사진/이미지/genre_3_2020.png" alt="OST">
                    </a>
                </li>
                <li>
                    <a href="/Genie_Project/G_servlet?command=Genre_trot">
                        <img src="C:/팀4/사진/이미지/genre_11.png" alt="트롯">
                    </a>
                </li>
            </ul>
        </div>
        <div class="title-line">
            <h3 style="font: 0/0 a">앨범 종류</h3>
            <ul>
                <li class="hot">
                    <a href="/Genie_Project/G_servlet?command=Genre_OST_all">전체</a>
                </li>
                <li>
                    <a href="/Genie_Project/G_servlet?command=Genre_OST_drama">드라마</a>
                </li>
                <li>
                    <a href="/Genie_Project/G_servlet?command=Genre_OST_kmovie">한국영화</a>
                </li>
                <li>
                    <a href="/Genie_Project/G_servlet?command=Genre_OST_fmovie">해외영화</a>
                </li>
            </ul>
        </div> <!-- title-line -->
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
                        <tr class="list">
                            <!-- tr list -->
                            <td class="check"><input type="checkbox" class="select-check" title="노래제목"></td>
                            <td class="number">1</td>
                            <td>
                                <a href="#" class="imge">
                                    <span class="mask"></span>
                                    <img src="C:/팀4/사진/장르음악/OST/드라마/1.jpg" width="50" height="50" alt="LA DI DA">
                                </a>
                            </td>
                            <td class="info">
                                <a href="#" class="sg songTitle">Be There</a>
                                <a href="#" class="sg songArtist">신예영 외</a>
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

                        </tr>
                        <tr class="list">
                            <!-- tr list -->
                            <td class="check"><input type="checkbox" class="select-check" title="노래제목"></td>
                            <td class="number">2</td>
                            <td>
                                <a href="#" class="imge">
                                    <span class="mask"></span>
                                    <img src="C:/팀4/사진/장르음악/OST/드라마/2.jpg" width="50" height="50" alt="LA DI DA">
                                </a>
                            </td>
                            <td class="info">
                                <a href="#" class="sg songTitle">이미 난 행복한 사람</a>
                                <a href="#" class="sg songArtist">나들 외</a>
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

                        </tr>
                        <tr class="list">
                            <!-- tr list -->
                            <td class="check"><input type="checkbox" class="select-check" title="노래제목"></td>
                            <td class="number">3</td>
                            <td>
                                <a href="#" class="imge">
                                    <span class="mask"></span>
                                    <img src="C:/팀4/사진/장르음악/OST/드라마/3.jpg" width="50" height="50" alt="LA DI DA">
                                </a>
                            </td>
                            <td class="info">
                                <a href="#" class="sg songTitle">City girl</a>
                                <a href="#" class="sg songArtist">여은 외</a>
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

                        </tr>
                        <tr class="list">
                            <!-- tr list -->
                            <td class="check"><input type="checkbox" class="select-check" title="노래제목"></td>
                            <td class="number">4</td>
                            <td>
                                <a href="#" class="imge">
                                    <span class="mask"></span>
                                    <img src="C:/팀4/사진/장르음악/OST/드라마/4.jpg" width="50" height="50" alt="LA DI DA">
                                </a>
                            </td>
                            <td class="info">
                                <a href="#" class="sg songTitle">밤하늘의 저 별처럼</a>
                                <a href="#" class="sg songArtist">헤이즈 (Heize) & 펀치 (Punch) 외</a>
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

                        </tr>
                        <tr class="list">
                            <!-- tr list -->
                            <td class="check"><input type="checkbox" class="select-check" title="노래제목"></td>
                            <td class="number">5</td>
                            <td>
                                <a href="#" class="imge">
                                    <span class="mask"></span>
                                    <img src="C:/팀4/사진/장르음악/OST/드라마/5.jpg" width="50" height="50" alt="LA DI DA">
                                </a>
                            </td>
                            <td class="info">
                                <a href="#" class="sg songTitle">사랑도 세월처럼 막을 수 없나봐</a>
                                <a href="#" class="sg songArtist">진민호 외</a>
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

                        </tr>
                        <tr class="list">
                            <!-- tr list -->
                            <td class="check"><input type="checkbox" class="select-check" title="노래제목"></td>
                            <td class="number">6</td>
                            <td>
                                <a href="#" class="imge">
                                    <span class="mask"></span>
                                    <img src="C:/팀4/사진/장르음악/OST/드라마/6.jpg" width="50" height="50" alt="LA DI DA">
                                </a>
                            </td>
                            <td class="info">
                                <a href="#" class="sg songTitle">From You</a>
                                <a href="#" class="sg songArtist">엔플라잉 (N.Flying) 외</a>
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
                        </tr>
                        <tr class="list">
                            <!-- tr list -->
                            <td class="check"><input type="checkbox" class="select-check" title="노래제목"></td>
                            <td class="number">7</td>
                            <td>
                                <a href="#" class="imge">
                                    <span class="mask"></span>
                                    <img src="C:/팀4/사진/장르음악/OST/드라마/7.jpg" width="50" height="50" alt="LA DI DA">
                                </a>
                            </td>
                            <td class="info">
                                <a href="#" class="sg songTitle">우연일까</a>
                                <a href="#" class="sg songArtist">하성운 외</a>
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
                        </tr>
                        <tr class="list">
                            <!-- tr list -->
                            <td class="check"><input type="checkbox" class="select-check" title="노래제목"></td>
                            <td class="number">8</td>
                            <td>
                                <a href="#" class="imge">
                                    <span class="mask"></span>
                                    <img src="C:/팀4/사진/장르음악/OST/드라마/8.jpg" width="50" height="50" alt="LA DI DA">
                                </a>
                            </td>
                            <td class="info">
                                <a href="#" class="sg songTitle">내가 아파한대도</a>
                                <a href="#" class="sg songArtist">손예림 외</a>
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
                        </tr>
                        <tr class="list">
                            <!-- tr list -->
                            <td class="check"><input type="checkbox" class="select-check" title="노래제목"></td>
                            <td class="number">9</td>
                            <td>
                                <a href="#" class="imge">
                                    <span class="mask"></span>
                                    <img src="C:/팀4/사진/장르음악/OST/드라마/9.jpg" width="50" height="50" alt="LA DI DA">
                                </a>
                            </td>
                            <td class="info">
                                <a href="#" class="sg songTitle">괜찮아 너니까</a>
                                <a href="#" class="sg songArtist">도아 외</a>
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
                        </tr>
                        <tr class="list">
                            <!-- tr list -->
                            <td class="check"><input type="checkbox" class="select-check" title="노래제목"></td>
                            <td class="number">10</td>
                            <td>
                                <a href="#" class="imge">
                                    <span class="mask"></span>
                                    <img src="C:/팀4/사진/장르음악/OST/드라마/10.jpg" width="50" height="50" alt="LA DI DA">
                                </a>
                            </td>
                            <td class="info">
                                <a href="#" class="sg songTitle">Don't follow me</a>
                                <a href="#" class="sg songArtist">정이한 (더 넛츠) 외</a>
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
                        </tr>
                        <tr class="list">
                            <!-- tr list -->
                            <td class="check"><input type="checkbox" class="select-check" title="노래제목"></td>
                            <td class="number">11</td>
                            <td>
                                <a href="#" class="imge">
                                    <span class="mask"></span>
                                    <img src="C:/팀4/사진/장르음악/OST/드라마/11.jpg" width="50" height="50" alt="LA DI DA">
                                </a>
                            </td>
                            <td class="info">
                                <a href="#" class="sg songTitle">핫핫핫! 핫도그</a>
                                <a href="#" class="sg songArtist">드래곤디 외</a>
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
                        </tr>
                        <tr class="list">
                            <!-- tr list -->
                            <td class="check"><input type="checkbox" class="select-check" title="노래제목"></td>
                            <td class="number">12</td>
                            <td>
                                <a href="#" class="imge">
                                    <span class="mask"></span>
                                    <img src="C:/팀4/사진/장르음악/OST/드라마/12.jpg" width="50" height="50" alt="LA DI DA">
                                </a>
                            </td>
                            <td class="info">
                                <a href="#" class="sg songTitle">너로 물든다는 것</a>
                                <a href="#" class="sg songArtist">먼데이 (Weeekly) 외</a>
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
                        </tr>
                        <tr class="list">
                            <!-- tr list -->
                            <td class="check"><input type="checkbox" class="select-check" title="노래제목"></td>
                            <td class="number">13</td>
                            <td>
                                <a href="#" class="imge">
                                    <span class="mask"></span>
                                    <img src="C:/팀4/사진/장르음악/OST/드라마/13.jpg" width="50" height="50" alt="LA DI DA">
                                </a>
                            </td>
                            <td class="info">
                                <a href="#" class="sg songTitle">사랑의 신호등</a>
                                <a href="#" class="sg songArtist">설하윤 외</a>
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
                        </tr>
                        <tr class="list">
                            <!-- tr list -->
                            <td class="check"><input type="checkbox" class="select-check" title="노래제목"></td>
                            <td class="number">14</td>
                            <td>
                                <a href="#" class="imge">
                                    <span class="mask"></span>
                                    <img src="C:/팀4/사진/장르음악/OST/드라마/14.jpg" width="50" height="50" alt="LA DI DA">
                                </a>
                            </td>
                            <td class="info">
                                <a href="#" class="sg songTitle">어깨에 기대</a>
                                <a href="#" class="sg songArtist">팀 외</a>
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
                        </tr>
                        <tr class="list">
                            <!-- tr list -->
                            <td class="check"><input type="checkbox" class="select-check" title="노래제목"></td>
                            <td class="number">15</td>
                            <td>
                                <a href="#" class="imge">
                                    <span class="mask"></span>
                                    <img src="C:/팀4/사진/장르음악/OST/드라마/15.jpg" width="50" height="50" alt="LA DI DA">
                                </a>
                            </td>
                            <td class="info">
                                <a href="#" class="sg songTitle">Feel You</a>
                                <a href="#" class="sg songArtist">신용재 (2F) 외</a>
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
                        </tr>
                        <tr class="list">
                            <!-- tr list -->
                            <td class="check"><input type="checkbox" class="select-check" title="노래제목"></td>
                            <td class="number">16</td>
                            <td>
                                <a href="#" class="imge">
                                    <span class="mask"></span>
                                    <img src="C:/팀4/사진/장르음악/OST/드라마/16.jpg" width="50" height="50" alt="LA DI DA">
                                </a>
                            </td>
                            <td class="info">
                                <a href="#" class="sg songTitle">My Love</a>
                                <a href="#" class="sg songArtist">조유리 (아이즈원) 외</a>
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
                        </tr>
                        <tr class="list">
                            <!-- tr list -->
                            <td class="check"><input type="checkbox" class="select-check" title="노래제목"></td>
                            <td class="number">17</td>
                            <td>
                                <a href="#" class="imge">
                                    <span class="mask"></span>
                                    <img src="C:/팀4/사진/장르음악/OST/드라마/17.jpg" width="50" height="50" alt="LA DI DA">
                                </a>
                            </td>
                            <td class="info">
                                <a href="#" class="sg songTitle">하나면 돼요</a>
                                <a href="#" class="sg songArtist">소유 (SOYOU) 외</a>
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
                        </tr>
                        <tr class="list">
                            <!-- tr list -->
                            <td class="check"><input type="checkbox" class="select-check" title="노래제목"></td>
                            <td class="number">18</td>
                            <td>
                                <a href="#" class="imge">
                                    <span class="mask"></span>
                                    <img src="C:/팀4/사진/장르음악/OST/드라마/18.jpg" width="50" height="50" alt="LA DI DA">
                                </a>
                            </td>
                            <td class="info">
                                <a href="#" class="sg songTitle">그대를 사랑합니다</a>
                                <a href="#" class="sg songArtist">박강성 외</a>
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
                        </tr>
                        <tr class="list">
                            <!-- tr list -->
                            <td class="check"><input type="checkbox" class="select-check" title="노래제목"></td>
                            <td class="number">19</td>
                            <td>
                                <a href="#" class="imge">
                                    <span class="mask"></span>
                                    <img src="C:/팀4/사진/장르음악/OST/드라마/19.jpg" width="50" height="50" alt="LA DI DA">
                                </a>
                            </td>
                            <td class="info">
                                <a href="#" class="sg songTitle">Delight</a>
                                <a href="#" class="sg songArtist">JUNIEL 외</a>
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
                        </tr>
                        <tr class="list">
                            <!-- tr list -->
                            <td class="check"><input type="checkbox" class="select-check" title="노래제목"></td>
                            <td class="number">20</td>
                            <td>
                                <a href="#" class="imge">
                                    <span class="mask"></span>
                                    <img src="C:/팀4/사진/장르음악/OST/드라마/20.jpg" width="50" height="50" alt="LA DI DA">
                                </a>
                            </td>
                            <td class="info">
                                <a href="#" class="sg songTitle">나의 시간은</a>
                                <a href="#" class="sg songArtist">백현 (BAEKHYUN) 외</a>
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
                        </tr>
                        <tr class="list">
                            <!-- tr list -->
                            <td class="check"><input type="checkbox" class="select-check" title="노래제목"></td>
                            <td class="number">21</td>
                            <td>
                                <a href="#" class="imge">
                                    <span class="mask"></span>
                                    <img src="C:/팀4/사진/장르음악/OST/드라마/21.jpg" width="50" height="50" alt="LA DI DA">
                                </a>
                            </td>
                            <td class="info">
                                <a href="#" class="sg songTitle">그리워하면 그댈 만날까봐</a>
                                <a href="#" class="sg songArtist">김나영 외</a>
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
                        </tr>
                        <tr class="list">
                            <!-- tr list -->
                            <td class="check"><input type="checkbox" class="select-check" title="노래제목"></td>
                            <td class="number">22</td>
                            <td>
                                <a href="#" class="imge">
                                    <span class="mask"></span>
                                    <img src="C:/팀4/사진/장르음악/OST/드라마/22.jpg" width="50" height="50" alt="LA DI DA">
                                </a>
                            </td>
                            <td class="info">
                                <a href="#" class="sg songTitle">Speak For Yourself (Feat. Jungleman)</a>
                                <a href="#" class="sg songArtist">황상준 외</a>
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
                        </tr>
                        <tr class="list">
                            <!-- tr list -->
                            <td class="check"><input type="checkbox" class="select-check" title="노래제목"></td>
                            <td class="number">23</td>
                            <td>
                                <a href="#" class="imge">
                                    <span class="mask"></span>
                                    <img src="C:/팀4/사진/장르음악/OST/드라마/23.jpg" width="50" height="50" alt="LA DI DA">
                                </a>
                            </td>
                            <td class="info">
                                <a href="#" class="sg songTitle">구름 위를 걷는 것 같아</a>
                                <a href="#" class="sg songArtist">손예림 외</a>
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
                        </tr>
                        <tr class="list">
                            <!-- tr list -->
                            <td class="check"><input type="checkbox" class="select-check" title="노래제목"></td>
                            <td class="number">24</td>
                            <td>
                                <a href="#" class="imge">
                                    <span class="mask"></span>
                                    <img src="C:/팀4/사진/장르음악/OST/드라마/24.jpg" width="50" height="50" alt="LA DI DA">
                                </a>
                            </td>
                            <td class="info">
                                <a href="#" class="sg songTitle">Lost</a>
                                <a href="#" class="sg songArtist">윤미래 외</a>
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
                        </tr>
                        <tr class="list">
                            <!-- tr list -->
                            <td class="check"><input type="checkbox" class="select-check" title="노래제목"></td>
                            <td class="number">25</td>
                            <td>
                                <a href="#" class="imge">
                                    <span class="mask"></span>
                                    <img src="C:/팀4/사진/장르음악/OST/드라마/25.jpg" width="50" height="50" alt="LA DI DA">
                                </a>
                            </td>
                            <td class="info">
                                <a href="#" class="sg songTitle">거짓말의 거짓말 (Prod. by 박근태)</a>
                                <a href="#" class="sg songArtist">류수정 (러블리즈) 외</a>
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
                        </tr>
                        <tr class="list">
                            <!-- tr list -->
                            <td class="check"><input type="checkbox" class="select-check" title="노래제목"></td>
                            <td class="number">26</td>
                            <td>
                                <a href="#" class="imge">
                                    <span class="mask"></span>
                                    <img src="C:/팀4/사진/장르음악/OST/드라마/26.jpg" width="50" height="50" alt="LA DI DA">
                                </a>
                            </td>
                            <td class="info">
                                <a href="#" class="sg songTitle">별</a>
                                <a href="#" class="sg songArtist">임한별 외</a>
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
                        </tr>
                        <tr class="list">
                            <!-- tr list -->
                            <td class="check"><input type="checkbox" class="select-check" title="노래제목"></td>
                            <td class="number">27</td>
                            <td>
                                <a href="#" class="imge">
                                    <span class="mask"></span>
                                    <img src="C:/팀4/사진/장르음악/OST/드라마/27.jpg" width="50" height="50" alt="LA DI DA">
                                </a>
                            </td>
                            <td class="info">
                                <a href="#" class="sg songTitle">Banana shake</a>
                                <a href="#" class="sg songArtist">박형근 외</a>
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
                        </tr>
                        <tr class="list">
                            <!-- tr list -->
                            <td class="check"><input type="checkbox" class="select-check" title="노래제목"></td>
                            <td class="number">28</td>
                            <td>
                                <a href="#" class="imge">
                                    <span class="mask"></span>
                                    <img src="C:/팀4/사진/장르음악/OST/드라마/28.jpg" width="50" height="50" alt="LA DI DA">
                                </a>
                            </td>
                            <td class="info">
                                <a href="#" class="sg songTitle">Fly High</a>
                                <a href="#" class="sg songArtist">더 맨 블랙 (THE MAN BLK) 외</a>
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
                        </tr>
                        <tr class="list">
                            <!-- tr list -->
                            <td class="check"><input type="checkbox" class="select-check" title="노래제목"></td>
                            <td class="number">29</td>
                            <td>
                                <a href="#" class="imge">
                                    <span class="mask"></span>
                                    <img src="C:/팀4/사진/장르음악/OST/드라마/29.jpg" width="50" height="50" alt="LA DI DA">
                                </a>
                            </td>
                            <td class="info">
                                <a href="#" class="sg songTitle">피넛 버터 젤리</a>
                                <a href="#" class="sg songArtist">드래곤디 외</a>
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
                        </tr>
                        <tr class="list">
                            <!-- tr list -->
                            <td class="check"><input type="checkbox" class="select-check" title="노래제목"></td>
                            <td class="number">30</td>
                            <td>
                                <a href="#" class="imge">
                                    <span class="mask"></span>
                                    <img src="C:/팀4/사진/장르음악/OST/드라마/30.jpg" width="50" height="50" alt="LA DI DA">
                                </a>
                            </td>
                            <td class="info">
                                <a href="#" class="sg songTitle">The Way You Smile</a>
                                <a href="#" class="sg songArtist">Christy O'Donnell</a>
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
                        </tr>
                    </tbody>
                </table><!-- list-wrap -->
                    <div class="toolbar">
                        <input type="checkbox" class="all-check" title="전체 선택">
                        <a href="#" class="btn btn-listen" title="재생">듣기</a>
                        <a href="#" class="btn btn-add" title="추가">추가</a>
                        <a href="#" class="btn btn-album" title="담기">담기</button>
                        <a href="#" class="btn btn-down" title="다운">다운</a>
                    </div><!-- toolbar-->
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