<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="/Genie_Project/css/Genie.css" rel="stylesheet" type="text/css">
<title>Genre_kpop_all</title>
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
                        <img src="/Genie_Project/img/g/genre_1_2020.png" alt="가요">
                    </a>
                </li>
                <li>
                    <a href="/Genie_Project/G_servlet?command=Genre_pop_all">
                        <img src="/Genie_Project/img/g/genre_2_2020.png" alt="POP">
                    </a>
                </li>
                <li>
                    <a href="/Genie_Project/G_servlet?command=Genre_OST_all">
                        <img src="/Genie_Project/img/g/genre_3_2020.png" alt="OST">
                    </a>
                </li>
                <li>
                    <a href="/Genie_Project/G_servlet?command=Genre_trot">
                        <img src="/Genie_Project/img/g/genre_11.png" alt="트롯">
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
                                            <img src="C:/팀4/사진/장르음악/가요/전체/1.jpg" width="50" height="50" alt="LA DI DA">
                                        </a>
                                    </td>
                                    <td class="info">
                                        <a href="#" class="sg songTitle">Tight</a>
                                        <a href="#" class="sg songArtist">10CM 외</a>
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
                                            <img src="C:/팀4/사진/장르음악/가요/전체/2.jpg" width="50" height="50" alt="LA DI DA">
                                        </a>
                                    </td>
                                    <td class="info">
                                        <a href="#" class="sg songTitle">쇼미더머니9</a>
                                        <a href="#" class="sg songArtist">오빗 외</a>
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
                                    <td class="number">3</td>
                                    <td>
                                        <a href="#" class="imge">
                                            <span class="mask"></span>
                                            <img src="C:/팀4/사진/장르음악/가요/전체/3.jpg" width="50" height="50" alt="LA DI DA">
                                        </a>
                                    </td>
                                    <td class="info">
                                        <a href="#" class="sg songTitle">Happycore</a>
                                        <a href="#" class="sg songArtist">Omega Sapien 외</a>
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
                                    <td class="number">4</td>
                                    <td>
                                        <a href="#" class="imge">
                                            <span class="mask"></span>
                                            <img src="C:/팀4/사진/장르음악/가요/전체/4.jpg" width="50" height="50" alt="LA DI DA">
                                        </a>
                                    </td>
                                    <td class="info">
                                        <a href="#" class="sg songTitle">Almighty Princess</a>
                                        <a href="#" class="sg songArtist">Lionclad (라이언클래드) 외</a>
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
                                    <td class="number">5</td>
                                    <td>
                                        <a href="#" class="imge">
                                            <span class="mask"></span>
                                            <img src="C:/팀4/사진/장르음악/가요/전체/5.jpg" width="50" height="50" alt="LA DI DA">
                                        </a>
                                    </td>
                                    <td class="info">
                                        <a href="#" class="sg songTitle">아름다운 널</a>
                                        <a href="#" class="sg songArtist">박칼린 & 임정희 외</a>
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
                                    <td class="number">6</td>
                                    <td>
                                        <a href="#" class="imge">
                                            <span class="mask"></span>
                                            <img src="C:/팀4/사진/장르음악/가요/전체/6.jpg" width="50" height="50" alt="LA DI DA">
                                        </a>
                                    </td>
                                    <td class="info">
                                        <a href="#" class="sg songTitle">직장</a>
                                        <a href="#" class="sg songArtist">강남손림 외</a>
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
                                    <td class="number">7</td>
                                    <td>
                                        <a href="#" class="imge">
                                            <span class="mask"></span>
                                            <img src="C:/팀4/사진/장르음악/가요/전체/7.jpg" width="50" height="50" alt="LA DI DA">
                                        </a>
                                    </td>
                                    <td class="info">
                                        <a href="#" class="sg songTitle">DAWI</a>
                                        <a href="#" class="sg songArtist">HUS (허밍어반스테레오) 외</a>
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
                                    <td class="number">8</td>
                                    <td>
                                        <a href="#" class="imge">
                                            <span class="mask"></span>
                                            <img src="C:/팀4/사진/장르음악/가요/전체/8.jpg" width="50" height="50" alt="LA DI DA">
                                        </a>
                                    </td>
                                    <td class="info">
                                        <a href="#" class="sg songTitle">갑자기 생각나네</a>
                                        <a href="#" class="sg songArtist">Big Baby Driver (빅베이비드라이버) & 이혜지 외</a>
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
                                    <td class="number">9</td>
                                    <td>
                                        <a href="#" class="imge">
                                            <span class="mask"></span>
                                            <img src="C:/팀4/사진/장르음악/가요/전체/9.jpg" width="50" height="50" alt="LA DI DA">
                                        </a>
                                    </td>
                                    <td class="info">
                                        <a href="#" class="sg songTitle">baguette</a>
                                        <a href="#" class="sg songArtist">xxiuk 외</a>
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
                                    <td class="number">10</td>
                                    <td>
                                        <a href="#" class="imge">
                                            <span class="mask"></span>
                                            <img src="C:/팀4/사진/장르음악/가요/전체/10.jpg" width="50" height="50" alt="LA DI DA">
                                        </a>
                                    </td>
                                    <td class="info">
                                        <a href="#" class="sg songTitle">잊어주라</a>
                                        <a href="#" class="sg songArtist">장정한 & 리누 (Lee-Nu) 외</a>
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
                                    <td class="number">11</td>
                                    <td>
                                        <a href="#" class="imge">
                                            <span class="mask"></span>
                                            <img src="C:/팀4/사진/장르음악/가요/전체/11.jpg" width="50" height="50" alt="LA DI DA">
                                        </a>
                                    </td>
                                    <td class="info">
                                        <a href="#" class="sg songTitle">how well you are?</a>
                                        <a href="#" class="sg songArtist">멜튼 (Melten) 외</a>
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
                                    <td class="number">12</td>
                                    <td>
                                        <a href="#" class="imge">
                                            <span class="mask"></span>
                                            <img src="C:/팀4/사진/장르음악/가요/전체/12.jpg" width="50" height="50" alt="LA DI DA">
                                        </a>
                                    </td>
                                    <td class="info">
                                        <a href="#" class="sg songTitle">DOLL (Feat. YUNHWAY)</a>
                                        <a href="#" class="sg songArtist">Xydo (시도) 외</a>
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
                                    <td class="number">13</td>
                                    <td>
                                        <a href="#" class="imge">
                                            <span class="mask"></span>
                                            <img src="C:/팀4/사진/장르음악/가요/전체/13.jpg" width="50" height="50" alt="LA DI DA">
                                        </a>
                                    </td>
                                    <td class="info">
                                        <a href="#" class="sg songTitle">방백</a>
                                        <a href="#" class="sg songArtist">소낙별 (SoNakByul) 외</a>
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
                                    <td class="number">14</td>
                                    <td>
                                        <a href="#" class="imge">
                                            <span class="mask"></span>
                                            <img src="C:/팀4/사진/장르음악/가요/전체/14.jpg" width="50" height="50" alt="LA DI DA">
                                        </a>
                                    </td>
                                    <td class="info">
                                        <a href="#" class="sg songTitle">2월</a>
                                        <a href="#" class="sg songArtist">PinkPlum (핑크플럼) 외</a>
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
                                    <td class="number">15</td>
                                    <td>
                                        <a href="#" class="imge">
                                            <span class="mask"></span>
                                            <img src="C:/팀4/사진/장르음악/가요/전체/15.jpg" width="50" height="50" alt="LA DI DA">
                                        </a>
                                    </td>
                                    <td class="info">
                                        <a href="#" class="sg songTitle">전화해 (Feat. Ted Park)</a>
                                        <a href="#" class="sg songArtist">키밤 (KEEBOMB) 외</a>
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
                                    <td class="number">16</td>
                                    <td>
                                        <a href="#" class="imge">
                                            <span class="mask"></span>
                                            <img src="C:/팀4/사진/장르음악/가요/전체/16.jpg" width="50" height="50" alt="LA DI DA">
                                        </a>
                                    </td>
                                    <td class="info">
                                        <a href="#" class="sg songTitle">스근하게</a>
                                        <a href="#" class="sg songArtist">하퍼스 (HOPPERS) 외</a>
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
                                    <td class="number">17</td>
                                    <td>
                                        <a href="#" class="imge">
                                            <span class="mask"></span>
                                            <img src="C:/팀4/사진/장르음악/가요/전체/17.jpg" width="50" height="50" alt="LA DI DA">
                                        </a>
                                    </td>
                                    <td class="info">
                                        <a href="#" class="sg songTitle">내인생은고속도로</a>
                                        <a href="#" class="sg songArtist">정협 외</a>
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
                                    <td class="number">18</td>
                                    <td>
                                        <a href="#" class="imge">
                                            <span class="mask"></span>
                                            <img src="C:/팀4/사진/장르음악/가요/전체/18.jpg" width="50" height="50" alt="LA DI DA">
                                        </a>
                                    </td>
                                    <td class="info">
                                        <a href="#" class="sg songTitle">오늘밤에 나와줘 (Tonight) (Outro) (With Semic)</a>
                                        <a href="#" class="sg songArtist">CLICO 외</a>
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
                                    <td class="number">19</td>
                                    <td>
                                        <a href="#" class="imge">
                                            <span class="mask"></span>
                                            <img src="C:/팀4/사진/장르음악/가요/전체/19.jpg" width="50" height="50" alt="LA DI DA">
                                        </a>
                                    </td>
                                    <td class="info">
                                        <a href="#" class="sg songTitle">무지개</a>
                                        <a href="#" class="sg songArtist">June 외</a>
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
                                    <td class="number">20</td>
                                    <td>
                                        <a href="#" class="imge">
                                            <span class="mask"></span>
                                            <img src="C:/팀4/사진/장르음악/가요/전체/20.jpg" width="50" height="50" alt="LA DI DA">
                                        </a>
                                    </td>
                                    <td class="info">
                                        <a href="#" class="sg songTitle">수초</a>
                                        <a href="#" class="sg songArtist">백다원</a>
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
                                    <td class="number">21</td>
                                    <td>
                                        <a href="#" class="imge">
                                            <span class="mask"></span>
                                            <img src="C:/팀4/사진/장르음악/가요/전체/21.jpg" width="50" height="50" alt="LA DI DA">
                                        </a>
                                    </td>
                                    <td class="info">
                                        <a href="#" class="sg songTitle">Smile (iF_010)</a>
                                        <a href="#" class="sg songArtist">인스트팩토리 (instFactory) 외</a>
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
                                    <td class="number">22</td>
                                    <td>
                                        <a href="#" class="imge">
                                            <span class="mask"></span>
                                            <img src="C:/팀4/사진/장르음악/가요/전체/22.jpg" width="50" height="50" alt="LA DI DA">
                                        </a>
                                    </td>
                                    <td class="info">
                                        <a href="#" class="sg songTitle">들려줘</a>
                                        <a href="#" class="sg songArtist">KIKI (키키) 외 </a>
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
                                    <td class="number">23</td>
                                    <td>
                                        <a href="#" class="imge">
                                            <span class="mask"></span>
                                            <img src="C:/팀4/사진/장르음악/가요/전체/23.jpg" width="50" height="50" alt="LA DI DA">
                                        </a>
                                    </td>
                                    <td class="info">
                                        <a href="#" class="sg songTitle">생각이 많은 밤 (Feat. elppa)</a>
                                        <a href="#" class="sg songArtist">젤리프로젝트 외</a>
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
                                    <td class="number">24</td>
                                    <td>
                                        <a href="#" class="imge">
                                            <span class="mask"></span>
                                            <img src="C:/팀4/사진/장르음악/가요/전체/24.jpg" width="50" height="50" alt="LA DI DA">
                                        </a>
                                    </td>
                                    <td class="info">
                                        <a href="#" class="sg songTitle">Drive (YSJ Ver.)</a>
                                        <a href="#" class="sg songArtist">이승재 (SJ) </a>
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
                                    <td class="number">25</td>
                                    <td>
                                        <a href="#" class="imge">
                                            <span class="mask"></span>
                                            <img src="C:/팀4/사진/장르음악/가요/전체/25.jpg" width="50" height="50" alt="LA DI DA">
                                        </a>
                                    </td>
                                    <td class="info">
                                        <a href="#" class="sg songTitle">그리워하다 널 미워도하다 (Feat. 묘수)</a>
                                        <a href="#" class="sg songArtist">슈슈가 외</a>
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
                                    <td class="number">26</td>
                                    <td>
                                        <a href="#" class="imge">
                                            <span class="mask"></span>
                                            <img src="C:/팀4/사진/장르음악/가요/전체/26.jpg" width="50" height="50" alt="LA DI DA">
                                        </a>
                                    </td>
                                    <td class="info">
                                        <a href="#" class="sg songTitle">흔들린 감나무</a>
                                        <a href="#" class="sg songArtist">42kgb 외</a>
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
                                    <td class="number">27</td>
                                    <td>
                                        <a href="#" class="imge">
                                            <span class="mask"></span>
                                            <img src="C:/팀4/사진/장르음악/가요/전체/27.jpg" width="50" height="50" alt="LA DI DA">
                                        </a>
                                    </td>
                                    <td class="info">
                                        <a href="#" class="sg songTitle">Gotta Go</a>
                                        <a href="#" class="sg songArtist">Diett 외</a>
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
                                    <td class="number">28</td>
                                    <td>
                                        <a href="#" class="imge">
                                            <span class="mask"></span>
                                            <img src="C:/팀4/사진/장르음악/가요/전체/28.jpg" width="50" height="50" alt="LA DI DA">
                                        </a>
                                    </td>
                                    <td class="info">
                                        <a href="#" class="sg songTitle">매화 梅花</a>
                                        <a href="#" class="sg songArtist">Winny Piggy 외</a>
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
                                    <td class="number">29</td>
                                    <td>
                                        <a href="#" class="imge">
                                            <span class="mask"></span>
                                            <img src="C:/팀4/사진/장르음악/가요/전체/29.jpg" width="50" height="50" alt="LA DI DA">
                                        </a>
                                    </td>
                                    <td class="info">
                                        <a href="#" class="sg songTitle">컬러시티 (Prod. by MOLO)</a>
                                        <a href="#" class="sg songArtist">야홍 (Yahong) 외</a>
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
                                        <td class="number">30</td>
                                        <td>
                                            <a href="#" class="imge">
                                                <span class="mask"></span>
                                                <img src="C:/팀4/사진/장르음악/가요/전체/30.jpg" width="50" height="50" alt="LA DI DA">
                                            </a>
                                        </td>
                                        <td class="info">
                                            <a href="#" class="sg songTitle">Lavender</a>
                                            <a href="#" class="sg songArtist">HYUN 외</a>
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