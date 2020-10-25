<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style>
.hide {
	font: 0/0 a;
	overflow: hidden;
	border: 0 none;
	width: 0;
	height: 0;
	margin: 0;
	padding: 0;
}
td img {
width: 50px;
height: 50px; 
}
    html, body, div, img, span, ul{
                margin: 0;
                padding: 0;
            }
            ul{
                list-style: none;
            }
            a{
                margin: 0;
                color: #444;
                padding: 0;
                text-decoration: none;
            }
            .hide{
                font: 0/0 a;
                overflow: hidden;
                border: 0 none;
                width: 0;
                height: 0;
                margin: 0;
                padding: 0;
            }
            /*html 전체 css 끝 */
            /* 헤드부분 css 시작 */
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
            .wrap-head .head-list .logo a{/* 로고 안 a 태그*/
                display: block;
                width: 100%;
                height: 100%;
                background: url("C:/팀4/사진/이미지/logo_genie.png") no-repeat 0 0;
                line-height: 0;
                text-indent: -9999px;
            }

            .wrap-head .gnb{
                position: relative;
                width: 940px;
                margin: 0 auto;
            }
            .wrap-head .gnb .menu-list{
                display: block;
                position: relative;
                margin-top: 25px;
            }
            .wrap-head .gnb .menu-list li {
                float: left;
                position: relative;
            }
            .wrap-head .gnb .gnb-menu{
                display: block;
                position: relative;
                padding: 0 150px 0 0;
                font-size: 24px;
                font-weight: 700;
            }
            .wrap-head .sub_menu{
                /* display: none; 리스트 사라지게 */
                position: absolute;
            }
            .wrap-head .sub_menu .bd{
                position: relative;
                z-index: 1;
                zoom: 1;
            }
            .wrap-head .sub_menu .bd a{
                display: block;
                padding: 5px 16px 3px;
            }
            /*서브메뉴 나열 관련*/
            #sub_menu_chart, #sub_menu_newest, #sub_menu_genre{ 
                opacity: 0; visibility: hidden;
                background-color: skyblue;
            }
            #main_menu>li:hover #sub_menu_chart,
            #main_menu>li:hover #sub_menu_newest,
            #main_menu>li:hover #sub_menu_genre{
                opacity: 1; visibility: visible;
                border-top: 3px solid skyblue;
                background-color: red;
                position: relative;
            }
            /* header css 끝*/
            /*로그인/회원가입 css*/
            .wrap-head .gnb_my{
                display: inline-block;
                width: 122px;
                height: 22px;
            }
            .gnb_btn{
                border: 1px solid whitesmoke;
                background-color: white;
            }
            #login_list{
                border: 1px solid #656565;
                opacity: 0; visibility: hidden;
            }
            .list_login{
                text-align: center;
            }
            /*로그인/회원가입 css 끝*/
            /*body 부분 css 시작 */
            #wrap-body{
                position: relative;
                width: 940px;
                margin: 0 auto;
            }
            .aside #contents{
                position: relative;
                float: left;
                width: 710px;
            }
            .title{
                height: 28px;
                position: relative;
                padding: 20px 0 5px 0;
            }
            .title h2{
                display: inline;
            }
            .title-1{
                height: 37px;
                background-color: #f6f6f6;
                border-top: 2px solid #656565;
                border-bottom: 1px solid #dbdbdb;
            }
            .title-1 li{
                float: left;
            }
            .title-1 li a{
                display: block;
                border-right: 1px solid #dbdbdb;
                text-align: center;
                min-width: 80px;
                padding: 11px 14px 0;
            }
            .title-1 li a img{
                vertical-align: top;
            }

            /*body 부분 css 시작 끝*/
            /* 사이드부분 */
            #wrap-body .aside{
                background: url("C:/팀4/사진/이미지/aside_line.gif") repeat-y 100% 0;
            }
            #wrap-body.aside:after {
                content: '';
                clear: both;
                display: block;
                height: 0;
            }
            /* 사이드부분 */
            /*차트부분*/
            .chart-date{
                position: relative;
                margin-top: 10px;
                padding-bottom: 6px;
                z-index: 10;
            }
            .chart-date .date {
                text-align: center;
                line-height: 0px;
            }
            .chart-date .date h3 {
                color: #4e4e4e;
                font-size: 18px;
                font-weight: bold;
                font-family: Tahoma, sans-serif;
                vertical-align: middle;
                display: inline-block;
            }
            .chart-date .select-term {
                position: absolute;
                left: 0;
                top: 5px;
                padding-left: 1px;
            }
            .chart-date .select-term li {
                float: left;
                width: 47px;
                height: 22px;
                margin-left: -1px;
            }
            .chart-date .select-term li a {
                display: block;
                position: relative;
                z-index: 1;
                height: 20px;
                border: 1px solid #ccc;
                background-image: url("bu_select_term.gif") !important;
                background-position: 0 50%;
                background-repeat: no-repeat;
                background-color: #fafafa;
                color: #656565;
                font-size: 11px;
                line-height: 22px;
                text-align: center;
            }
            .chart{
                position: relative;
                width: 710px;
                height: 348px;
                margin-bottom: 19px;
                border-bottom: 1px solid #a6afb6;
                background: lightblue;
            }
            /*차트부분 끝*/
            /* song-list & song-list-wrap */
            .song-list{
                position: relative;
                z-index: 5;
                margin: 0 0 30px;
            }
            .toolbar{
                position: relative;
                height: 31px;
                padding: 7px 0 0 15px;
                border: 1px solid #f79c;
                background: #f7f9fc;
            }
            .toolbar .btn{
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
            .toolbar .btn:before{
                content: '';
                display: block;
                position: absolute;
                top: 3px;
                left: 7px;
                width: 17px;
                height: 16px;
                background: url(C:/팀4/사진/이미지/list_180122.png) no-repeat 0 0;
            }
            .toolbar .btns {
                display: inline-block;
                position: relative;
                padding: 0 14px 0 17px;
                /* float: left; */
            }
            /* song-list & song-list-wrap 끝*/
            /* list-wrap */
            .list-wrap{
                table-layout: fixed;
                width: 100%;
                margin: 4px 0 10px;
                font-size: 11px;
            }
            .list-wrap .list td{
                height: 68px;
                border-bottom: 1px solid #eef1f4;
            }
            .list-wrap .hd-number{
                width: 45px;
            }
            .list-wrap .hd-album{
                width: 56px;
            }
            .list-wrap .hd-link{
                width: 21px;
            }
            .list-wrap .hd-info{
                text-align: left;
                text-indent: 40px;
            }
            .list-wrap .hd-btns{
                width: 33px;
            }
            .list-wrap .hd-more{
                width: 46px;
            }
            .list-wrap .list .number{
                font-size: 17px;
                font-weight: bold;
                text-align: center;
            }
            .list-wrap .list .imge{
                display: block;
                position: relative;
                width: 48px;
                height: 48px;
            }
            .list-wrap .list .imge img{
                width: 100%;
                height: 100%;
                vertical-align: top;
            }
            .list-wrap .list .btns{
                position: relative;
                text-align: center;
            }
            .list-wrap .list .btn-img{
                background: url(C:/팀4/사진/이미지/list_180122.png) transparent no-repeat 0 0;
                display: inline-block;
                overflow: hidden;
                position: relative;
                width: 25px;
                height: 25px;
                border: 0;
                line-height: 0;
                text-indent: -9999px;
                vertical-align: middle;
            }
            .list-wrap .list .number{
                font-size: 17px;
                font-family: 'Arial';
                font-weight: bold;
                color: #bcc8d0;
                text-align: center;
            }
            .list-wrap .list .rank{
                display: block;
                padding-top: 1px;
                font-size: 11px;
            }
            .list-wrap .list .rank-none{
                display: inline-block;
                width: 12px;
                height: 2px;
                background: url("C:/팀4/사진/이미지/list_180122.png") no-repeat -164px -111px;
                vertical-align: middle;
            }
            .list-wrap .list .cover-mv{
            display: block;
                position: relative;
                width: 128px;
                height: 72px;
            }
            .list-wrap .list .cover-mv .mask{
                display: block;
                position: absolute;
                top: 0;
                left: 0;
                bottom: 0;
                right: 0;
                border: 1px solid #000;
                opacity: 0.1;
                z-index:80;
            }
            .list-wrap .list .cover-mv img{
                width: 100%;
                height: 100%;
                vertical-align: top;
            }
            .list-wrap .list .cover-mv .duration{
                position: absolute;
                bottom: 0;
                right: 0;
                padding: 2px 3px 0 3px;
                font-size: 11px;
                line-height: 14px;
                background: #000;
                background: rgba(0,0,0,0.5);
                color: #fff;
            }
            .list-wrap .list .info{
                position: relative;
                width: auto;
                line-height: 22px;
            }
            .list-wrap .list .info .title{
                overflow: hidden;
                display: block;
                max-width: 90%;
                font-weight: bold;
                color: #27282d;
                font-size:20px;
                top: 0;
            }
            .list-wrap .list .info .artist{
                width: auto !important;
                max-width: 44%;
                vertical-align: middle;
                padding-right: 1px;
            }
            .list-wrap .list td{
                height: 92px;
            }
            .list-wrap .list .btn-view{
                width: 27px;
                height: 21px;
                background: url("C:/팀4/사진/이미지/ico_movie.svg") 0 0 no-repeat;
            }
            /* list-wrap 끝*/
            /*page nav*/
            .page-nav{
                margin: 0 0 10px;
                min-height: 25px;
                text-align: center;
                position: relative;
                font-size: 1;
            }
            .page-nav a{
                display: inline-block;
                width: 96px;
                height: 25px;
                padding-top: 1px;
                border: 1px solid #a6afb6;
                text-decoration: none;
                border-radius: 4px;
                color: #27282d;
            }
            /*page nav*/
            /* footer */
            .footer{
                position: relative;
                width: 100%;
                height: 300px;
                border-top: 1px solid black;
            }
            .footer .notice{
                width: 940px;
    height: 74px;
            }
            .footer .ft-info{
                position: relative;
                width: 940px;
                margin: 0 auto;
            }
            .footer .link-wrap{
                position: relative;
                width: 774px;
                padding: 12px 0 0;
            }
            .footer .link-wrap li{
                display: inline-block;
            }
            .footer .link-wrap li a{
              text-decoration: none;
            }
            .footer .info-company{
                position: relative;
                width: 940px;
                margin: 0 auto;
                line-height: 20px;
            }
            .footer .info-company .logo-campany{
                display: block;
                width: 101px;
                height: 19px;
                top: 10px;
                left: 0;

            }
            .footer .info-company dt{
                display: inline-block;
            }
            .footer .info-company dd{
                display: inline-block;
                position: relative;
                padding-right: 8px;
                font-size: 14px;
            }
</style>
<meta charset="UTF-8">
<link href="/Genie_Project/css/Genie.css" rel="stylesheet" type="text/css">
<title>Newest_album_all</title>

<script>
	var login_st = 0;
	function login() {
		if (login_st == 0) {
			var login_list = document.getElementById("login_list");
			login_list.style.opacity = "1";
			login_list.style.visibility = "visible";
			login_st = 1;
		} else if (login_st == 1) {
			var login_list = document.getElementById("login_list");
			login_list.style.opacity = "0";
			login_list.style.visibility = "hidden";
			login_st = 0;
		}
	}
	function play_one(num) {
		window.open("C:/팀4/html/play.html", "플레이리스트", "width=1200, height=630");
		var num = num;
	}
	function play_list(num) {
		window.open("C:/팀4/html/play.html", "플레이리스트", "width=1200, height=630");
	}
	function login() {
		window.open("C:/팀4/html/login.html", "로그인", "width=470, height=430")
	}
</script>

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
						<img src="C:/팀4/사진/이미지/h2_newest.gif" alt="최신음악">
					</h2>
				</div>
				<!-- title -->
				<div class="title-1">
					<ul>
                <li>
                    <a href="/Genie_Project/G_servlet?command=Newest_song_hot">
                        <img src="C:/팀4/사진/이미지/song.png" alt="곡">
                    </a>
                </li>
                <li>
                    <a href="/Genie_Project/G_servlet?command=Newest_album_hot">
                        <img src="C:/팀4/사진/이미지/album.png" alt="앨범">
                    </a>
                </li>
					</ul>
				</div>
				<div class="title-line">
					<h3 style="font: 0/0 a">앨범 종류</h3>
					<ul>
						<li class="hot"><a href="/Genie_Project/G_servlet?command=Newest_album_hot">HOT</a></li>
						<li><a href="/Genie_Project/G_servlet?command=Newest_album_all">전체</a></li>
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
									<th scope="col" class="hd-number">번호</th>
									<th scope="col" class="hd-check" style="width: 180px;"><span
										class="hide">뮤직비디오 이미지</span></th>
									<th scope="col" class="hd-info">영상정보</th>
									<th scope="col" class="hd-large-btns" style="width: 100px;">보기</th>
								</tr>
							</thead>
							<thead>
								<tr class="list">
									<td class="number">1 <span class="rank"> <span
											class="rank"><span class="rank-none"><span
													class="hide">유지</span></span></span>
									</span>
									</td>
									<td><a href="#" class="cover-mv" title="Dynamite"> <span
											class="mask"></span> <img src="C:\팀4\사진\최신음악\최신앨범\전체\1.jpg"
											alt="Dynamite"> <span class="duration">03:47</span>
									</a></td>
									<td class="info"><a href="#" class="title">25:
											Sometimes, we think</a> <a href="#" class="artist">구피 (Goopy)
									</a></td>
									<td class="btns"><a href="#" class="btn-img btn-view"
										title="보기">보기</a></td>
								</tr>
								<tr class="list">
									<td class="number">2 <span class="rank"> <span
											class="rank"><span class="rank-none"><span
													class="hide">유지</span></span></span>
									</span>
									</td>
									<td><a href="#" class="cover-mv" title="Dynamite"> <span
											class="mask"></span> <img src="C:\팀4\사진\최신음악\최신앨범\전체\2.jpg"
											alt="Dynamite"> <span class="duration">03:47</span>
									</a></td>
									<td class="info"><a href="#" class="title">네이버 웹툰
											'랜덤채팅</a> <a href="#" class="artist">오이소박이 </a></td>
									<td class="btns"><a href="#" class="btn-img btn-view"
										title="보기">보기</a></td>
								</tr>
								<tr class="list">
									<td class="number">3 <span class="rank"> <span
											class="rank"><span class="rank-none"><span
													class="hide">유지</span></span></span>
									</span>
									</td>
									<td><a href="#" class="cover-mv" title="Dynamite"> <span
											class="mask"></span> <img src="C:\팀4\사진\최신음악\최신앨범\전체\3.jpg"
											alt="Dynamite"> <span class="duration">03:47</span>
									</a></td>
									<td class="info"><a href="#" class="title">Proximos
											Projimos</a> <a href="#" class="artist">Enjambre</a></td>
									<td class="btns"><a href="#" class="btn-img btn-view"
										title="보기">보기</a></td>
								</tr>
								<tr class="list">
									<td class="number">4 <span class="rank"> <span
											class="rank"><span class="rank-none"><span
													class="hide">유지</span></span></span>
									</span>
									</td>
									<td><a href="#" class="cover-mv" title="Dynamite"> <span
											class="mask"></span> <img src="C:\팀4\사진\최신음악\최신앨범\전체\4.jpg"
											alt="Dynamite"> <span class="duration">03:47</span>
									</a></td>
									<td class="info"><a href="#" class="title">ON MY OWN</a> <a
										href="#" class="artist">The Midnight Romance</a></td>
									<td class="btns"><a href="#" class="btn-img btn-view"
										title="보기">보기</a></td>
								</tr>
								<tr class="list">
									<td class="number">5 <span class="rank"> <span
											class="rank"><span class="rank-none"><span
													class="hide">유지</span></span></span>
									</span>
									</td>
									<td><a href="#" class="cover-mv" title="Dynamite"> <span
											class="mask"></span> <img src="C:\팀4\사진\최신음악\최신앨범\전체\5.jpg"
											alt="Dynamite"> <span class="duration">03:47</span>
									</a></td>
									<td class="info"><a href="#" class="title">미씽: 그들이 있었다
											OST</a> <a href="#" class="artist">신예영</a></td>
									<td class="btns"><a href="#" class="btn-img btn-view"
										title="보기">보기</a></td>
								</tr>
								<tr class="list">
									<td class="number">6 <span class="rank"> <span
											class="rank"><span class="rank-none"><span
													class="hide">유지</span></span></span>
									</span>
									</td>
									<td><a href="#" class="cover-mv" title="Dynamite"> <span
											class="mask"></span> <img src="C:\팀4\사진\최신음악\최신앨범\전체\6.jpg"
											alt="Dynamite"> <span class="duration">03:47</span>
									</a></td>
									<td class="info"><a href="#" class="title">연애의 참견 시즌3
											OST</a> <a href="#" class="artist">세러데이</a></td>
									<td class="btns"><a href="#" class="btn-img btn-view"
										title="보기">보기</a></td>
								</tr>
								<tr class="list">
									<td class="number">7 <span class="rank"> <span
											class="rank"><span class="rank-none"><span
													class="hide">유지</span></span></span>
									</span>
									</td>
									<td><a href="#" class="cover-mv" title="Dynamite"> <span
											class="mask"></span> <img src="C:\팀4\사진\최신음악\최신앨범\전체\7.jpg"
											alt="Dynamite"> <span class="duration">03:47</span>
									</a></td>
									<td class="info"><a href="#" class="title">Cliche</a> <a
										href="#" class="artist">허성현 (Rose de Penny)</a></td>
									<td class="btns"><a href="#" class="btn-img btn-view"
										title="보기">보기</a></td>
								</tr>
								<tr class="list">
									<td class="number">8 <span class="rank"> <span
											class="rank"><span class="rank-none"><span
													class="hide">유지</span></span></span>
									</span>
									</td>
									<td><a href="#" class="cover-mv" title="Dynamite"> <span
											class="mask"></span> <img src="C:\팀4\사진\최신음악\최신앨범\전체\8.jpg"
											alt="Dynamite"> <span class="duration">03:47</span>
									</a></td>
									<td class="info"><a href="#" class="title">Biggest
											Tone</a> <a href="#" class="artist">Kulu</a></td>
									<td class="btns"><a href="#" class="btn-img btn-view"
										title="보기">보기</a></td>
								</tr>
								<tr class="list">
									<td class="number">9 <span class="rank"> <span
											class="rank"><span class="rank-none"><span
													class="hide">유지</span></span></span>
									</span>
									</td>
									<td><a href="#" class="cover-mv" title="Dynamite"> <span
											class="mask"></span> <img src="C:\팀4\사진\최신음악\최신앨범\전체\9.jpg"
											alt="Dynamite"> <span class="duration">03:47</span>
									</a></td>
									<td class="info"><a href="#" class="title">Reve encore</a>
										<a href="#" class="artist">Kikesa</a></td>
									<td class="btns"><a href="#" class="btn-img btn-view"
										title="보기">보기</a></td>
								</tr>
								<tr class="list">
									<td class="number">10 <span class="rank"> <span
											class="rank"><span class="rank-none"><span
													class="hide">유지</span></span></span>
									</span>
									</td>
									<td><a href="#" class="cover-mv" title="Dynamite"> <span
											class="mask"></span> <img src="C:\팀4\사진\최신음악\최신앨범\전체\10.jpg"
											alt="Dynamite"> <span class="duration">03:47</span>
									</a></td>
									<td class="info"><a href="#" class="title">기막힌 유산 OST</a>
										<a href="#" class="artist">나들</a></td>
									<td class="btns"><a href="#" class="btn-img btn-view"
										title="보기">보기</a></td>
								</tr>
								<tr class="list">
									<td class="number">11 <span class="rank"> <span
											class="rank"><span class="rank-none"><span
													class="hide">유지</span></span></span>
									</span>
									</td>
									<td><a href="#" class="cover-mv" title="Dynamite"> <span
											class="mask"></span> <img src="C:\팀4\사진\최신음악\최신앨범\전체\11.jpg"
											alt="Dynamite"> <span class="duration">03:47</span>
									</a></td>
									<td class="info"><a href="#" class="title">오! 삼광빌라!
											OST</a> <a href="#" class="artist">여은</a></td>
									<td class="btns"><a href="#" class="btn-img btn-view"
										title="보기">보기</a></td>
								</tr>
								<tr class="list">
									<td class="number">12 <span class="rank"> <span
											class="rank"><span class="rank-none"><span
													class="hide">유지</span></span></span>
									</span>
									</td>
									<td><a href="#" class="cover-mv" title="Dynamite"> <span
											class="mask"></span> <img src="C:\팀4\사진\최신음악\최신앨범\전체\12.jpg"
											alt="Dynamite"> <span class="duration">03:47</span>
									</a></td>
									<td class="info"><a href="#" class="title">Till I Die</a>
										<a href="#" class="artist">Koukr</a></td>
									<td class="btns"><a href="#" class="btn-img btn-view"
										title="보기">보기</a></td>
								</tr>
								<tr class="list">
									<td class="number">13 <span class="rank"> <span
											class="rank"><span class="rank-none"><span
													class="hide">유지</span></span></span>
									</span>
									</td>
									<td><a href="#" class="cover-mv" title="Dynamite"> <span
											class="mask"></span> <img src="C:\팀4\사진\최신음악\최신앨범\전체\13.jpg"
											alt="Dynamite"> <span class="duration">03:47</span>
									</a></td>
									<td class="info"><a href="#" class="title">Layers</a> <a
										href="#" class="artist">NewFace</a></td>
									<td class="btns"><a href="#" class="btn-img btn-view"
										title="보기">보기</a></td>
								</tr>
								<tr class="list">
									<td class="number">14 <span class="rank"> <span
											class="rank"><span class="rank-none"><span
													class="hide">유지</span></span></span>
									</span>
									</td>
									<td><a href="#" class="cover-mv" title="Dynamite"> <span
											class="mask"></span> <img src="C:\팀4\사진\최신음악\최신앨범\전체\14.jpg"
											alt="Dynamite"> <span class="duration">03:47</span>
									</a></td>
									<td class="info"><a href="#" class="title">Getting
											Lost, Wife, Home</a> <a href="#" class="artist">Rodney
											Dangerfield</a></td>
									<td class="btns"><a href="#" class="btn-img btn-view"
										title="보기">보기</a></td>
								</tr>
								<tr class="list">
									<td class="number">15 <span class="rank"> <span
											class="rank"><span class="rank-none"><span
													class="hide">유지</span></span></span>
									</span>
									</td>
									<td><a href="#" class="cover-mv" title="Dynamite"> <span
											class="mask"></span> <img src="C:\팀4\사진\최신음악\최신앨범\전체\15.jpg"
											alt="Dynamite"> <span class="duration">03:47</span>
									</a></td>
									<td class="info"><a href="#" class="title">다음에 봐</a> <a
										href="#" class="artist">에이민 & 뎁트</a></td>
									<td class="btns"><a href="#" class="btn-img btn-view"
										title="보기">보기</a></td>
								</tr>
								<tr class="list">
									<td class="number">16 <span class="rank"> <span
											class="rank"><span class="rank-none"><span
													class="hide">유지</span></span></span>
									</span>
									</td>
									<td><a href="#" class="cover-mv" title="Dynamite"> <span
											class="mask"></span> <img src="C:\팀4\사진\최신음악\최신앨범\전체\16.jpg"
											alt="Dynamite"> <span class="duration">03:47</span>
									</a></td>
									<td class="info"><a href="#" class="title">BENTLRY 1.5</a>
										<a href="#" class="artist">BENTLRY 1.5염따</a></td>
									<td class="btns"><a href="#" class="btn-img btn-view"
										title="보기">보기</a></td>
								</tr>
								<tr class="list">
									<td class="number">17 <span class="rank"> <span
											class="rank"><span class="rank-none"><span
													class="hide">유지</span></span></span>
									</span>
									</td>
									<td><a href="#" class="cover-mv" title="Dynamite"> <span
											class="mask"></span> <img src="C:\팀4\사진\최신음악\최신앨범\전체\17.jpg"
											alt="Dynamite"> <span class="duration">03:47</span>
									</a></td>
									<td class="info"><a href="#" class="title">바라본다</a> <a
										href="#" class="artist">THUS (더스)</a></td>
									<td class="btns"><a href="#" class="btn-img btn-view"
										title="보기">보기</a></td>
								</tr>
								<tr class="list">
									<td class="number">18 <span class="rank"> <span
											class="rank"><span class="rank-none"><span
													class="hide">유지</span></span></span>
									</span>
									</td>
									<td><a href="#" class="cover-mv" title="Dynamite"> <span
											class="mask"></span> <img src="C:\팀4\사진\최신음악\최신앨범\전체\18.jpg"
											alt="Dynamite"> <span class="duration">03:47</span>
									</a></td>
									<td class="info"><a href="#" class="title">밤하늘의 저 별처럼</a>
										<a href="#" class="artist">헤이즈 (Heize) & 펀치 (Punch)</a></td>
									<td class="btns"><a href="#" class="btn-img btn-view"
										title="보기">보기</a></td>
								</tr>
								<tr class="list">
									<td class="number">19 <span class="rank"> <span
											class="rank"><span class="rank-none"><span
													class="hide">유지</span></span></span>
									</span>
									</td>
									<td><a href="#" class="cover-mv" title="Dynamite"> <span
											class="mask"></span> <img src="C:\팀4\사진\최신음악\최신앨범\전체\19.jpg"
											alt="Dynamite"> <span class="duration">03:47</span>
									</a></td>
									<td class="info"><a href="#" class="title">너의 밤은 어때</a> <a
										href="#" class="artist">정은지 </td>
									<td class="btns"><a href="#" class="btn-img btn-view"
										title="보기">보기</a></td>
								</tr>
								<tr class="list">
									<td class="number">20 <span class="rank"> <span
											class="rank"><span class="rank-none"><span
													class="hide">유지</span></span></span>
									</span>
									</td>
									<td><a href="#" class="cover-mv" title="Dynamite"> <span
											class="mask"></span> <img src="C:\팀4\사진\최신음악\최신앨범\전체\20.jpg"
											alt="Dynamite"> <span class="duration">03:47</span>
									</a></td>
									<td class="info"><a href="#" class="title">im your xYz</a>
										<a href="#" class="artist">용용 (YongYong)</a></td>
									<td class="btns"><a href="#" class="btn-img btn-view"
										title="보기">보기</a></td>
								</tr>
								<tr class="list">
									<td class="number">21 <span class="rank"> <span
											class="rank"><span class="rank-none"><span
													class="hide">유지</span></span></span>
									</span>
									</td>
									<td><a href="#" class="cover-mv" title="Dynamite"> <span
											class="mask"></span> <img src="C:\팀4\사진\최신음악\최신앨범\전체\21.jpg"
											alt="Dynamite"> <span class="duration">03:47</span>
									</a></td>
									<td class="info"><a href="#" class="title">꿈에서 걸려온 전화</a>
										<a href="#" class="artist">김뜻돌</a></td>
									<td class="btns"><a href="#" class="btn-img btn-view"
										title="보기">보기</a></td>
								</tr>
								<tr class="list">
									<td class="number">22 <span class="rank"> <span
											class="rank"><span class="rank-none"><span
													class="hide">유지</span></span></span>
									</span>
									</td>
									<td><a href="#" class="cover-mv" title="Dynamite"> <span
											class="mask"></span> <img src="C:\팀4\사진\최신음악\최신앨범\전체\22.jpg"
											alt="Dynamite"> <span class="duration">03:47</span>
									</a></td>
									<td class="info"><a href="#" class="title">26' seconds</a>
										<a href="#" class="artist">Austn</a></td>
									<td class="btns"><a href="#" class="btn-img btn-view"
										title="보기">보기</a></td>
								</tr>
								<tr class="list">
									<td class="number">23 <span class="rank"> <span
											class="rank"><span class="rank-none"><span
													class="hide">유지</span></span></span>
									</span>
									</td>
									<td><a href="#" class="cover-mv" title="Dynamite"> <span
											class="mask"></span> <img src="C:\팀4\사진\최신음악\최신앨범\전체\23.jpg"
											alt="Dynamite"> <span class="duration">03:47</span>
									</a></td>
									<td class="info"><a href="#" class="title">RAINBOW
											RAYS</a> <a href="#" class="artist">RAFSY</a></td>
									<td class="btns"><a href="#" class="btn-img btn-view"
										title="보기">보기</a></td>
								</tr>
								<tr class="list">
									<td class="number">24 <span class="rank"> <span
											class="rank"><span class="rank-none"><span
													class="hide">유지</span></span></span>
									</span>
									</td>
									<td><a href="#" class="cover-mv" title="Dynamite"> <span
											class="mask"></span> <img src="C:\팀4\사진\최신음악\최신앨범\전체\24.jpg"
											alt="Dynamite"> <span class="duration">03:47</span>
									</a></td>
									<td class="info"><a href="#" class="title">내 방의 우주</a> <a
										href="#" class="artist">포엔 (4&)</a></td>
									<td class="btns"><a href="#" class="btn-img btn-view"
										title="보기">보기</a></td>
								</tr>
								<tr class="list">
									<td class="number">25 <span class="rank"> <span
											class="rank"><span class="rank-none"><span
													class="hide">유지</span></span></span>
									</span>
									</td>
									<td><a href="#" class="cover-mv" title="Dynamite"> <span
											class="mask"></span> <img src="C:\팀4\사진\최신음악\최신앨범\전체\25.jpg"
											alt="Dynamite"> <span class="duration">03:47</span>
									</a></td>
									<td class="info"><a href="#" class="title">Happy Ever
											After</a> <a href="#" class="artist">이더 (E the)</a></td>
									<td class="btns"><a href="#" class="btn-img btn-view"
										title="보기">보기</a></td>
								</tr>
								<tr class="list">
									<td class="number">26 <span class="rank"> <span
											class="rank"><span class="rank-none"><span
													class="hide">유지</span></span></span>
									</span>
									</td>
									<td><a href="#" class="cover-mv" title="Dynamite"> <span
											class="mask"></span> <img src="C:\팀4\사진\최신음악\최신앨범\전체\26.jpg"
											alt="Dynamite"> <span class="duration">03:47</span>
									</a></td>
									<td class="info"><a href="#" class="title">다정</a> <a
										href="#" class="artist">윤송</a></td>
									<td class="btns"><a href="#" class="btn-img btn-view"
										title="보기">보기</a></td>
								</tr>
								<tr class="list">
									<td class="number">27 <span class="rank"> <span
											class="rank"><span class="rank-none"><span
													class="hide">유지</span></span></span>
									</span>
									</td>
									<td><a href="#" class="cover-mv" title="Dynamite"> <span
											class="mask"></span> <img src="C:\팀4\사진\최신음악\최신앨범\전체\27.jpg"
											alt="Dynamite"> <span class="duration">03:47</span>
									</a></td>
									<td class="info"><a href="#" class="title">VERTIGO</a> <a
										href="#" class="artist">Cid Cyan</a></td>
									<td class="btns"><a href="#" class="btn-img btn-view"
										title="보기">보기</a></td>
								</tr>
								<tr class="list">
									<td class="number">28 <span class="rank"> <span
											class="rank"><span class="rank-none"><span
													class="hide">유지</span></span></span>
									</span>
									</td>
									<td><a href="#" class="cover-mv" title="Dynamite"> <span
											class="mask"></span> <img src="C:\팀4\사진\최신음악\최신앨범\전체\28.jpg"
											alt="Dynamite"> <span class="duration">03:47</span>
									</a></td>
									<td class="info"><a href="#" class="title">Forgotten
											Love OST</a> <a href="#" class="artist">주설옥</a></td>
									<td class="btns"><a href="#" class="btn-img btn-view"
										title="보기">보기</a></td>
								</tr>
								<tr class="list">
									<td class="number">29 <span class="rank"> <span
											class="rank"><span class="rank-none"><span
													class="hide">유지</span></span></span>
									</span>
									</td>
									<td><a href="#" class="cover-mv" title="Dynamite"> <span
											class="mask"></span> <img src="C:\팀4\사진\최신음악\최신앨범\전체\29.jpg"
											alt="Dynamite"> <span class="duration">03:47</span>
									</a></td>
									<td class="info"><a href="#" class="title">그대만 내게</a> <a
										href="#" class="artist">주로키 (JUROKEY)</a></td>
									<td class="btns"><a href="#" class="btn-img btn-view"
										title="보기">보기</a></td>
								</tr>
								<tr class="list">
									<td class="number">30 <span class="rank"> <span
											class="rank"><span class="rank-none"><span
													class="hide">유지</span></span></span>
									</span>
									</td>
									<td><a href="#" class="cover-mv" title="Dynamite"> <span
											class="mask"></span> <img src="C:\팀4\사진\최신음악\최신앨범\전체\30.jpg"
											alt="Dynamite"> <span class="duration">03:47</span>
									</a></td>
									<td class="info"><a href="#" class="title">Love You
											Too</a> <a href="#" class="artist">스틸 (Steel)</a></td>
									<td class="btns"><a href="#" class="btn-img btn-view"
										title="보기">보기</a></td>
								</tr>
							</tbody>
						</table>
						<!-- list-wrap -->
						<div class="toolbar">
							<input type="checkbox" class="all-check" title="전체 선택"> <a
								href="#" class="btn btn-listen" title="재생">듣기</a> <a href="#"
								class="btn btn-add" title="추가">추가</a> <a href="#"
								class="btn btn-album" title="담기">담기
								</button> <a href="#" class="btn btn-down" title="다운">다운</a>
						</div>
						<!-- toolbar-->
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


<jsp:include page="/Footer.jsp"></jsp:include>
</body>
</html>