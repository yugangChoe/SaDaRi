<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
        <style>
            html, body, div, img, span, ul{
                margin: 0;
                padding: 0;
            }
            ul{
                list-style: none;
            }
            a {
                color: #444;
                margin: 0;
                padding: 0;
                font-size: 100%;
                text-decoration: none;
            } 
            #wrap-body {
                width: 100%;
                padding-bottom: 100px;
            }
            #body-content{
                position: relative;
            }
            .main-wrap {
                position: relative;
                width: 940px;
                margin: 10px auto 0;
            }
            .chart {
                position: relative;
                width: 680px;
            }
            .sub-title {
                display: inline-block;
                margin: 21px 0 9px;
                font: bold 18px 'Malgun Gothic','맑은 고딕',dotum,'돋움',sans-serif,'Segoe UI Symbol';
                color: #27282d;
                vertical-align: baseline;
            }
            .chart .music-list-wrap {
                position: relative;
            }
            .chart .music-list-wrap .balloon {
                display: inline-block;
                position: absolute;
                top: -15px;
                right: 0;
                height: 21px;
                padding: 0 7px;
                border-radius: 10px;
                line-height: 22px;
                background-color: #0096FF;
                color: #fff;
                opacity: 0;
                z-index: 1;
            }
            .hide {
                font: 0/0 a;
                overflow: hidden;
                border: 0 none;
                width: 0;
                height: 0;
                margin: 0;
                padding: 0;
            }  
            .chart .music-list-wrap .list-wrap {
                margin-bottom: 0;
                border-top: 1px solid #656565;
            }
            caption {
                visibility: hidden;
                height: 0;
                font: 0/0 a;
            }
            .chart .music-list-wrap .list-wrap th {
                overflow: hidden;
                height: 0;
                font-size: 0;
                line-height: 0;
                border-bottom: 0;
                text-indent: -9999px;
            }
            .music-list-wrap .list-wrap .btns .btn-listen{
                background-position: 0 -21px;
            }
            .music-list-wrap .list-wrap .btns .btn-add{
                background-position: -30px -21px;
            }
            .chart .music-list-wrap .list-wrap .hd-number {
                width: 35px;
            }
            .chart .music-list-wrap .list-wrap .hd-rank {
                width: 38px;
            }
            .chart .music-list-wrap .list-wrap .hd-info {
                text-align: left;
            }
            .music-list-wrap .list-wrap .btns {
                position: relative;
                text-align: center;
            }
            .chart .music-list-wrap .list-wrap .hd-btns {
                width: 39px;
            }
            .chart .music-list-wrap .list-wrap .hd-more {
                width: 42px;
            }
            .chart .music-list-wrap .list-wrap tr.hover td {
                height: 67px;
                background: transparent none;
            }
            .music-list-wrap .list-wrap td {
                height: 68px;
                border-bottom: 1px solid #eef1f4;
            }
            .chart .music-list-wrap .list-wrap .number {
                padding-left: 11px;
                font: italic bold 15px arial, sans-serif;
                color: #444;
            }
            .chart .music-list-wrap .list-wrap .td-rank {
                padding-right: 9px;
                font-weight: bold;
                text-align: center;
            }
            .music-list-wrap .list-wrap .rank {
                display: block;
                padding-top: 1px;
                font-size: 11px;
            }
            .music-list-wrap .list-wrap .rank-none {
                display: inline-block;
                width: 12px;
                height: 2px;
                background: url("C:/Users/최유강/Desktop/팀4 (2)/사진/이미지/list_180122.png") no-repeat -164px -111px;
                vertical-align: middle;
            }
            .music-list-wrap .list-wrap .rank-txt {
                position: absolute;
                left: -999em;
            }
            .chart .music-list-wrap .list-wrap .info {
                position: relative;
                width: 70%;
                line-height: 22px;
                padding-right: 10px;
            }
            .chart .music-list-wrap .list-wrap .cover {
                display: none;
            }
            .music-list-wrap .list-wrap .cover {
                display: block;
                position: relative;
                width: 48px;
                height: 48px;
            }
            .chart .music-list-wrap .list-wrap .info .title {
                float: left;
                width: auto;
                font-weight: normal;
            }
            .chart .music-list-wrap .list-wrap .info .artist {
                display: block;
                float: right;
                width: 30% !important;
            }
            .music-list-wrap .list-wrap .info a {
                color: #8b8b8b;
            }
            .music-list-wrap .list-wrap .info a:hover {
                font-weight: bold;
                color: black;
            }
            .ellipsis {
                white-space: nowrap;
                width: 100%;
                overflow: hidden;
                text-overflow: ellipsis;
            }
            .music-list-wrap .list-wrap .btn-basic {
                display: inline-block;
                overflow: hidden;
                position: relative;
                width: 25px;
                height: 25px;
                border: 0;
                line-height: 0;
                text-indent: -9999px;
                background: url("C:/Users/최유강/Desktop/팀4 (2)/사진/이미지/list_180122.png") transparent no-repeat 0 0;
                vertical-align: middle;
            }
            .music-list-wrap .toolbar {
                position: relative;
                height: 31px;
                padding: 7px 0 0 15px;
                border: 1px solid #f7f9fc;
                background-color: #f7f9fc;
            }
            .music-list-wrap .toolbar .btn {
                display: inline-block;
                overflow: hidden;
                position: relative;
                height: 24px;
                margin-right: 1px;
                padding: 0 6px 0 26px;
                border: 1px solid #a6afb6;
                border-radius: 4px;
                font-size: 11px;
                line-height: 23px;
                color: #27282d;
                background-color: #fff;
                box-sizing: border-box;
                vertical-align: middle;
            }
            .chart .music-list-wrap .toolbar .btn-right {
                position: absolute;
                top: 10px;
                right: 8px;
            }
            .toolbar {
                width: 940px;
                position: relative;
                height: 31px;
                padding: 7px 0 0 15px;
                border: 1px solid #f79c;
                background: #f7f9fc;
            }
            .toolbar .btn {
                display: inline-block;
                position: relative;
                height: 24px;
                margin-right: 1px;
                padding: 0 6px 0 26px;
                border: 1px solid #a6afb6;
                border-radius: 4px;
                font-size: 11px;
                line-height: 23px;
                color: #27282d;
                background-color: #fff;
                box-sizing: border-box;
                vertical-align: middle;
                text-decoration: none;
            }
            .toolbar .btn:before {
                content: '';
                display: block;
                position: absolute;
                top: 3px;
                left: 7px;
                width: 17px;
                height: 16px;
                background: url("C:/Users/최유강/Desktop/팀4 (2)/사진/이미지/list_180122.png") no-repeat 0 0;
            }
            table{
                width:940px;
            }

            /* footer */
.footer {
   position: relative;
   width: 100%;
   height: 300px;
   border-top: 1px solid black;
}

.footer .notice {
   width: 940px;
   height: 74px;
}

.footer .ft-info {
   position: relative;
   width: 940px;
   margin: 0 auto;
}

.footer .link-wrap {
   position: relative;
   width: 774px;
   padding: 12px 0 0;
}

.footer .link-wrap li {
   display: inline-block;
}

.footer .link-wrap li a {
   text-decoration: none;
}

.footer .info-company {
   position: relative;
   width: 940px;
   margin: 0 auto;
   line-height: 20px;
}

.footer .info-company .logo-campany {
   display: block;
   width: 101px;
   height: 19px;
   top: 10px;
   left: 0;
}

.footer .info-company dt {
   display: inline-block;
}

.footer .info-company dd {
   display: inline-block;
   position: relative;
   padding-right: 8px;
   font-size: 14px;
}
.wrap-head { /*첫 헤드 */
   position: relative;
   width: 100%;
   margin-bottom: 14px;
   border-bottom: 1px solid #d2d2d2;
}

.wrap-head .head-list { /* 로고 및 지니차트 리스트 */
   position: relative;
   width: 940px;
   height: 120px;
   margin: 0 auto;
   padding: 18px 0 0 159px;
}

.wrap-head .head-list .logo { /*헤드 로고 */
   display: block;
   position: absolute;
   top: 12px;
   left: -3px;
   width: 134px;
   height: 56px;
}

.wrap-head .head-list .logo a { /* 로고 안 a 태그*/
   display: block;
   width: 100%;
   height: 100%;
   background: url("C:/팀4/사진/이미지/logo_genie.png") no-repeat 0 0;
   line-height: 0;
   text-indent: -9999px;
}

.wrap-head .gnb {
   position: relative;
   width: 940px;
   margin: 0 auto;
}

.wrap-head .gnb .menu-list {
   display: block;
   position: relative;
   margin-top: 25px;
}

.wrap-head .gnb .menu-list li {
   float: left;
   position: relative;
}

.wrap-head .gnb .gnb-menu {
   display: block;
   position: relative;
   padding: 0 150px 0 0;
   font-size: 24px;
   font-weight: 700;
}

.wrap-head .sub_menu {
   /* display: none; 리스트 사라지게 */
   position: absolute;
}

.wrap-head .sub_menu .bd {
   position: relative;
   z-index: 1;
   zoom: 1;
}

.wrap-head .sub_menu .bd a {
   display: block;
   padding: 5px 16px 3px;
}
/*서브메뉴 나열 관련*/
#sub_menu_chart, #sub_menu_newest, #sub_menu_genre {
   opacity: 0;
   visibility: hidden;
   background-color: skyblue;
}

#main_menu>li:hover #sub_menu_chart, #main_menu>li:hover #sub_menu_newest,
   #main_menu>li:hover #sub_menu_genre {
   opacity: 1;
   visibility: visible;
   border-top: 3px solid skyblue;
   background-color: red;
   position: relative;
}
/* header css 끝*/
/*로그인/회원가입 css*/
.wrap-head .gnb_my {
   display: inline-block;
   width: 122px;
   height: 22px;
}

.gnb_btn {
   border: 1px solid wtesmoke;
   background-color: white;
}

#login_list {
   border: 1px solid #656565;
   opacity: 0;
   visibility: hidden;
}

.list_login {
   text-align: center;
}
        </style>
    </head>
    <body>
    <div id="wrap-body">
 <div class="wrap-head" style="z-index: 90;">
      <div class="head-list">
         <h1 class="logo">
            <a href="/Genie_Project/G_servlet?command=Main">홈으로가기</a>
         </h1>
         <div class="gnb">
            <!-- gnb -->
            <ul class="menu-list clearfix" id="main_menu">
               <li>
                  <!-- 지니차트 --> <a
                  href="/Genie_Project/G_servlet?command=Chart_top200_present"
                  class="gnb-menu">지니차트</a>
                  <div class="sub_menu" style="width: 48%;">
                     <ul id="sub_menu_chart">
                        <li><a
                           href="/Genie_Project/G_servlet?command=Chart_top200_present">TOP200</a></li>
                        <li><a
                           href="/Genie_Project/G_servlet?command=Chart_genre_kpop_day">장르별
                              차트</a></li>
                        <li><a href="/Genie_Project/G_servlet?command=Chart_MV_day">뮤직비디오
                              차트</a></li>
                     </ul>
                  </div>
               </li>
               <!-- 지니차트끝 -->

               <li>
                  <!-- 최신음악 --> <a
                  href="/Genie_Project/G_servlet?command=Newest_song_hot"
                  class="gnb-menu">최신음악</a>
                  <div class="sub_menu" style="width: 38%;">
                     <ul id="sub_menu_newest">
                        <li><a
                           href="/Genie_Project/G_servlet?command=Newest_song_hot">최신
                              곡</a></li>
                        <li><a
                           href="/Genie_Project/G_servlet?command=Newest_album_hot">최신
                              앨범</a></li>
                     </ul>
                  </div>
               </li>
               <!-- 최신음악 끝-->

               <li>
                  <!-- 장르음악 --> <a
                  href="/Genie_Project/G_servlet?command=Genre_kpop_all"
                  class="gnb-menu">장르음악</a>
                  <div class="sub_menu" style="width: 23%;">
                     <ul id="sub_menu_genre">
                        <li><a href="/Genie_Project/G_servlet?command=Genre_kpop_all">가요</a></li>
                        <li><a href="/Genie_Project/G_servlet?command=Genre_pop_all">POP</a></li>
                        <li><a href="/Genie_Project/G_servlet?command=Genre_OST_all">OST</a></li>
                        <li><a href="/Genie_Project/G_servlet?command=Genre_trot">트롯</a></li>
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
                              <input placeholder="아이디" size="25">
                           </div>
                        </li>
                        <li>
                           <div>
                              <input placeholder="비밀번호" size="25">
                           </div>
                        </li>
                     </ul>
                     <!-- list_login -->
                     <div class="login-form">
                        <a href="#" class="btn-login" title="새창 열림"
                           onclick="loginPopup(); return false;"> <span class="txt">
                              <span class="hide">genie</span>로그인
                        </span>
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
        <div class="container">
            <h2>인기순위</h2>
            <div id="myCarousel" class="carousel slide" data-ride="carousel">
              <!-- Indicators -->
              <ol class="carousel-indicators">
                <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                <li data-target="#myCarousel" data-slide-to="1"></li>
                <li data-target="#myCarousel" data-slide-to="2"></li>
                <li data-target="#myCarousel" data-slide-to="3"></li>
                <li data-target="#myCarousel" data-slide-to="4"></li>
                <li data-target="#myCarousel" data-slide-to="5"></li>
                <li data-target="#myCarousel" data-slide-to="6"></li>
                <li data-target="#myCarousel" data-slide-to="7"></li>
                <li data-target="#myCarousel" data-slide-to="8"></li>
                <li data-target="#myCarousel" data-slide-to="9"></li>
                <li data-target="#myCarousel" data-slide-to="10"></li>
              </ol>
          
              <!-- Wrapper for slides -->
 <div class="carousel-inner">
          
                <div class="item active">
                  <img src="/Genie_Project/img/m/m1.png" alt="다시여기바닷가" style="margin-left:20%; width:60%; height: 400px;">
                </div>
          
                <div class="item">
                  <img src="/Genie_Project/img/m/m2.png" alt="눈누난나" style="margin-left:20%; width:60%; height: 400px;">
                </div>
                <div class="item">
                  <img src="/Genie_Project/img/m/m3.png" alt="그 여름을 틀어줘" style="margin-left:20%; width:60%; height: 400px;">
                </div>
                <div class="item">
                  <img src="/Genie_Project/img/m/m4.png" alt="LINDA(Feat. 윤미래)" style="margin-left:20%; width:60%; height: 400px;">
                  <div class="carousel-caption">
                  </div>
                </div>
                <div class="item">
                  <img src="/Genie_Project/img/m/m5.png" alt="마리아" style="margin-left:20%; width:60%; height: 400px;">
                </div>
                <div class="item">
                  <img src="/Genie_Project/img/m/m6.png" alt="신난다(Feat. 마마무)" style="margin-left:20%; width:60%; height: 400px;">
                </div>
                <div class="item">
                  <img src="/Genie_Project/img/m/m7.png" alt="How You Like That" style="margin-left:20%; width:60%; height: 400px;">
                </div>
              
                <div class="item">
                  <img src="/Genie_Project/img/m/m8.png" alt="홀로" style="margin-left:20%; width:60%; height: 400px;">
                </div>
                <div class="item">
                  <img src="/Genie_Project/img/m/m9.png" alt="When We Disco" style="margin-left:20%; width:60%; height: 400px;">
                  <div class="carousel-caption">
                  </div>
                </div>
                <div class="item">
                  <img src="/Genie_Project/img/m/m10.png" alt="아틀란티스 소녀" style="margin-left:20%; width:60%; height: 400px;">
                </div>
            
              </div>
          
              <!-- Left and right controls -->
              <a class="left carousel-control" href="#myCarousel" data-slide="prev">
                <span class="glyphicon glyphicon-chevron-left"></span>
                <span class="sr-only">Previous</span>
              </a>
              <a class="right carousel-control" href="#myCarousel" data-slide="next">
                <span class="glyphicon glyphicon-chevron-right"></span>
                <span class="sr-only">Next</span>
              </a>
            </div>
          </div>
        <div id="body-content">
            <div class="main-wrap">
                <div class="chart">
                    <div class="chart">
                        <h2 class="sub-title">
                            <a href="#">실시간 차트</a>
                        </h2>
                        <%Date nowTime = new Date();
                           SimpleDateFormat sf = new SimpleDateFormat("yyyy.mm.dd a hh:mm");
                        %>
                        <p class="date"><%=sf.format(nowTime) %></p>
                        <div class="music-list-wrap">
                            <!-- <span class="balloon"><span class="hide">더보기 버튼으로 </span>순위변동 한눈에 보기</span> -->
                            <table class="list-wrap">
                                <caption>곡 리스트</caption>
                                <thead>
                                    <tr>
                                        <th scope="col" class="hd-number">순위</th>
                                        <th scope="col" class="hd-rank">순위변동</th>
                                        <th scope="col" class="hd-info">곡정보</th>
                                        <th scope="col" class="hd-btns">듣기</th>
                                        <th scope="col" class="hd-btns">추가</th>
                                        <!-- <th scope="col" class="hd-more">더보기</th> -->
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr class="list">
                                        <td class="number">1</td>
                                        <td class="td-rank"><span class="rank"><span class=" rank-none "><span class="rank-txt">변동 없음</span></span></span></td>
                                        <td class="info">
                                            <a href="#" class="cover" onclick=""><span class="mask"></span><img src="/Genie_Project/img/song/1.jpg" alt="앨범 제목이 들어갑니다."></a>
                                            <a href="#" class="title ellipsis" title="새창 열림" onclick="">다시여기바닷가</a>
                                            <a href="#" class="artist ellipsis" onclick="">싹쓰리</a>
                                        </td>
                                        <td class="btns"><a href="#" class="btn-basic btn-listen" title="새창 열림" onclick="">듣기</a></td>
                                        <td class="btns"><a href="#" class="btn-basic btn-add" title="새창 열림" onclick="">재생목록에 추가</a></td>
                                    </tr>
                                    <tr class="list">
                                        <td class="number">2</td>
                                        <td class="td-rank"><span class="rank"><span class=" rank-none "><span class="rank-txt">변동 없음</span></span></span></td>
                                        <td class="info">
                                            <a href="#" class="cover" onclick=""><span class="mask"></span><img src="/Genie_Project/img/song/2.jpg" alt="앨범 제목이 들어갑니다."></a>
                                            <a href="#" class="title ellipsis" title="새창 열림" onclick="">눈누난나</a>
                                            <a href="#" class="artist ellipsis" onclick="">제시</a>
                                        </td>
                                        <td class="btns"><a href="#" class="btn-basic btn-listen" title="새창 열림" onclick="">듣기</a></td>
                                        <td class="btns"><a href="#" class="btn-basic btn-add" title="새창 열림" onclick="">재생목록에 추가</a></td>
                                    </tr>
                                    <tr class="list">
                                        <td class="number">3</td>
                                        <td class="td-rank"><span class="rank"><span class=" rank-none "><span class="rank-txt">변동 없음</span></span></span></td>
                                        <td class="info">
                                            <a href="#" class="cover" onclick=""><span class="mask"></span><img src="/Genie_Project/img/song/3.jpg" alt="앨범 제목이 들어갑니다."></a>
                                            <a href="#" class="title ellipsis" title="새창 열림" onclick="">그 여름을 틀어줘</a>
                                            <a href="#" class="artist ellipsis" onclick="">싹쓰리</a>
                                        </td>
                                        <td class="btns"><a href="#" class="btn-basic btn-listen" title="새창 열림" onclick="">듣기</a></td>
                                        <td class="btns"><a href="#" class="btn-basic btn-add" title="새창 열림" onclick="">재생목록에 추가</a></td>
                                    </tr>
                                    <tr class="list">
                                        <td class="number">4</td>
                                        <td class="td-rank"><span class="rank"><span class=" rank-none "><span class="rank-txt">변동 없음</span></span></span></td>
                                        <td class="info">
                                            <a href="#" class="cover" onclick=""><span class="mask"></span><img src="/Genie_Project/img/song/4.jpg" alt="앨범 제목이 들어갑니다."></a>
                                            <a href="#" class="title ellipsis" title="새창 열림" onclick="">LINDA(Feat. 윤미래)</a>
                                            <a href="#" class="artist ellipsis" onclick="">린다G</a>
                                        </td>
                                        <td class="btns"><a href="#" class="btn-basic btn-listen" title="새창 열림" onclick="">듣기</a></td>
                                        <td class="btns"><a href="#" class="btn-basic btn-add" title="새창 열림" onclick="">재생목록에 추가</a></td>
                                    </tr>
                                    <tr class="list">
                                        <td class="number">5</td>
                                        <td class="td-rank"><span class="rank"><span class=" rank-none "><span class="rank-txt">변동 없음</span></span></span></td>
                                        <td class="info">
                                            <a href="#" class="cover" onclick=""><span class="mask"></span><img src="/Genie_Project/img/song/5.jpg" alt="앨범 제목이 들어갑니다."></a>
                                            <a href="#" class="title ellipsis" title="새창 열림" onclick="">마리아</a>
                                            <a href="#" class="artist ellipsis" onclick="">화사</a>
                                        </td>
                                        <td class="btns"><a href="#" class="btn-basic btn-listen" title="새창 열림" onclick="">듣기</a></td>
                                        <td class="btns"><a href="#" class="btn-basic btn-add" title="새창 열림" onclick="">재생목록에 추가</a></td>
                                    </tr>
                                    <tr class="list">
                                        <td class="number">6</td>
                                        <td class="td-rank"><span class="rank"><span class=" rank-none "><span class="rank-txt">변동 없음</span></span></span></td>
                                        <td class="info">
                                            <a href="#" class="cover" onclick=""><span class="mask"></span><img src="/Genie_Project/img/song/6.jpg" alt="앨범 제목이 들어갑니다."></a>
                                            <a href="#" class="title ellipsis" title="새창 열림" onclick="">신난다(Feat. 마마무)</a>
                                            <a href="#" class="artist ellipsis" onclick="">비룡</a>
                                        </td>
                                        <td class="btns"><a href="#" class="btn-basic btn-listen" title="새창 열림" onclick="">듣기</a></td>
                                        <td class="btns"><a href="#" class="btn-basic btn-add" title="새창 열림" onclick="">재생목록에 추가</a></td>
                                    </tr>
                                    <tr class="list">
                                        <td class="number">7</td>
                                        <td class="td-rank"><span class="rank"><span class=" rank-none "><span class="rank-txt">변동 없음</span></span></span></td>
                                        <td class="info">
                                            <a href="#" class="cover" onclick=""><span class="mask"></span><img src="/Genie_Project/img/song/7.jpg" alt="앨범 제목이 들어갑니다."></a>
                                            <a href="#" class="title ellipsis" title="새창 열림" onclick="">How You Like That</a>
                                            <a href="#" class="artist ellipsis" onclick="">BLACKPINK</a>
                                        </td>
                                        <td class="btns"><a href="#" class="btn-basic btn-listen" title="새창 열림" onclick="">듣기</a></td>
                                        <td class="btns"><a href="#" class="btn-basic btn-add" title="새창 열림" onclick="">재생목록에 추가</a></td>
                                    </tr>
                                    <tr class="list">
                                        <td class="number">8</td>
                                        <td class="td-rank"><span class="rank"><span class=" rank-none "><span class="rank-txt">변동 없음</span></span></span></td>
                                        <td class="info">
                                            <a href="#" class="cover" onclick=""><span class="mask"></span><img src="/Genie_Project/img/song/8.jpg" alt="앨범 제목이 들어갑니다."></a>
                                            <a href="#" class="title ellipsis" title="새창 열림" onclick="">홀로</a>
                                            <a href="#" class="artist ellipsis" onclick="">이하이</a>
                                        </td>
                                        <td class="btns"><a href="#" class="btn-basic btn-listen" title="새창 열림" onclick="">듣기</a></td>
                                        <td class="btns"><a href="#" class="btn-basic btn-add" title="새창 열림" onclick="">재생목록에 추가</a></td>
                                    </tr>
                                    <tr class="list">
                                        <td class="number">9</td>
                                        <td class="td-rank"><span class="rank"><span class=" rank-none "><span class="rank-txt">변동 없음</span></span></span></td>
                                        <td class="info">
                                            <a href="#" class="cover" onclick=""><span class="mask"></span><img src="/Genie_Project/img/song/9.jpg" alt="앨범 제목이 들어갑니다."></a>
                                            <a href="#" class="title ellipsis" title="새창 열림" onclick="">When We Disco</a>
                                            <a href="#" class="artist ellipsis" onclick="">박진영</a>
                                        </td>
                                        <td class="btns"><a href="#" class="btn-basic btn-listen" title="새창 열림" onclick="">듣기</a></td>
                                        <td class="btns"><a href="#" class="btn-basic btn-add" title="새창 열림" onclick="">재생목록에 추가</a></td>
                                    </tr>
                                    <tr class="list">
                                        <td class="number">10</td>
                                        <td class="td-rank"><span class="rank"><span class=" rank-none "><span class="rank-txt">변동 없음</span></span></span></td>
                                        <td class="info">
                                            <a href="#" class="cover" onclick=""><span class="mask"></span><img src="/Genie_Project/img/song/10.jpg" alt="앨범 제목이 들어갑니다."></a>
                                            <a href="#" class="title ellipsis" title="새창 열림" onclick="">아틀란티스 소녀</a>
                                            <a href="#" class="artist ellipsis" onclick="">볼빨간사춘기</a>
                                        </td>
                                        <td class="btns"><a href="#" class="btn-basic btn-listen" title="새창 열림" onclick="">듣기</a></td>
                                        <td class="btns"><a href="#" class="btn-basic btn-add" title="새창 열림" onclick="">재생목록에 추가</a></td>
                                    </tr>
                                </tbody>
                            </table>
                            <div class="toolbar">
                                <a href="#" class="btn btn-listen" title="재생">듣기</a>
                                <a href="#" class="btn btn-add" title="추가">전체추가</a>
                                <a href="/Genie_Project/G_servlet?command=Chart_top200_present" class="btn-right">TOP200 바로가기 &gt;</a>
                            </div>
                        </div>
                        <!-- music-list-wrap -->
                    </div>
                    <!--chart-->
                </div>
                <!--chart -->
            </div>
            <!-- main-wrap -->
        </div>
        <!--body-content-->
    </div>
    <!-- wrap-body -->
</div>
<!--wrap-main-->
<jsp:include page="/Footer.jsp"/>
    </body>
</html>