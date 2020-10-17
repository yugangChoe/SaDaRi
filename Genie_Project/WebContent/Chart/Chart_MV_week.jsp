<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="/Genie_Project/css/Genie.css" rel="stylesheet" type="text/css">
<title>Chart_MV_week</title>
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
        <div class="chart-date">
            <div class="date">
                <h3>
                    <span id="inc_date">2020.09</span>
                </h3>
                <a href="#">
                    <img src="C:/팀4/사진/이미지/time.png" alt="시간 보기">
                </a>
            </div><!-- date -->
            <ul class="select-term">
                <li><a href="/Genie_Project/G_servlet?command=Chart_MV_day" class="radius ">일간</a></li>
                <li><a href="/Genie_Project/G_servlet?command=Chart_MV_week" class="radius ">주간</a></li>
                <li><a href="/Genie_Project/G_servlet?command=Chart_MV_month" class="radius ">월간</a></li>
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
                            <th scope="col" class="hd-number">번호</th>
                            <!-- <th scope="col" class="hd-check"><span class="hide">뮤직비디오 이미지</span></th> -->
                            <th scope="col" class="hd-info">영상정보</th>
                            <th scope="col" class="hd-large-btns">보기</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr class="list">
                            <td class="number">1
                                <span class="rank">
                                        <span class="rank"><span class="rank-none"><span class="hide">유지</span></span></span>
                                </span>
                            </td>
                            <td>
                                <a href="#" class="cover-mv" title="Dynamite">
                                    <span class="mask"></span>
                                    <img src="C:/팀4/사진/지니차트/뮤직비디오차트/일간2020924/1.jpg" alt="Dynamite">
                                    <span class="duration">03:47</span>
                                </a>
                            </td>
                            <td class="info">
                                <a href="#" class="title">Dynamite</a>
                                <a href="#" class="artist">방탄소년단</a>
                            </td>
                            <td class="btns"><a href="#" class="btn-img btn-view" title="보기">보기</a></td>
                        </tr>
                        <tr class="list">
                            <td class="number">2
                                <span class="rank">
                                        <span class="rank"><span class="rank-none"><span class="hide">유지</span></span></span>
                                </span>
                            </td>
                            <td>
                                <a href="#" class="cover-mv" title="When We Disco">
                                    <span class="mask"></span>
                                    <img src="C:/팀4/사진/지니차트/뮤직비디오차트/일간2020924/2.jpg"alt="When We Disco">
                                    <span class="duration">04:17</span>
                                </a>
                            </td>
                            <td class="info">
                                <a href="#" class="title">When We Disco</a>
                                <a href="#" class="artist">박진영</a>
                            </td>
                            <td class="btns"><a href="#" class="btn-img btn-view" title="보기">보기</a></td>
                        </tr><!-- tr-list -->
                        <tr class="list">
                            <td class="number">3
                                <span class="rank">
                                        <span class="rank"><span class="rank-none"><span class="hide">유지</span></span></span>
                                </span>
                            </td>
                            <td>
                                <a href="#" class="cover-mv" title="눈누난나">
                                    <span class="mask"></span>
                                    <img src="C:/팀4/사진/지니차트/뮤직비디오차트/일간2020924/3.jpg"alt="눈누난나">
                                    <span class="duration">03:19</span>
                                </a>
                            </td>
                            <td class="info">
                                <a href="#" class="title">눈누난나</a>
                                <a href="#" class="artist">제시</a>
                            </td>
                            <td class="btns"><a href="#" class="btn-img btn-view" title="보기">보기</a></td>
                        </tr><!-- tr-list -->
                        <tr class="list">
                            <td class="number">4
                                <span class="rank">
                                        <span class="rank"><span class="rank-none"><span class="hide">유지</span></span></span>
                                </span>
                            </td>
                            <td>
                                <a href="#" class="cover-mv" title="Ice Cream">
                                    <span class="mask"></span>
                                    <img src="C:/팀4/사진/지니차트/뮤직비디오차트/일간2020924/4.jpg"alt="Ice Cream">
                                    <span class="duration">03:49</span>
                                </a>
                            </td>
                            <td class="info">
                                <a href="#" class="title">Ice Cream</a>
                                <a href="#" class="artist">BLACKPINK</a>
                            </td>
                            <td class="btns"><a href="#" class="btn-img btn-view" title="보기">보기</a></td>
                        </tr><!-- tr-list -->
                        <tr class="list">
                            <td class="number">5
                                <span class="rank">
                                        <span class="rank"><span class="rank-none"><span class="hide">유지</span></span></span>
                                </span>
                            </td>
                            <td>
                                <a href="#" class="cover-mv" title="숲의 아이">
                                    <span class="mask"></span>
                                    <img src="C:/팀4/사진/지니차트/뮤직비디오차트/일간2020924/5.jpg"alt="숲의 아이">
                                    <span class="duration">04:21</span>
                                </a>
                            </td>
                            <td class="info">
                                <a href="#" class="title">숲의 아이</a>
                                <a href="#" class="artist">DBDK</a>
                            </td>
                            <td class="btns"><a href="#" class="btn-img btn-view" title="보기">보기</a></td>
                        </tr><!-- tr-list -->
                        <tr class="list">
                            <td class="number">6
                                <span class="rank">
                                        <span class="rank"><span class="rank-none"><span class="hide">유지</span></span></span>
                                </span>
                            </td>
                            <td>
                                <a href="#" class="cover-mv" title="WANNA BE MYSELF">
                                    <span class="mask"></span>
                                    <img src="C:/팀4/사진/지니차트/뮤직비디오차트/일간2020924/6.jpg"alt="WANNA BE MYSELF">
                                    <span class="duration">04:21</span>
                                </a>
                            </td>
                            <td class="info">
                                <a href="#" class="title">WANNA BE MYSELF/a>
                                <a href="#" class="artist">마마무</a>
                            </td>
                            <td class="btns"><a href="#" class="btn-img btn-view" title="보기">보기</a></td>
                        </tr><!-- tr-list -->
                        <tr class="list">
                            <td class="number">7
                                <span class="rank">
                                        <span class="rank"><span class="rank-none"><span class="hide">유지</span></span></span>
                                </span>
                            </td>
                            <td>
                                <a href="#" class="cover-mv" title="마리아 (Maria)">
                                    <span class="mask"></span>
                                    <img src="C:/팀4/사진/지니차트/뮤직비디오차트/일간2020924/7.jpg"alt="마리아 (Maria)">
                                    <span class="duration">05:13</span>
                                </a>
                            </td>
                            <td class="info">
                                <a href="#" class="title">마리아 (Maria)</a>
                                <a href="#" class="artist">화사</a>
                            </td>
                            <td class="btns"><a href="#" class="btn-img btn-view" title="보기">보기</a></td>
                        </tr><!-- tr-list -->
                        <tr class="list">
                            <td class="number">8
                                <span class="rank">
                                        <span class="rank"><span class="rank-none"><span class="hide">유지</span></span></span>
                                </span>
                            </td>
                            <td>
                                <a href="#" class="cover-mv" title="축하해">
                                    <span class="mask"></span>
                                    <img src="C:/팀4/사진/지니차트/뮤직비디오차트/일간2020924/8.jpg"alt="축하해">
                                    <span class="duration">04:21</span>
                                </a>
                            </td>
                            <td class="info">
                                <a href="#" class="title">축하해</a>
                                <a href="#" class="artist">오반</a>
                            </td>
                            <td class="btns"><a href="#" class="btn-img btn-view" title="보기">보기</a></td>
                        </tr><!-- tr-list -->
                        <tr class="list">
                            <td class="number">9
                                <span class="rank">
                                        <span class="rank"><span class="rank-none"><span class="hide">유지</span></span></span>
                                </span>
                            </td>
                            <td>
                                <a href="#" class="cover-mv" title="다시 여기 바닷가">
                                    <span class="mask"></span>
                                    <img src="C:/팀4/사진/지니차트/뮤직비디오차트/일간2020924/9.jpg"alt="다시 여기 바닷가">
                                    <span class="duration">03:47</span>
                                </a>
                            </td>
                            <td class="info">
                                <a href="#" class="title">다시 여기 바닷가</a>
                                <a href="#" class="artist">싹쓰리</a>
                            </td>
                            <td class="btns"><a href="#" class="btn-img btn-view" title="보기">보기</a></td>
                        </tr><!-- tr-list -->
                        <tr class="list">
                            <td class="number">10
                                <span class="rank">
                                        <span class="rank"><span class="rank-none"><span class="hide">유지</span></span></span>
                                </span>
                            </td>
                            <td>
                                <a href="#" class="cover-mv" title="Feel Good">
                                    <span class="mask"></span>
                                    <img src="C:/팀4/사진/지니차트/뮤직비디오차트/일간2020924/10.jpg"alt="Feel Good">
                                    <span class="duration">03:11</span>
                                </a>
                            </td>
                            <td class="info">
                                <a href="#" class="title">Feel Good</a>
                                <a href="#" class="artist">프로미스나인</a>
                            </td>
                            <td class="btns"><a href="#" class="btn-img btn-view" title="보기">보기</a></td>
                        </tr><!-- tr-list -->
                        <tr class="list">
                            <td class="number">11
                                <span class="rank">
                                        <span class="rank"><span class="rank-none"><span class="hide">유지</span></span></span>
                                </span>
                            </td>
                            <td>
                                <a href="#" class="cover-mv" title="Not Shy">
                                    <span class="mask"></span>
                                    <img src="C:/팀4/사진/지니차트/뮤직비디오차트/일간2020924/11.jpg"alt="Not Shy">
                                    <span class="duration">03:30</span>
                                </a>
                            </td>
                            <td class="info">
                                <a href="#" class="title">Not Shy</a>
                                <a href="#" class="artist">ITZY(있지)</a>
                            </td>
                            <td class="btns"><a href="#" class="btn-img btn-view" title="보기">보기</a></td>
                        </tr><!-- tr-list -->
                        <tr class="list">
                            <td class="number">12
                                <span class="rank">
                                        <span class="rank"><span class="rank-none"><span class="hide">유지</span></span></span>
                                </span>
                            </td>
                            <td>
                                <a href="#" class="cover-mv" title="How You Like That">
                                    <span class="mask"></span>
                                    <img src="C:/팀4/사진/지니차트/뮤직비디오차트/일간2020924/12.jpg"alt="How You Like That">
                                    <span class="duration">03:21</span>
                                </a>
                            </td>
                            <td class="info">
                                <a href="#" class="title">How You Like That</a>
                                <a href="#" class="artist">BLACKPINK</a>
                            </td>
                            <td class="btns"><a href="#" class="btn-img btn-view" title="보기">보기</a></td>
                        </tr><!-- tr-list -->
                        <tr class="list">
                            <td class="number">13
                                <span class="rank">
                                        <span class="rank"><span class="rank-none"><span class="hide">유지</span></span></span>
                                </span>
                            </td>
                            <td>
                                <a href="#" class="cover-mv" title="19금WAP">
                                    <span class="mask"></span>
                                    <img src="C:/팀4/사진/지니차트/뮤직비디오차트/일간2020924/13.jpg"alt="19금WAP">
                                    <span class="duration">03:09</span>
                                </a>
                            </td>
                            <td class="info">
                                <a href="#" class="title">19금WAP</a>
                                <a href="#" class="artist">Cardi B</a>
                            </td>
                            <td class="btns"><a href="#" class="btn-img btn-view" title="보기">보기</a></td>
                        </tr><!-- tr-list -->
                        <tr class="list">
                            <td class="number">14
                                <span class="rank">
                                        <span class="rank"><span class="rank-none"><span class="hide">유지</span></span></span>
                                </span>
                            </td>
                            <td>
                                <a href="#" class="cover-mv" title="깡">
                                    <span class="mask"></span>
                                    <img src="C:/팀4/사진/지니차트/뮤직비디오차트/일간2020924/14.jpg"alt="깡">
                                    <span class="duration">03:33</span>
                                </a>
                            </td>
                            <td class="info">
                                <a href="#" class="title">깡</a>
                                <a href="#" class="artist">비</a>
                            </td>
                            <td class="btns"><a href="#" class="btn-img btn-view" title="보기">보기</a></td>
                        </tr><!-- tr-list -->
                        <tr class="list">
                            <td class="number">15
                                <span class="rank">
                                        <span class="rank"><span class="rank-none"><span class="hide">유지</span></span></span>
                                </span>
                            </td>
                            <td>
                                <a href="#" class="cover-mv" title="Down">
                                    <span class="mask"></span>
                                    <img src="C:/팀4/사진/지니차트/뮤직비디오차트/일간2020924/15.jpg"alt="Down">
                                    <span class="duration">03:47</span>
                                </a>
                            </td>
                            <td class="info">
                                <a href="#" class="title">Down</a>
                                <a href="#" class="artist">제시</a>
                            </td>
                            <td class="btns"><a href="#" class="btn-img btn-view" title="보기">보기</a></td>
                        </tr><!-- tr-list -->
                        <tr class="list">
                            <td class="number">16
                                <span class="rank">
                                        <span class="rank"><span class="rank-none"><span class="hide">유지</span></span></span>
                                </span>
                            </td>
                            <td>
                                <a href="#" class="cover-mv" title="작은 것들을 위한 시">
                                    <span class="mask"></span>
                                    <img src="C:/팀4/사진/지니차트/뮤직비디오차트/일간2020924/16.jpg"alt="작은 것들을 위한 시">
                                    <span class="duration">03:47</span>
                                </a>
                            </td>
                            <td class="info">
                                <a href="#" class="title">작은 것들을 위한 시</a>
                                <a href="#" class="artist">방탄소년단</a>
                            </td>
                            <td class="btns"><a href="#" class="btn-img btn-view" title="보기">보기</a></td>
                        </tr><!-- tr-list -->
                        <tr class="list">
                            <td class="number">17
                                <span class="rank">
                                        <span class="rank"><span class="rank-none"><span class="hide">유지</span></span></span>
                                </span>
                            </td>
                            <td>
                                <a href="#" class="cover-mv" title="Summer Hate">
                                    <span class="mask"></span>
                                    <img src="C:/팀4/사진/지니차트/뮤직비디오차트/일간2020924/17.jpg"alt="Summer Hate">
                                    <span class="duration">03:44</span>
                                </a>
                            </td>
                            <td class="info">
                                <a href="#" class="title">Summer Hate</a>
                                <a href="#" class="artist">지코(ZICO)</a>
                            </td>
                            <td class="btns"><a href="#" class="btn-img btn-view" title="보기">보기</a></td>
                        </tr><!-- tr-list -->
                        <tr class="list">
                            <td class="number">18
                                <span class="rank">
                                        <span class="rank"><span class="rank-none"><span class="hide">유지</span></span></span>
                                </span>
                            </td>
                            <td>
                                <a href="#" class="cover-mv" title="FEVER">
                                    <span class="mask"></span>
                                    <img src="C:/팀4/사진/지니차트/뮤직비디오차트/일간2020924/18.jpg"alt="FEVER">
                                    <span class="duration">04:40</span>
                                </a>
                            </td>
                            <td class="info">
                                <a href="#" class="title">FEVER</a>
                                <a href="#" class="artist">박진영</a>
                            </td>
                            <td class="btns"><a href="#" class="btn-img btn-view" title="보기">보기</a></td>
                        </tr><!-- tr-list -->
                        <tr class="list">
                            <td class="number">19
                                <span class="rank">
                                        <span class="rank"><span class="rank-none"><span class="hide">유지</span></span></span>
                                </span>
                            </td>
                            <td>
                                <a href="#" class="cover-mv" title="누나와따">
                                    <span class="mask"></span>
                                    <img src="C:/팀4/사진/지니차트/뮤직비디오차트/일간2020924/19.jpg"alt="누나와따">
                                    <span class="duration">03:47</span>
                                </a>
                            </td>
                            <td class="info">
                                <a href="#" class="title">누나와따</a>
                                <a href="#" class="artist">Queen WA$ABII</a>
                            </td>
                            <td class="btns"><a href="#" class="btn-img btn-view" title="보기">보기</a></td>
                        </tr><!-- tr-list -->
                        <tr class="list">
                            <td class="number">20
                                <span class="rank">
                                        <span class="rank"><span class="rank-none"><span class="hide">유지</span></span></span>
                                </span>
                            </td>
                            <td>
                                <a href="#" class="cover-mv" title="에잇">
                                    <span class="mask"></span>
                                    <img src="C:/팀4/사진/지니차트/뮤직비디오차트/일간2020924/20.jpg"alt="에잇">
                                    <span class="duration">03:16</span>
                                </a>
                            </td>
                            <td class="info">
                                <a href="#" class="title">에잇</a>
                                <a href="#" class="artist">아이유</a>
                            </td>
                            <td class="btns"><a href="#" class="btn-img btn-view" title="보기">보기</a></td>
                        </tr><!-- tr-list -->
                        <tr class="list">
                            <td class="number">21
                                <span class="rank">
                                        <span class="rank"><span class="rank-none"><span class="hide">유지</span></span></span>
                                </span>
                            </td>
                            <td>
                                <a href="#" class="cover-mv" title="니가 왜 거기서 나와">
                                    <span class="mask"></span>
                                    <img src="C:/팀4/사진/지니차트/뮤직비디오차트/일간2020924/21.jpg" alt="니가 왜 거기서 나와">
                                    <span class="duration">03:42</span>
                                </a>
                            </td>
                            <td class="info">
                                <a href="#" class="title">니가 왜 거기서 나와</a>
                                <a href="#" class="artist">영탁</a>
                            </td>
                            <td class="btns"><a href="#" class="btn-img btn-view" title="보기">보기</a></td>
                        </tr>
                        <tr class="list">
                            <td class="number">22
                                <span class="rank">
                                        <span class="rank"><span class="rank-none"><span class="hide">유지</span></span></span>
                                </span>
                            </td>
                            <td>
                                <a href="#" class="cover-mv" title="Back Door">
                                    <span class="mask"></span>
                                    <img src="C:/팀4/사진/지니차트/뮤직비디오차트/일간2020924/22.jpg"alt="Back Door">
                                    <span class="duration">03:47</span>
                                </a>
                            </td>
                            <td class="info">
                                <a href="#" class="title">Back Door</a>
                                <a href="#" class="artist">Stray Kids</a>
                            </td>
                            <td class="btns"><a href="#" class="btn-img btn-view" title="보기">보기</a></td>
                        </tr><!-- tr-list -->
                        <tr class="list">
                            <td class="number">23
                                <span class="rank">
                                        <span class="rank"><span class="rank-none"><span class="hide">유지</span></span></span>
                                </span>
                            </td>
                            <td>
                                <a href="#" class="cover-mv" title="호랑이">
                                    <span class="mask"></span>
                                    <img src="C:/팀4/사진/지니차트/뮤직비디오차트/일간2020924/23.jpg"alt="호랑이">
                                    <span class="duration">03:39</span>
                                </a>
                            </td>
                            <td class="info">
                                <a href="#" class="title">호랑이</a>
                                <a href="#" class="artist">SuperM </a>
                            </td>
                            <td class="btns"><a href="#" class="btn-img btn-view" title="보기">보기</a></td>
                        </tr><!-- tr-list -->
                        <tr class="list">
                            <td class="number">24
                                <span class="rank">
                                        <span class="rank"><span class="rank-none"><span class="hide">유지</span></span></span>
                                </span>
                            </td>
                            <td>
                                <a href="#" class="cover-mv" title="내일은 고백할게">
                                    <span class="mask"></span>
                                    <img src="C:/팀4/사진/지니차트/뮤직비디오차트/일간2020924/24.jpg"alt="내일은 고백할게">
                                    <span class="duration">03:23</span>
                                </a>
                            </td>
                            <td class="info">
                                <a href="#" class="title">내일은 고백할게</a>
                                <a href="#" class="artist">태연</a>
                            </td>
                            <td class="btns"><a href="#" class="btn-img btn-view" title="보기">보기</a></td>
                        </tr><!-- tr-list -->
                        <tr class="list">
                            <td class="number">25
                                <span class="rank">
                                        <span class="rank"><span class="rank-none"><span class="hide">유지</span></span></span>
                                </span>
                            </td>
                            <td>
                                <a href="#" class="cover-mv" title="Blueming">
                                    <span class="mask"></span>
                                    <img src="C:/팀4/사진/지니차트/뮤직비디오차트/일간2020924/25.jpg"alt="Blueming">
                                    <span class="duration">04:21</span>
                                </a>
                            </td>
                            <td class="info">
                                <a href="#" class="title">Blueming</a>
                                <a href="#" class="artist">아이유</a>
                            </td>
                            <td class="btns"><a href="#" class="btn-img btn-view" title="보기">보기</a></td>
                        </tr><!-- tr-list -->
                        <tr class="list">
                            <td class="number">26
                                <span class="rank">
                                        <span class="rank"><span class="rank-none"><span class="hide">유지</span></span></span>
                                </span>
                            </td>
                            <td>
                                <a href="#" class="cover-mv" title="Criminal">
                                    <span class="mask"></span>
                                    <img src="C:/팀4/사진/지니차트/뮤직비디오차트/일간2020924/26.jpg"alt="Criminal">
                                    <span class="duration">03:37</span>
                                </a>
                            </td>
                            <td class="info">
                                <a href="#" class="title">Criminal</a>
                                <a href="#" class="artist">태민</a>
                            </td>
                            <td class="btns"><a href="#" class="btn-img btn-view" title="보기">보기</a></td>
                        </tr><!-- tr-list -->
                        <tr class="list">
                            <td class="number">27
                                <span class="rank">
                                        <span class="rank"><span class="rank-none"><span class="hide">유지</span></span></span>
                                </span>
                            </td>
                            <td>
                                <a href="#" class="cover-mv" title="덤디덤디">
                                    <span class="mask"></span>
                                    <img src="C:/팀4/사진/지니차트/뮤직비디오차트/일간2020924/27.jpg"alt="덤디덤디">
                                    <span class="duration">05:13</span>
                                </a>
                            </td>
                            <td class="info">
                                <a href="#" class="title">덤디덤디</a>
                                <a href="#" class="artist">(여자)아이들</a>
                            </td>
                            <td class="btns"><a href="#" class="btn-img btn-view" title="보기">보기</a></td>
                        </tr><!-- tr-list -->
                        <tr class="list">
                            <td class="number">28
                                <span class="rank">
                                        <span class="rank"><span class="rank-none"><span class="hide">유지</span></span></span>
                                </span>
                            </td>
                            <td>
                                <a href="#" class="cover-mv" title="여름 안에서">
                                    <span class="mask"></span>
                                    <img src="C:/팀4/사진/지니차트/뮤직비디오차트/일간2020924/28.jpg"alt="여름 안에서">
                                    <span class="duration">02:00</span>
                                </a>
                            </td>
                            <td class="info">
                                <a href="#" class="title">여름 안에서</a>
                                <a href="#" class="artist">싹쓰리</a>
                            </td>
                            <td class="btns"><a href="#" class="btn-img btn-view" title="보기">보기</a></td>
                        </tr><!-- tr-list -->
                        <tr class="list">
                            <td class="number">29
                                <span class="rank">
                                        <span class="rank"><span class="rank-none"><span class="hide">유지</span></span></span>
                                </span>
                            </td>
                            <td>
                                <a href="#" class="cover-mv" title="엉덩이">
                                    <span class="mask"></span>
                                    <img src="C:/팀4/사진/지니차트/뮤직비디오차트/일간2020924/29.jpg"alt="엉덩이">
                                    <span class="duration">03:56</span>
                                </a>
                            </td>
                            <td class="info">
                                <a href="#" class="title">엉덩이</a>
                                <a href="#" class="artist">김수찬</a>
                            </td>
                            <td class="btns"><a href="#" class="btn-img btn-view" title="보기">보기</a></td>
                        </tr><!-- tr-list -->
                        <tr class="list">
                            <td class="number">30
                                <span class="rank">
                                        <span class="rank"><span class="rank-none"><span class="hide">유지</span></span></span>
                                </span>
                            </td>
                            <td>
                                <a href="#" class="cover-mv" title="DNA">
                                    <span class="mask"></span>
                                    <img src="C:/팀4/사진/지니차트/뮤직비디오차트/일간2020924/30.jpg"alt="DNA">
                                    <span class="duration">03:16</span>
                                </a>
                            </td>
                            <td class="info">
                                <a href="#" class="title">DNA</a>
                                <a href="#" class="artist">방탄소년단</a>
                            </td>
                            <td class="btns"><a href="#" class="btn-img btn-view" title="보기">보기</a></td>
                        </tr><!-- tr-list -->
                        <tr class="list">
                            <td class="number">31
                                <span class="rank">
                                        <span class="rank"><span class="rank-none"><span class="hide">유지</span></span></span>
                                </span>
                            </td>
                            <td>
                                <a href="#" class="cover-mv" title="Numbers">
                                    <span class="mask"></span>
                                    <img src="C:/팀4/사진/지니차트/뮤직비디오차트/일간2020924/31.jpg"alt="Numbers">
                                    <span class="duration">04:40</span>
                                </a>
                            </td>
                            <td class="info">
                                <a href="#" class="title">Numbers</a>
                                <a href="#" class="artist">Jamie</a>
                            </td>
                            <td class="btns"><a href="#" class="btn-img btn-view" title="보기">보기</a></td>
                        </tr><!-- tr-list -->
                        <tr class="list">
                            <td class="number">32
                                <span class="rank">
                                        <span class="rank"><span class="rank-none"><span class="hide">유지</span></span></span>
                                </span>
                            </td>
                            <td>
                                <a href="#" class="cover-mv" title="바나나차차">
                                    <span class="mask"></span>
                                    <img src="C:/팀4/사진/지니차트/뮤직비디오차트/일간2020924/32.jpg"alt="바나나차차">
                                    <span class="duration">03:45</span>
                                </a>
                            </td>
                            <td class="info">
                                <a href="#" class="title">바나나차차</a>
                                <a href="#" class="artist">MOMOLAND</a>
                            </td>
                            <td class="btns"><a href="#" class="btn-img btn-view" title="보기">보기</a></td>
                        </tr><!-- tr-list -->
                        <tr class="list">
                            <td class="number">33
                                <span class="rank">
                                        <span class="rank"><span class="rank-none"><span class="hide">유지</span></span></span>
                                </span>
                            </td>
                            <td>
                                <a href="#" class="cover-mv" title="멍청이">
                                    <span class="mask"></span>
                                    <img src="C:/팀4/사진/지니차트/뮤직비디오차트/일간2020924/33.jpg"alt="멍청이">
                                    <span class="duration">03:55</span>
                                </a>
                            </td>
                            <td class="info">
                                <a href="#" class="title">멍청이</a>
                                <a href="#" class="artist">화사</a>
                            </td>
                            <td class="btns"><a href="#" class="btn-img btn-view" title="보기">보기</a></td>
                        </tr><!-- tr-list -->
                        <tr class="list">
                            <td class="number">34
                                <span class="rank">
                                        <span class="rank"><span class="rank-none"><span class="hide">유지</span></span></span>
                                </span>
                            </td>
                            <td>
                                <a href="#" class="cover-mv" title="뼈 is bone">
                                    <span class="mask"></span>
                                    <img src="C:/팀4/사진/지니차트/뮤직비디오차트/일간2020924/34.jpg"alt="뼈 is bone">
                                    <span class="duration">03:29</span>
                                </a>
                            </td>
                            <td class="info">
                                <a href="#" class="title">뼈 is bone</a>
                                <a href="#" class="artist">억G&조G</a>
                            </td>
                            <td class="btns"><a href="#" class="btn-img btn-view" title="보기">보기</a></td>
                        </tr><!-- tr-list -->
                        <tr class="list">
                            <td class="number">35
                                <span class="rank">
                                        <span class="rank"><span class="rank-none"><span class="hide">유지</span></span></span>
                                </span>
                            </td>
                            <td>
                                <a href="#" class="cover-mv" title="ON">
                                    <span class="mask"></span>
                                    <img src="C:/팀4/사진/지니차트/뮤직비디오차트/일간2020924/35.jpg"alt="ON">
                                    <span class="duration">03:44</span>
                                </a>
                            </td>
                            <td class="info">
                                <a href="#" class="title">ON</a>
                                <a href="#" class="artist">방탄소년단</a>
                            </td>
                            <td class="btns"><a href="#" class="btn-img btn-view" title="보기">보기</a></td>
                        </tr><!-- tr-list -->
                        <tr class="list">
                            <td class="number">36
                                <span class="rank">
                                        <span class="rank"><span class="rank-none"><span class="hide">유지</span></span></span>
                                </span>
                            </td>
                            <td>
                                <a href="#" class="cover-mv" title="HIP">
                                    <span class="mask"></span>
                                    <img src="C:/팀4/사진/지니차트/뮤직비디오차트/일간2020924/36.jpg"alt="HIP">
                                    <span class="duration">03:03</span>
                                </a>
                            </td>
                            <td class="info">
                                <a href="#" class="title">HIP</a>
                                <a href="#" class="artist">마마무</a>
                            </td>
                            <td class="btns"><a href="#" class="btn-img btn-view" title="보기">보기</a></td>
                        </tr><!-- tr-list -->
                        <tr class="list">
                            <td class="number">37
                                <span class="rank">
                                        <span class="rank"><span class="rank-none"><span class="hide">유지</span></span></span>
                                </span>
                            </td>
                            <td>
                                <a href="#" class="cover-mv" title="보라빛 밤">
                                    <span class="mask"></span>
                                    <img src="C:/팀4/사진/지니차트/뮤직비디오차트/일간2020924/37.jpg"alt="보라빛 밤">
                                    <span class="duration">01:40</span>
                                </a>
                            </td>
                            <td class="info">
                                <a href="#" class="title">보라빛 밤</a>
                                <a href="#" class="artist">선미</a>
                            </td>
                            <td class="btns"><a href="#" class="btn-img btn-view" title="보기">보기</a></td>
                        </tr><!-- tr-list -->
                        <tr class="list">
                            <td class="number">38
                                <span class="rank">
                                        <span class="rank"><span class="rank-none"><span class="hide">유지</span></span></span>
                                </span>
                            </td>
                            <td>
                                <a href="#" class="cover-mv" title="WANNABE">
                                    <span class="mask"></span>
                                    <img src="C:/팀4/사진/지니차트/뮤직비디오차트/일간2020924/38.jpg"alt="WANNABE">
                                    <span class="duration">04:40</span>
                                </a>
                            </td>
                            <td class="info">
                                <a href="#" class="title">WANNABE</a>
                                <a href="#" class="artist">ITZY(있지)</a>
                            </td>
                            <td class="btns"><a href="#" class="btn-img btn-view" title="보기">보기</a></td>
                        </tr><!-- tr-list -->
                        <tr class="list">
                            <td class="number">39
                                <span class="rank">
                                        <span class="rank"><span class="rank-none"><span class="hide">유지</span></span></span>
                                </span>
                            </td>
                            <td>
                                <a href="#" class="cover-mv" title="거짓말이라도 해서 널 보고싶어">
                                    <span class="mask"></span>
                                    <img src="C:/팀4/사진/지니차트/뮤직비디오차트/일간2020924/39.jpg"alt="거짓말이라도 해서 널 보고싶어">
                                    <span class="duration">03:47</span>
                                </a>
                            </td>
                            <td class="info">
                                <a href="#" class="title">거짓말이라도 해서 널 보고싶어</a>
                                <a href="#" class="artist">백지영</a>
                            </td>
                            <td class="btns"><a href="#" class="btn-img btn-view" title="보기">보기</a></td>
                        </tr><!-- tr-list -->
                        <tr class="list">
                            <td class="number">40
                                <span class="rank">
                                        <span class="rank"><span class="rank-none"><span class="hide">유지</span></span></span>
                                </span>
                            </td>
                            <td>
                                <a href="#" class="cover-mv" title="Dynamite">
                                    <span class="mask"></span>
                                    <img src="C:/팀4/사진/지니차트/뮤직비디오차트/일간2020924/40.jpg"alt="Dynamite">
                                    <span class="duration">03:23</span>
                                </a>
                            </td>
                            <td class="info">
                                <a href="#" class="title">Dynamite</a>
                                <a href="#" class="artist">방탄소년단</a>
                            </td>
                            <td class="btns"><a href="#" class="btn-img btn-view" title="보기">보기</a></td>
                        </tr><!-- tr-list -->
                        <tr class="list">
                            <td class="number">41
                                <span class="rank">
                                        <span class="rank"><span class="rank-none"><span class="hide">유지</span></span></span>
                                </span>
                            </td>
                            <td>
                                <a href="#" class="cover-mv" title="사랑해">
                                    <span class="mask"></span>
                                    <img src="C:/팀4/사진/지니차트/뮤직비디오차트/일간2020924/41.jpg" alt="사랑해">
                                    <span class="duration">03:47</span>
                                </a>
                            </td>
                            <td class="info">
                                <a href="#" class="title">사랑해</a>
                                <a href="#" class="artist">TREASURE</a>
                            </td>
                            <td class="btns"><a href="#" class="btn-img btn-view" title="보기">보기</a></td>
                        </tr>
                        <tr class="list">
                            <td class="number">42
                                <span class="rank">
                                        <span class="rank"><span class="rank-none"><span class="hide">유지</span></span></span>
                                </span>
                            </td>
                            <td>
                                <a href="#" class="cover-mv" title="GOTTA GO">
                                    <span class="mask"></span>
                                    <img src="C:/팀4/사진/지니차트/뮤직비디오차트/일간2020924/42.jpg"alt="GOTTA GO">
                                    <span class="duration">03:47</span>
                                </a>
                            </td>
                            <td class="info">
                                <a href="#" class="title">GOTTA GO</a>
                                <a href="#" class="artist">소유</a>
                            </td>
                            <td class="btns"><a href="#" class="btn-img btn-view" title="보기">보기</a></td>
                        </tr><!-- tr-list -->
                        <tr class="list">
                            <td class="number">43
                                <span class="rank">
                                        <span class="rank"><span class="rank-none"><span class="hide">유지</span></span></span>
                                </span>
                            </td>
                            <td>
                                <a href="#" class="cover-mv" title="Dance Monkey">
                                    <span class="mask"></span>
                                    <img src="C:/팀4/사진/지니차트/뮤직비디오차트/일간2020924/43.jpg"alt="Dance Monkey">
                                    <span class="duration">03:47</span>
                                </a>
                            </td>
                            <td class="info">
                                <a href="#" class="title">Dance Monkey</a>
                                <a href="#" class="artist">Tones And I</a>
                            </td>
                            <td class="btns"><a href="#" class="btn-img btn-view" title="보기">보기</a></td>
                        </tr><!-- tr-list -->
                        <tr class="list">
                            <td class="number">44
                                <span class="rank">
                                        <span class="rank"><span class="rank-none"><span class="hide">유지</span></span></span>
                                </span>
                            </td>
                            <td>
                                <a href="#" class="cover-mv" title="IDOL">
                                    <span class="mask"></span>
                                    <img src="C:/팀4/사진/지니차트/뮤직비디오차트/일간2020924/44.jpg"alt="IDOL">
                                    <span class="duration">03:47</span>
                                </a>
                            </td>
                            <td class="info">
                                <a href="#" class="title">IDOL</a>
                                <a href="#" class="artist">방탄소년단</a>
                            </td>
                            <td class="btns"><a href="#" class="btn-img btn-view" title="보기">보기</a></td>
                        </tr><!-- tr-list -->
                        <tr class="list">
                            <td class="number">45
                                <span class="rank">
                                        <span class="rank"><span class="rank-none"><span class="hide">유지</span></span></span>
                                </span>
                            </td>
                            <td>
                                <a href="#" class="cover-mv" title="아무노래">
                                    <span class="mask"></span>
                                    <img src="C:/팀4/사진/지니차트/뮤직비디오차트/일간2020924/45.jpg"alt="아무노래">
                                    <span class="duration">04:21</span>
                                </a>
                            </td>
                            <td class="info">
                                <a href="#" class="title">아무노래</a>
                                <a href="#" class="artist">지코(ZICO)</a>
                            </td>
                            <td class="btns"><a href="#" class="btn-img btn-view" title="보기">보기</a></td>
                        </tr><!-- tr-list -->
                        <tr class="list">
                            <td class="number">46
                                <span class="rank">
                                        <span class="rank"><span class="rank-none"><span class="hide">유지</span></span></span>
                                </span>
                            </td>
                            <td>
                                <a href="#" class="cover-mv" title="SUPADUPA">
                                    <span class="mask"></span>
                                    <img src="C:/팀4/사진/지니차트/뮤직비디오차트/일간2020924/46.jpg"alt="SUPADUPA">
                                    <span class="duration">03:38</span>
                                </a>
                            </td>
                            <td class="info">
                                <a href="#" class="title">SUPADUPA</a>
                                <a href="#" class="artist">오마이걸</a>
                            </td>
                            <td class="btns"><a href="#" class="btn-img btn-view" title="보기">보기</a></td>
                        </tr><!-- tr-list -->
                        <tr class="list">
                            <td class="number">47
                                <span class="rank">
                                        <span class="rank"><span class="rank-none"><span class="hide">유지</span></span></span>
                                </span>
                            </td>
                            <td>
                                <a href="#" class="cover-mv" title="달라달라">
                                    <span class="mask"></span>
                                    <img src="C:/팀4/사진/지니차트/뮤직비디오차트/일간2020924/47.jpg"alt="달라달라">
                                    <span class="duration">03:41</span>
                                </a>
                            </td>
                            <td class="info">
                                <a href="#" class="title">달라달라</a>
                                <a href="#" class="artist">ITZY(있지)</a>
                            </td>
                            <td class="btns"><a href="#" class="btn-img btn-view" title="보기">보기</a></td>
                        </tr><!-- tr-list -->
                        <tr class="list">
                            <td class="number">48
                                <span class="rank">
                                        <span class="rank"><span class="rank-none"><span class="hide">유지</span></span></span>
                                </span>
                            </td>
                            <td>
                                <a href="#" class="cover-mv" title="Oscar">
                                    <span class="mask"></span>
                                    <img src="C:/팀4/사진/지니차트/뮤직비디오차트/일간2020924/48.jpg"alt="Oscar">
                                    <span class="duration">03:23</span>
                                </a>
                            </td>
                            <td class="info">
                                <a href="#" class="title">Oscar</a>
                                <a href="#" class="artist">pH-1 & Golden</a>
                            </td>
                            <td class="btns"><a href="#" class="btn-img btn-view" title="보기">보기</a></td>
                        </tr><!-- tr-list -->
                        <tr class="list">
                            <td class="number">49
                                <span class="rank">
                                        <span class="rank"><span class="rank-none"><span class="hide">유지</span></span></span>
                                </span>
                            </td>
                            <td>
                                <a href="#" class="cover-mv" title="MORE & MORE">
                                    <span class="mask"></span>
                                    <img src="C:/팀4/사진/지니차트/뮤직비디오차트/일간2020924/49.jpg"alt="MORE & MORE">
                                    <span class="duration">03:47</span>
                                </a>
                            </td>
                            <td class="info">
                                <a href="#" class="title">MORE & MORE</a>
                                <a href="#" class="artist">TWICE(트와이스)</a>
                            </td>
                            <td class="btns"><a href="#" class="btn-img btn-view" title="보기">보기</a></td>
                        </tr><!-- tr-list -->
                        <tr class="list">
                            <td class="number">50
                                <span class="rank">
                                        <span class="rank"><span class="rank-none"><span class="hide">유지</span></span></span>
                                </span>
                            </td>
                            <td>
                                <a href="#" class="cover-mv" title="널 사랑했던 한 사람">
                                    <span class="mask"></span>
                                    <img src="C:/팀4/사진/지니차트/뮤직비디오차트/일간2020924/50.jpg"alt="널 사랑했던 한 사람">
                                    <span class="duration">03:11</span>
                                </a>
                            </td>
                            <td class="info">
                                <a href="#" class="title">널 사랑했던 한 사람</a>
                                <a href="#" class="artist">펀치</a>
                            </td>
                            <td class="btns"><a href="#" class="btn-img btn-view" title="보기">보기</a></td>
                        </tr><!-- tr-list -->
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