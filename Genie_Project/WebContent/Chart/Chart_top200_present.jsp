<%@page import="java.util.Vector"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
   <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="/Genie_Project/css/Genie.css" rel="stylesheet"
   type="text/css">
<title>Top200_present</title>
<script type="text/javascript"
   src="https://www.gstatic.com/charts/loader.js">
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
                window.open("/Genie_Project/G_servlet?command=Song_play&songid="+num,"플레이리스트","width=1200, height=630");
                var num=num;
            }
            function play_list(num){
                window.open("/Genie_Project/G_servlet?command=Song_play","플레이리스트","width=1200, height=630");
            }
            function login(){
                window.open("/Genie_Project/G_servlet?command=Login","로그인","width=470, height=430")
            }
            function mv(num){
               window.open("/Genie_Project/G_servlet?command=Song_MV&songid="+num,"뮤직비디오","width=700, height=550");
            }
            function img(num){
               window.open("/Genie_Project/G_servlet?command=Song_info&songid="+num, "앨범정보", "width=470, height=430")
            }

                google.charts.load('current', {'packages':['corechart']});
        google.charts.setOnLoadCallback(drawChart);
  
        function drawChart() {


          var data = google.visualization.arrayToDataTable([
            //[시간, Ba, Dy, Ti, 오, 내]
            ['Hour', '다시 여기 바닷가','눈누난나','그 여름을 틀어줘','LINDA','마리아'],
            [0,   73, 62, 57, 53, 44],
            [1,   68, 60, 55, 54, 43],
            [2,   67, 61, 57, 53, 42],
            [3,   65, 61, 54, 52, 43],
            [4,   68, 62, 55, 51, 42],
            [5,   71, 65, 58, 54, 41],
            [6,   74, 67, 57, 53, 43],
            [7,   72, 62, 58, 52, 45],
            [8,   73, 62, 56, 52, 43],
            [9,   74, 62, 57, 51, 42],
            [10,  72, 62, 55, 52, 42],
            [11,  74, 61, 53, 53, 41],
            [12,  69, 60, 52, 51, 38],
            [13,  65, 58, 52, 50, 38],
            [14,  66, 57, 52, 48, 40],
            [15,  66, 57, 52, 48, 40],
            [16,  66, 57, 53, 48, 40],
            [17,  66, 57, 55, 49, 40],
            [18,  66, 57, 57, 52, 40],
            [19,  66, 62, 58, 54, 50],
            [20,  87, 76, 65, 58, 61],
            [21,  84, 73, 69, 62, 59],
            [22,  82, 72, 67, 61, 58],
            [23,  80, 70, 65, 60, 57],
            [24,  73, 62, 57, 53, 44]
            ]);
  
        //   var options = {
        //     title: 'Company Performance',
        //     curveType: 'function',
        //     legend: { position: 'bottom' }
        //   };
        var options = {
            // chart: {
            title: '실시간 차트 점유율 그래프',
            subtitle: '1~5위',
            // },
            width: 700,
            height: 400,
            vAxis:{ textPosition:'none',
                    maxValue:100,
                    minValue: 0,
                    
                },
            hAxis:{
                    viewWindowMode:'expicit',
                    viewWindow:{min:0, max: 24},
                    ticks: [0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24], 
                    gridlines: 24},
            axes: {x: {0: {side: 'bottom'}}}
            
        };
          var chart = new google.visualization.LineChart(document.getElementById('curve_chart'));
  
          chart.draw(data, options);
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
                  <li><a
                     href="/Genie_Project/G_servlet?command=Chart_top200_present">
                        <img src="C:/팀4/사진/이미지/top_200.png" alt="탑200">
                  </a></li>
                  <li><a
                     href="/Genie_Project/G_servlet?command=Chart_genre_kpop_day">
                        <img src="C:/팀4/사진/이미지/genre_chart.png" alt="장르별차트">
                  </a></li>
                  <li><a href="/Genie_Project/G_servlet?command=Chart_MV_day">
                        <img src="C:/팀4/사진/이미지/mv_chart.png" alt="뮤직비디오차트">
                  </a></li>
               </ul>
            </div>
            <div class="chart-date">
               <div class="date">
                  <h3>
                     <span id="inc_date">2020.09.29</span>
                     <time>
                        <span id="inc_time">02:00</span>
                     </time>
                  </h3>
                  <a href="#"> <img src="C:/팀4/사진/이미지/time.png" alt="시간 보기">
                  </a>
               </div>
               <!-- date -->
               <ul class="select-term">
                  <li class=""><a
                     href="/Genie_Project/G_servlet?command=Chart_top200_present"
                     class="radius current">실시간</a></li>
                  <li><a
                     href="/Genie_Project/G_servlet?command=Chart_top200_day"
                     class="radius ">일간</a></li>
                  <li><a
                     href="/Genie_Project/G_servlet?command=Chart_top200_week"
                     class="radius ">주간</a></li>
                  <li><a
                     href="/Genie_Project/G_servlet?command=Chart_top200_month"
                     class="radius ">월간</a></li>
               </ul>
            </div>
            <!--chart-date -->
            <div id="curve_chart" onload="drawChart()"></div>
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
                        </div> <!-- btns -->
                  </div>
                  <!-- toolbar-->
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
                           <!-- <th scope="col" class="hd-more">더보기</th> -->
                        </tr>
                     </thead>
                     <tbody>
                        <c:forEach var="i" begin="0" end="49">
                           <tr class="list" songid="${i }">
                              <!-- tr list -->
                              <td class="check"><input type="checkbox"
                                 class="select-check" title="${songList[i].getTitle() }"></td>
                              <td class="number">${songList[i].getSongid() }</td>
                              <td><a href="#" class="imge"
                                 onclick="img(${songList[i].getSongid()})"> <span
                                    class="mask"></span> <img
                                    src="C:/Users/최유강/Desktop/팀4 (2)/사진/지니차트/TOP 200/월간/${songList[i].getSongid() }.jpg"
                                    alt="${songList[i].getTitle() }">
                              </a></td>
                              <td class="info"><a href="#" class="sg songTitle">${songList[i].getTitle()}</a>
                                 <a href="#" class="sg songArtist">${songList[i].getArtist()}</a>
                                 ${songList[i].getSongid()} ${songList[i].getG_like() } <!-- <a href="#">가수옆작은화살표</a> 이건 제목옆 토글 -->
                                 <!-- <a href="#">화살표옆 앨범타이틀</a> --></td>
                              <td class="btns"><a href="#" title="재생"
                                 class="btn-img btn-listen"
                                 onclick="play_one(${songList[i].getSongid()})">듣기</a></td>
                              <td class="btns"><a href="#" title="추가"
                                 class="btn-img btn-add" onclick="play_list(1)">추가</a></td>
                              <td class="btns"><a href="#" title="담기"
                                 class="btn-img btn-album" onclick="login()">담기</a></td>
                              <td class="btns"><a href="#" title="다운"
                                 class="btn-img btn-down" onclick="login()">다운</a></td>
                              <td class="btns"><a href="#" title="뮤비"
                                 class="btn-img btn-movie"
                                 onclick="mv(${songList[i].getSongid()})">뮤비</a></td>
                           </tr>
                        </c:forEach>
                        <!-- tr list -->
                     </tbody>
                  </table>
                  <!-- song-list -->
                  <div class="toolbar">
                     <input type="checkbox" class="all-check" title="전체 선택"> <a
                        href="#" class="btn btn-listen" title="재생">듣기</a> <a href="#"
                        class="btn btn-add" title="추가">추가</a> <a href="#"
                        class="btn btn-album" title="담기">담기
                        </button> <a href="#" class="btn btn-down" title="다운">다운</a>
                  </div>
                  <!-- toolbar-->
                  </tbody>
                  </table>
                  <!-- list-wrap -->
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
      <!-- inf-company -->
   <!-- wrap-foot -->
</body>
</html>