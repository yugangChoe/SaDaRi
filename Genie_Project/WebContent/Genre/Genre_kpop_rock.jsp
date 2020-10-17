<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="/Genie_Project/css/Genie.css" rel="stylesheet" type="text/css">
<title>Genre_kpop_rock</title>
<head>
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
                    <a href="/Genie_Project/G_servlet?command=Genre_kpop_all">전체</a>
                </li>
                <li>
                    <a href="/Genie_Project/G_servlet?command=Genre_kpop_ballad">발라드</a>
                </li>
                <li>
                    <a href="/Genie_Project/G_servlet?command=Genre_kpop_dance">댄스</a>
                </li>
                <li>
                    <a href="/Genie_Project/G_servlet?command=Genre_kpop_RNB">R&B/소울</a>
                </li>
                <li>
                    <a href="/Genie_Project/G_servlet?command=Genre_kpop_rock">락</a>
                </li>
                <li>
                    <a href="/Genie_Project/G_servlet?command=Genre_kpop_hiphop">랩/힙합</a>
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
                                        <img src="C:/팀4/사진/장르음악/가요/락/1.jpg" width="50" height="50" alt="LA DI DA">
                                    </a>
                                </td>
                                <td class="info">
                                    <a href="#" class="sg songTitle">3-1</a>
                                    <a href="#" class="sg songArtist">이원영</a>
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
                                        <img src="C:/팀4/사진/장르음악/가요/락/2.jpg" width="50" height="50" alt="LA DI DA">
                                    </a>
                                </td>
                                <td class="info">
                                    <a href="#" class="sg songTitle">Street King</a>
                                    <a href="#" class="sg songArtist">로드 (ROAD)</a>
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
                                        <img src="C:/팀4/사진/장르음악/가요/락/3.jpg" width="50" height="50" alt="LA DI DA">
                                    </a>
                                </td>
                                <td class="info">
                                    <a href="#" class="sg songTitle">ㅠㅠ</a>
                                    <a href="#" class="sg songArtist">seeso (시소)</a>
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
                                        <img src="C:/팀4/사진/장르음악/가요/락/4.jpg" width="50" height="50" alt="LA DI DA">
                                    </a>
                                </td>
                                <td class="info">
                                    <a href="#" class="sg songTitle">그리고 시작</a>
                                    <a href="#" class="sg songArtist">TearDrop (티어드랍)</a>
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
                                        <img src="C:/팀4/사진/장르음악/가요/락/5.jpg" width="50" height="50" alt="LA DI DA">
                                    </a>
                                </td>
                                <td class="info">
                                    <a href="#" class="sg songTitle">장마 (Monsoon)</a>
                                    <a href="#" class="sg songArtist">Frozen Mirror</a>
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
                                        <img src="C:/팀4/사진/장르음악/가요/락/6.jpg" width="50" height="50" alt="LA DI DA">
                                    </a>
                                </td>
                                <td class="info">
                                    <a href="#" class="sg songTitle">너와 나 그리고 꿈 (Prod. & Feat. 박종찬)</a>
                                    <a href="#" class="sg songArtist">박정규</a>
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
                                        <img src="C:/팀4/사진/장르음악/가요/락/7.jpg" width="50" height="50" alt="LA DI DA">
                                    </a>
                                </td>
                                <td class="info">
                                    <a href="#" class="sg songTitle">처럼</a>
                                    <a href="#" class="sg songArtist">Fishsmell (피쉬스멜)</a>
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
                                        <img src="C:/팀4/사진/장르음악/가요/락/8.jpg" width="50" height="50" alt="LA DI DA">
                                    </a>
                                </td>
                                <td class="info">
                                    <a href="#" class="sg songTitle">안녕 여름날</a>
                                    <a href="#" class="sg songArtist">Polyphonic sketch (폴리포닉 스케치)</a>
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
                                        <img src="C:/팀4/사진/장르음악/가요/락/9.jpg" width="50" height="50" alt="LA DI DA">
                                    </a>
                                </td>
                                <td class="info">
                                    <a href="#" class="sg songTitle">Money City</a>
                                    <a href="#" class="sg songArtist">크차일드태퍼스 (Wink Child Tappers)</a>
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
                                        <img src="C:/팀4/사진/장르음악/가요/락/10.jpg" width="50" height="50" alt="LA DI DA">
                                    </a>
                                </td>
                                <td class="info">
                                    <a href="#" class="sg songTitle">흥미로운 병</a>
                                    <a href="#" class="sg songArtist">0Sinho</a>
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
                                        <img src="C:/팀4/사진/장르음악/가요/락/11.jpg" width="50" height="50" alt="LA DI DA">
                                    </a>
                                </td>
                                <td class="info">
                                    <a href="#" class="sg songTitle">Hymn for a diary</a>
                                    <a href="#" class="sg songArtist">Detuned (디튠드)</a>
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
                                        <img src="C:/팀4/사진/장르음악/가요/락/12.jpg" width="50" height="50" alt="LA DI DA">
                                    </a>
                                </td>
                                <td class="info">
                                    <a href="#" class="sg songTitle">천국 (Ver. Rock)</a>
                                    <a href="#" class="sg songArtist">우혜미</a>
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
                                        <img src="C:/팀4/사진/장르음악/가요/락/13.jpg" width="50" height="50" alt="LA DI DA">
                                    </a>
                                </td>
                                <td class="info">
                                    <a href="#" class="sg songTitle">하늘 높이 (SKY HIGH) (Original Ver.)</a>
                                    <a href="#" class="sg songArtist">MY DAY</a>
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
                                        <img src="C:/팀4/사진/장르음악/가요/락/14.jpg" width="50" height="50" alt="LA DI DA">
                                    </a>
                                </td>
                                <td class="info">
                                    <a href="#" class="sg songTitle">나의 바다</a>
                                    <a href="#" class="sg songArtist">한뉘 (HNNU)</a>
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
                                        <img src="C:/팀4/사진/장르음악/가요/락/15.jpg" width="50" height="50" alt="LA DI DA">
                                    </a>
                                </td>
                                <td class="info">
                                    <a href="#" class="sg songTitle">Not without U</a>
                                    <a href="#" class="sg songArtist">2Z (투지)</a>
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
                                        <img src="C:/팀4/사진/장르음악/가요/락/16.jpg" width="50" height="50" alt="LA DI DA">
                                    </a>
                                </td>
                                <td class="info">
                                    <a href="#" class="sg songTitle">I'm Happy With You</a>
                                    <a href="#" class="sg songArtist">낭만드림 (Romantic Present)</a>
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
                                        <img src="C:/팀4/사진/장르음악/가요/락/17.jpg" width="50" height="50" alt="LA DI DA">
                                    </a>
                                </td>
                                <td class="info">
                                    <a href="#" class="sg songTitle">Pray For Troller</a>
                                    <a href="#" class="sg songArtist">스프링헤드 (Springhead)</a>
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
                                        <img src="C:/팀4/사진/장르음악/가요/락/18.jpg" width="50" height="50" alt="LA DI DA">
                                    </a>
                                </td>
                                <td class="info">
                                    <a href="#" class="sg songTitle">북극성 (Feat. PINOKID)</a>
                                    <a href="#" class="sg songArtist">톰너드 (Tomnerd)</a>
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
                                        <img src="C:/팀4/사진/장르음악/가요/락/19.jpg" width="50" height="50" alt="LA DI DA">
                                    </a>
                                </td>
                                <td class="info">
                                    <a href="#" class="sg songTitle">Bend or Break (2020 Album Ver.)</a>
                                    <a href="#" class="sg songArtist">TRANK | Bend or Break (2020 Album Ver.)</a>
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
                                        <img src="C:/팀4/사진/장르음악/가요/락/20.jpg" width="50" height="50" alt="LA DI DA">
                                    </a>
                                </td>
                                <td class="info">
                                    <a href="#" class="sg songTitle">코브라 트위스트</a>
                                    <a href="#" class="sg songArtist">덤덤라디오 (Dumdumradio)</a>
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
                                        <img src="C:/팀4/사진/장르음악/가요/락/21.jpg" width="50" height="50" alt="LA DI DA">
                                    </a>
                                </td>
                                <td class="info">
                                    <a href="#" class="sg songTitle">미나</a>
                                    <a href="#" class="sg songArtist">내일매일</a>
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
                                        <img src="C:/팀4/사진/장르음악/가요/락/22.jpg" width="50" height="50" alt="LA DI DA">
                                    </a>
                                </td>
                                <td class="info">
                                    <a href="#" class="sg songTitle">미치도록 보고싶다</a>
                                    <a href="#" class="sg songArtist">김민철</a>
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
                                        <img src="C:/팀4/사진/장르음악/가요/락/23.jpg" width="50" height="50" alt="LA DI DA">
                                    </a>
                                </td>
                                <td class="info">
                                    <a href="#" class="sg songTitle">TGTD</a>
                                    <a href="#" class="sg songArtist">호랑이아들들</a>
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
                                        <img src="C:/팀4/사진/장르음악/가요/락/24.jpg" width="50" height="50" alt="LA DI DA">
                                    </a>
                                </td>
                                <td class="info">
                                    <a href="#" class="sg songTitle">Struggle</a>
                                    <a href="#" class="sg songArtist">공병록</a>
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
                                        <img src="C:/팀4/사진/장르음악/가요/락/25.jpg" width="50" height="50" alt="LA DI DA">
                                    </a>
                                </td>
                                <td class="info">
                                    <a href="#" class="sg songTitle">Wanderlust</a>
                                    <a href="#" class="sg songArtist">김동구</a>
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
                                        <img src="C:/팀4/사진/장르음악/가요/락/26.jpg" width="50" height="50" alt="LA DI DA">
                                    </a>
                                </td>
                                <td class="info">
                                    <a href="#" class="sg songTitle">바람의 계절</a>
                                    <a href="#" class="sg songArtist">Voundrex (바운드렉스)</a>
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
                                        <img src="C:/팀4/사진/장르음악/가요/락/27.jpg" width="50" height="50" alt="LA DI DA">
                                    </a>
                                </td>
                                <td class="info">
                                    <a href="#" class="sg songTitle">Nothing</a>
                                    <a href="#" class="sg songArtist">더 지타 (The GITA)</a>
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
                                        <img src="C:/팀4/사진/장르음악/가요/락/28.jpg" width="50" height="50" alt="LA DI DA">
                                    </a>
                                </td>
                                <td class="info">
                                    <a href="#" class="sg songTitle">진군가</a>
                                    <a href="#" class="sg songArtist">팔로몽티</a>
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
                                        <img src="C:/팀4/사진/장르음악/가요/락/29.jpg" width="50" height="50" alt="LA DI DA">
                                    </a>
                                </td>
                                <td class="info">
                                    <a href="#" class="sg songTitle">Be</a>
                                    <a href="#" class="sg songArtist">ID:Earth (아이디얼스)</a>
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
                                        <img src="C:/팀4/사진/장르음악/가요/락/30.jpg" width="50" height="50" alt="LA DI DA">
                                    </a>
                                </td>
                                <td class="info">
                                    <a href="#" class="sg songTitle">서풍</a>
                                    <a href="#" class="sg songArtist">손톱달</a>
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
                            </tr><!-- tr list -->
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