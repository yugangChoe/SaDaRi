<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="/Genie_Project/css/Genie.css" rel="stylesheet" type="text/css">
<title>Chart_MV_month</title>
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
                                <a href="#" class="cover-mv" title="When We Disco">
                                    <span class="mask"></span>
                                    <img src="C:/팀4/사진/지니차트/뮤직비디오차트/월간8월/1.jpg" alt="When We Disco">
                                    <span class="duration">03:47</span>
                                </a>
                            </td>
                            <td class="info">
                                <a href="#" class="title">When We Disco</a>
                                <a href="#" class="artist">박진영</a>
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
                                <a href="#" class="cover-mv" title="눈누난나">
                                    <span class="mask"></span>
                                    <img src="C:/팀4/사진/지니차트/뮤직비디오차트/월간8월/2.jpg"alt="눈누난나">
                                    <span class="duration">03:47</span>
                                </a>
                            </td>
                            <td class="info">
                                <a href="#" class="title">눈누난나</a>
                                <a href="#" class="artist">제시</a>
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
                                <a href="#" class="cover-mv" title="Dynamite">
                                    <span class="mask"></span>
                                    <img src="C:/팀4/사진/지니차트/뮤직비디오차트/월간8월/3.jpg"alt="Dynamite">
                                    <span class="duration">03:47</span>
                                </a>
                            </td>
                            <td class="info">
                                <a href="#" class="title">Dynamite</a>
                                <a href="#" class="artist">방탄소년단</a>
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
                                <a href="#" class="cover-mv" title="Not Shy">
                                    <span class="mask"></span>
                                    <img src="C:/팀4/사진/지니차트/뮤직비디오차트/월간8월/4.jpg"alt="Not Shy">
                                    <span class="duration">03:47</span>
                                </a>
                            </td>
                            <td class="info">
                                <a href="#" class="title">Not Shy</a>
                                <a href="#" class="artist">ITZY(있지)</a>
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
                                <a href="#" class="cover-mv" title="다시 여기 바닷가">
                                    <span class="mask"></span>
                                    <img src="C:/팀4/사진/지니차트/뮤직비디오차트/월간8월/5.jpg"alt="다시 여기 바닷가">
                                    <span class="duration">04:21</span>
                                </a>
                            </td>
                            <td class="info">
                                <a href="#" class="title">다시 여기 바닷가</a>
                                <a href="#" class="artist">싹쓰리</a>
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
                                <a href="#" class="cover-mv" title="Ice Cream (With Selena Gomez)">
                                    <span class="mask"></span>
                                    <img src="C:/팀4/사진/지니차트/뮤직비디오차트/월간8월/6.jpg"alt="Ice Cream (With Selena Gomez)">
                                    <span class="duration">03:47</span>
                                </a>
                            </td>
                            <td class="info">
                                <a href="#" class="title">Ice Cream</a>
                                <a href="#" class="artist">BLACKPINK</a>
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
                                <a href="#" class="cover-mv" title="덤디덤디">
                                    <span class="mask"></span>
                                    <img src="C:/팀4/사진/지니차트/뮤직비디오차트/월간8월/7.jpg"alt="덤디덤디">
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
                            <td class="number">8
                                <span class="rank">
                                        <span class="rank"><span class="rank-none"><span class="hide">유지</span></span></span>
                                </span>
                            </td>
                            <td>
                                <a href="#" class="cover-mv" title="마리아 (Maria)">
                                    <span class="mask"></span>
                                    <img src="C:/팀4/사진/지니차트/뮤직비디오차트/월간8월/8.jpg"alt="마리아 (Maria)">
                                    <span class="duration">03:47</span>
                                </a>
                            </td>
                            <td class="info">
                                <a href="#" class="title">마리아 (Maria)</a>
                                <a href="#" class="artist">화사</a>
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
                                <a href="#" class="cover-mv" title="여름 안에서">
                                    <span class="mask"></span>
                                    <img src="C:/팀4/사진/지니차트/뮤직비디오차트/월간8월/9.jpg"alt="여름 안에서">
                                    <span class="duration">03:47</span>
                                </a>
                            </td>
                            <td class="info">
                                <a href="#" class="title">여름 안에서</a>
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
                                <a href="#" class="cover-mv" title="Summer Hate">
                                    <span class="mask"></span>
                                    <img src="C:/팀4/사진/지니차트/뮤직비디오차트/월간8월/10.jpg"alt="Summer Hate">
                                    <span class="duration">03:11</span>
                                </a>
                            </td>
                            <td class="info">
                                <a href="#" class="title">Summer Hate</a>
                                <a href="#" class="artist">지코(ZICO)</a>
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
                                <a href="#" class="cover-mv" title="아틀란티스 소녀">
                                    <span class="mask"></span>
                                    <img src="C:/팀4/사진/지니차트/뮤직비디오차트/월간8월/11.jpg"alt="아틀란티스 소녀">
                                    <span class="duration">03:41</span>
                                </a>
                            </td>
                            <td class="info">
                                <a href="#" class="title">아틀란티스 소녀</a>
                                <a href="#" class="artist">볼빨간사춘기</a>
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
                                <a href="#" class="cover-mv" title="깡">
                                    <span class="mask"></span>
                                    <img src="C:/팀4/사진/지니차트/뮤직비디오차트/월간8월/12.jpg"alt="깡">
                                    <span class="duration">03:21</span>
                                </a>
                            </td>
                            <td class="info">
                                <a href="#" class="title">깡</a>
                                <a href="#" class="artist">비</a>
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
                                <a href="#" class="cover-mv" title="How You Like That">
                                    <span class="mask"></span>
                                    <img src="C:/팀4/사진/지니차트/뮤직비디오차트/월간8월/13.jpg"alt="How You Like That">
                                    <span class="duration">03:33</span>
                                </a>
                            </td>
                            <td class="info">
                                <a href="#" class="title">How You Like That</a>
                                <a href="#" class="artist">BLACKPINK</a>
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
                                <a href="#" class="cover-mv" title="Down">
                                    <span class="mask"></span>
                                    <img src="C:/팀4/사진/지니차트/뮤직비디오차트/월간8월/14.jpg"alt="Down">
                                    <span class="duration">03:33</span>
                                </a>
                            </td>
                            <td class="info">
                                <a href="#" class="title">Down</a>
                                <a href="#" class="artist">제시</a>
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
                                <a href="#" class="cover-mv" title="니가 왜 거기서 나와">
                                    <span class="mask"></span>
                                    <img src="C:/팀4/사진/지니차트/뮤직비디오차트/월간8월/15.jpg"alt="니가 왜 거기서 나와">
                                    <span class="duration">03:47</span>
                                </a>
                            </td>
                            <td class="info">
                                <a href="#" class="title">니가 왜 거기서 나와</a>
                                <a href="#" class="artist">영탁</a>
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
                                <a href="#" class="cover-mv" title="보라빛 밤">
                                    <span class="mask"></span>
                                    <img src="C:/팀4/사진/지니차트/뮤직비디오차트/월간8월/16.jpg"alt="보라빛 밤">
                                    <span class="duration">03:47</span>
                                </a>
                            </td>
                            <td class="info">
                                <a href="#" class="title">보라빛 밤</a>
                                <a href="#" class="artist">선미</a>
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
                                <a href="#" class="cover-mv" title="GOTTA GO">
                                    <span class="mask"></span>
                                    <img src="C:/팀4/사진/지니차트/뮤직비디오차트/월간8월/17.jpg"alt="GOTTA GO">
                                    <span class="duration">03:44</span>
                                </a>
                            </td>
                            <td class="info">
                                <a href="#" class="title">GOTTA GO</a>
                                <a href="#" class="artist">소유</a>
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
                                    <img src="C:/팀4/사진/지니차트/뮤직비디오차트/월간8월/18.jpg"alt="FEVER">
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
                                <a href="#" class="cover-mv" title="DESSERT">
                                    <span class="mask"></span>
                                    <img src="C:/팀4/사진/지니차트/뮤직비디오차트/월간8월/19.jpg"alt="DESSERT">
                                    <span class="duration">03:47</span>
                                </a>
                            </td>
                            <td class="info">
                                <a href="#" class="title">DESSERT</a>
                                <a href="#" class="artist">HYO</a>
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
                                <a href="#" class="cover-mv" title="엉덩이">
                                    <span class="mask"></span>
                                    <img src="C:/팀4/사진/지니차트/뮤직비디오차트/월간8월/20.jpg"alt="엉덩이">
                                    <span class="duration">03:16</span>
                                </a>
                            </td>
                            <td class="info">
                                <a href="#" class="title">엉덩이</a>
                                <a href="#" class="artist">김수찬</a>
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
                                <a href="#" class="cover-mv" title="에잇">
                                    <span class="mask"></span>
                                    <img src="C:/팀4/사진/지니차트/뮤직비디오차트/월간8월/21.jpg" alt="에잇">
                                    <span class="duration">03:42</span>
                                </a>
                            </td>
                            <td class="info">
                                <a href="#" class="title">에잇</a>
                                <a href="#" class="artist">아이유</a>
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
                                <a href="#" class="cover-mv" title="바나나차차">
                                    <span class="mask"></span>
                                    <img src="C:/팀4/사진/지니차트/뮤직비디오차트/월간8월/22.jpg"alt="바나나차차">
                                    <span class="duration">03:47</span>
                                </a>
                            </td>
                            <td class="info">
                                <a href="#" class="title">바나나차차</a>
                                <a href="#" class="artist">MOMOLAND</a>
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
                                <a href="#" class="cover-mv" title="WANNABE">
                                    <span class="mask"></span>
                                    <img src="C:/팀4/사진/지니차트/뮤직비디오차트/월간8월/23.jpg"alt="WANNABE">
                                    <span class="duration">03:39</span>
                                </a>
                            </td>
                            <td class="info">
                                <a href="#" class="title">WANNABE</a>
                                <a href="#" class="artist">ITZY(있지)</a>
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
                                <a href="#" class="cover-mv" title="PLAY">
                                    <span class="mask"></span>
                                    <img src="C:/팀4/사진/지니차트/뮤직비디오차트/월간8월/24.jpg"alt="PLAY">
                                    <span class="duration">03:23</span>
                                </a>
                            </td>
                            <td class="info">
                                <a href="#" class="title">PLAY</a>
                                <a href="#" class="artist">청하</a>
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
                                <a href="#" class="cover-mv" title="What You Waiting For">
                                    <span class="mask"></span>
                                    <img src="C:/팀4/사진/지니차트/뮤직비디오차트/월간8월/25.jpg"alt="What You Waiting For">
                                    <span class="duration">04:21</span>
                                </a>
                            </td>
                            <td class="info">
                                <a href="#" class="title">What You Waiting For</a>
                                <a href="#" class="artist">전소미</a>
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
                                <a href="#" class="cover-mv" title="Milky Way">
                                    <span class="mask"></span>
                                    <img src="C:/팀4/사진/지니차트/뮤직비디오차트/월간8월/26.jpg"alt="Milky Way">
                                    <span class="duration">03:37</span>
                                </a>
                            </td>
                            <td class="info">
                                <a href="#" class="title">Milky Way</a>
                                <a href="#" class="artist">Red Velvet</a>
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
                                <a href="#" class="cover-mv" title="Blueming">
                                    <span class="mask"></span>
                                    <img src="C:/팀4/사진/지니차트/뮤직비디오차트/월간8월/27.jpg"alt="Blueming">
                                    <span class="duration">05:13</span>
                                </a>
                            </td>
                            <td class="info">
                                <a href="#" class="title">Blueming</a>
                                <a href="#" class="artist">아이유</a>
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
                                <a href="#" class="cover-mv" title="Monster">
                                    <span class="mask"></span>
                                    <img src="C:/팀4/사진/지니차트/뮤직비디오차트/월간8월/28.jpg"alt="Monster">
                                    <span class="duration">02:00</span>
                                </a>
                            </td>
                            <td class="info">
                                <a href="#" class="title">Monster</a>
                                <a href="#" class="artist">레드벨벳-아이린 & 슬기</a>
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
                                <a href="#" class="cover-mv" title="Dance Monkey">
                                    <span class="mask"></span>
                                    <img src="C:/팀4/사진/지니차트/뮤직비디오차트/월간8월/29.jpg"alt="Dance Monkey">
                                    <span class="duration">03:56</span>
                                </a>
                            </td>
                            <td class="info">
                                <a href="#" class="title">Dance Monkey</a>
                                <a href="#" class="artist">Tones And I</a>
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
                                <a href="#" class="cover-mv" title="MORE & MORE">
                                    <span class="mask"></span>
                                    <img src="C:/팀4/사진/지니차트/뮤직비디오차트/월간8월/30.jpg"alt="MORE & MORE">
                                    <span class="duration">04:00</span>
                                </a>
                            </td>
                            <td class="info">
                                <a href="#" class="title">MORE & MORE</a>
                                <a href="#" class="artist">TWICE(트와이스)</a>
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
                                <a href="#" class="cover-mv" title="아무노래">
                                    <span class="mask"></span>
                                    <img src="C:/팀4/사진/지니차트/뮤직비디오차트/월간8월/31.jpg"alt="아무노래">
                                    <span class="duration">03:41</span>
                                </a>
                            </td>
                            <td class="info">
                                <a href="#" class="title">아무노래</a>
                                <a href="#" class="artist">지코(ZICO)</a>
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
                                <a href="#" class="cover-mv" title="Fanfare">
                                    <span class="mask"></span>
                                    <img src="C:/팀4/사진/지니차트/뮤직비디오차트/월간8월/32.jpg"alt="Fanfare">
                                    <span class="duration">03:37</span>
                                </a>
                            </td>
                            <td class="info">
                                <a href="#" class="title">Fanfare</a>
                                <a href="#" class="artist">TWICE(트와이스)</a>
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
                                <a href="#" class="cover-mv" title="홀로">
                                    <span class="mask"></span>
                                    <img src="C:/팀4/사진/지니차트/뮤직비디오차트/월간8월/33.jpg"alt="홀로">
                                    <span class="duration">03:55</span>
                                </a>
                            </td>
                            <td class="info">
                                <a href="#" class="title">홀로</a>
                                <a href="#" class="artist">이하이</a>
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
                                <a href="#" class="cover-mv" title="돌덩이">
                                    <span class="mask"></span>
                                    <img src="C:/팀4/사진/지니차트/뮤직비디오차트/월간8월/34.jpg"alt="돌덩이">
                                    <span class="duration">03:29</span>
                                </a>
                            </td>
                            <td class="info">
                                <a href="#" class="title">돌덩이</a>
                                <a href="#" class="artist">하현우(국가스텐)</a>
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
                                <a href="#" class="cover-mv" title="SUPADUPA">
                                    <span class="mask"></span>
                                    <img src="C:/팀4/사진/지니차트/뮤직비디오차트/월간8월/35.jpg"alt="SUPADUPA">
                                    <span class="duration">03:33</span>
                                </a>
                            </td>
                            <td class="info">
                                <a href="#" class="title">SUPADUPA</a>
                                <a href="#" class="artist">오마이걸</a>
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
                                <a href="#" class="cover-mv" title="ON">
                                    <span class="mask"></span>
                                    <img src="C:/팀4/사진/지니차트/뮤직비디오차트/월간8월/36.jpg"alt="ON">
                                    <span class="duration">03:03</span>
                                </a>
                            </td>
                            <td class="info">
                                <a href="#" class="title">ON</a>
                                <a href="#" class="artist">방탄소년단</a>
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
                                <a href="#" class="cover-mv" title="뼈 is bone">
                                    <span class="mask"></span>
                                    <img src="C:/팀4/사진/지니차트/뮤직비디오차트/월간8월/37.jpg"alt="뼈 is bone">
                                    <span class="duration">01:40</span>
                                </a>
                            </td>
                            <td class="info">
                                <a href="#" class="title">뼈 is bone</a>
                                <a href="#" class="artist">억G&조G</a>
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
                                <a href="#" class="cover-mv" title="SAY MY NAME">
                                    <span class="mask"></span>
                                    <img src="C:/팀4/사진/지니차트/뮤직비디오차트/월간8월/38.jpg"alt="SAY MY NAME">
                                    <span class="duration">04:40</span>
                                </a>
                            </td>
                            <td class="info">
                                <a href="#" class="title">SAY MY NAME</a>
                                <a href="#" class="artist">효린</a>
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
                                    <img src="C:/팀4/사진/지니차트/뮤직비디오차트/월간8월/39.jpg"alt="거짓말이라도 해서 널 보고싶어">
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
                                <a href="#" class="cover-mv" title="Fadeaway">
                                    <span class="mask"></span>
                                    <img src="C:/팀4/사진/지니차트/뮤직비디오차트/월간8월/40.jpg"alt="Fadeaway">
                                    <span class="duration">03:23</span>
                                </a>
                            </td>
                            <td class="info">
                                <a href="#" class="title">Fadeaway</a>
                                <a href="#" class="artist">Jvcki Wai & 쿠기</a>
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
                                <a href="#" class="cover-mv" title="애상">
                                    <span class="mask"></span>
                                    <img src="C:/팀4/사진/지니차트/뮤직비디오차트/월간8월/41.jpg" alt="애상">
                                    <span class="duration">03:47</span>
                                </a>
                            </td>
                            <td class="info">
                                <a href="#" class="title">애상</a>
                                <a href="#" class="artist">라비</a>
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
                                <a href="#" class="cover-mv" title="Now or Never">
                                    <span class="mask"></span>
                                    <img src="C:/팀4/사진/지니차트/뮤직비디오차트/월간8월/42.jpg"alt="Now or Never">
                                    <span class="duration">03:47</span>
                                </a>
                            </td>
                            <td class="info">
                                <a href="#" class="title">Now or Never</a>
                                <a href="#" class="artist">에이프릴</a>
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
                                <a href="#" class="cover-mv" title="2 KIDS">
                                    <span class="mask"></span>
                                    <img src="C:/팀4/사진/지니차트/뮤직비디오차트/월간8월/43.jpg"alt="2 KIDS">
                                    <span class="duration">03:47</span>
                                </a>
                            </td>
                            <td class="info">
                                <a href="#" class="title">2 KIDS</a>
                                <a href="#" class="artist">태민</a>
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
                                <a href="#" class="cover-mv" title="매운 사랑y">
                                    <span class="mask"></span>
                                    <img src="C:/팀4/사진/지니차트/뮤직비디오차트/월간8월/44.jpg"alt="매운 사랑y">
                                    <span class="duration">03:47</span>
                                </a>
                            </td>
                            <td class="info">
                                <a href="#" class="title">매운 사랑y</a>
                                <a href="#" class="artist">캡사이신</a>
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
                                <a href="#" class="cover-mv" title="Kill This Love">
                                    <span class="mask"></span>
                                    <img src="C:/팀4/사진/지니차트/뮤직비디오차트/월간8월/45.jpg"alt="Kill This Love">
                                    <span class="duration">04:21</span>
                                </a>
                            </td>
                            <td class="info">
                                <a href="#" class="title">Kill This Love</a>
                                <a href="#" class="artist">BLACKPINK</a>
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
                                <a href="#" class="cover-mv" title="놀이">
                                    <span class="mask"></span>
                                    <img src="C:/팀4/사진/지니차트/뮤직비디오차트/월간8월/46.jpg"alt="놀이">
                                    <span class="duration">03:38</span>
                                </a>
                            </td>
                            <td class="info">
                                <a href="#" class="title">놀이</a>
                                <a href="#" class="artist">레드벨벳-아이린 & 슬기</a>
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
                                    <img src="C:/팀4/사진/지니차트/뮤직비디오차트/월간8월/47.jpg"alt="달라달라">
                                    <span class="duration">03:47</span>
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
                                <a href="#" class="cover-mv" title="HIP">
                                    <span class="mask"></span>
                                    <img src="C:/팀4/사진/지니차트/뮤직비디오차트/월간8월/48.jpg"alt="HIP">
                                    <span class="duration">03:47</span>
                                </a>
                            </td>
                            <td class="info">
                                <a href="#" class="title">HIP</a>
                                <a href="#" class="artist">마마무</a>
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
                                <a href="#" class="cover-mv" title="깡 Official Remix">
                                    <span class="mask"></span>
                                    <img src="C:/팀4/사진/지니차트/뮤직비디오차트/월간8월/49.jpg"alt="깡 Official Remix">
                                    <span class="duration">03:47</span>
                                </a>
                            </td>
                            <td class="info">
                                <a href="#" class="title">깡 Official Remix</a>
                                <a href="#" class="artist">식케이</a>
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
                                <a href="#" class="cover-mv" title="19금능소화">
                                    <span class="mask"></span>
                                    <img src="C:/팀4/사진/지니차트/뮤직비디오차트/월간8월/50.jpg"alt="19금능소화">
                                    <span class="duration">03:11</span>
                                </a>
                            </td>
                            <td class="info">
                                <a href="#" class="title">19금능소화</a>
                                <a href="#" class="artist">안예은</a>
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