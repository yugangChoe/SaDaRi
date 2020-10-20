<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<script>
	function login() {
		window.open("G_servlet?command=Login", "로그인", "width=470, height=430")
	}
</script>
<body>
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
						<div class="sub_menu" style="width: 24%;">
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

</body>
</html>