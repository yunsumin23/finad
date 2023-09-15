<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%	// 인증된 세션이 없으면 페이지 못보게 할거임
// getAttribute하면 오브젝트 타입으로 넘어오기때문에 우리가 사용하기 편하게 하기 위해 앞에 강제로
// 형변환 해준거임
String id = (String) session.getAttribute("id");
String password = (String) session.getAttribute("password");
String type = (String) session.getAttribute("type");
if (id == null && password == null) {
    response.sendRedirect("login.html");
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="css/header_login.css" rel="stylesheet" type="text/css">
<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
<script type="text/javascript" src="js/header_login.js"></script>
</head>
<body>
	<header>
		<div class="top_div">
			<a href="main.html"><img src="img/logo.png" alt="로고"
				id="main_logo"></a>
			<div class="top_button">
				<a href="login.html"><img src="img/login.png" alt=""></a> <a
					href="signup_agree.html"><img src="img/signup.png" alt=""></a>
				<a href="login.html"><img src="img/mypage.png" alt=""></a>
			</div>
		</div>
		<div class="header_search">
			<input type="search" class="form-control" placeholder="search">
		</div>
	</header>
	<div class="nav_div">
		<nav>
			<p class="gnbbox"></p>
			<div class="category">
				<div class="category_text">카테고리</div>
				<ul class="nav_ul">
					<li class="nav_li01"><a href="company_written_list.html"
						target="_blank">광고게시판</a></li>
					<li class="nav_li02"><a href="" target="_blank">크리에이터 게시판</a></li>
					<li class="nav_li03"><a href="" target="_blank">자유게시판</a></li>
					<li class="nav_li04"><a href="" target="_blank">광고현황</a></li>
					<li class="nav_li05"><a href="adstore.html" target="_blank">ADStore</a></li>
				</ul>
				<div class="category_div">
					<div class="gnb_div">
						<ul class="gnb">
							<li onmouseenter="zoomIn(event)" onmouseleave="zoomOut(event)"><a
								href="categori01.html" target="_blank">
									<div>
										<img src="img/beauty_img.png" alt="">
										<div class="li_text">뷰티 * 패션</div>
									</div>
							</a></li>
							<li onmouseenter="zoomIn(event)" onmouseleave="zoomOut(event)"><a
								href="" target="_blank">
									<div>
										<img src="img/food_img.png" alt="">
										<div class="li_text">먹방</div>
									</div>
							</a></li>
							<li onmouseenter="zoomIn(event)" onmouseleave="zoomOut(event)"><a
								href="" target="_blank">
									<div>
										<img src="img/BJ_img.png" alt="">
										<div class="li_text">BJ * 엔터테이너</div>
									</div>
							</a></li>
							<li onmouseenter="zoomIn(event)" onmouseleave="zoomOut(event)"><a
								href="" target="_blank">
									<div>
										<img src="img/vlog_img.png" alt="">
										<div class="li_text">vlog * 일상</div>
									</div>
							</a></li>
						</ul>
					</div>
					<div class="gnb_div">
						<ul class="gnb">
							<li onmouseenter="zoomIn(event)" onmouseleave="zoomOut(event)"><a
								href="" target="_blank">
									<div>
										<img src="img/game_img.png" alt="">
										<div class="li_text">게임</div>
									</div>
							</a></li>
							<li onmouseenter="zoomIn(event)" onmouseleave="zoomOut(event)"><a
								href="" target="_blank">
									<div>
										<img src="img/IT_img.png" alt="">
										<div class="li_text">IT * 전자기기</div>
									</div>
							</a></li>
							<li onmouseenter="zoomIn(event)" onmouseleave="zoomOut(event)"><a
								href="" target="_blank">
									<div>
										<img src="img/music_img.png" alt="">
										<div class="li_text">음악 * 춤</div>
									</div>
							</a></li>
							<li onmouseenter="zoomIn(event)" onmouseleave="zoomOut(event)"><a
								href="" target="_blank">
									<div>
										<img src="img/cook_img.png" alt="">
										<div class="li_text">요리 * 베이킹</div>
									</div>
							</a></li>
						</ul>
					</div>
					<div class="gnb_div">
						<ul class="gnb">
							<li onmouseenter="zoomIn(event)" onmouseleave="zoomOut(event)"><a
								href="" target="_blank">
									<div>
										<img src="img/travel_img.png" alt="">
										<div class="li_text">여행 * 아웃도어</div>
									</div>
							</a></li>
							<li onmouseenter="zoomIn(event)" onmouseleave="zoomOut(event)"><a
								href="" target="_blank">
									<div>
										<img src="img/pet_img.png" alt="">
										<div class="li_text">동물 * 펫</div>
									</div>
							</a></li>
							<li onmouseenter="zoomIn(event)" onmouseleave="zoomOut(event)"><a
								href="" target="_blank">
									<div>
										<img src="img/sports_img.png" alt="">
										<div class="li_text">스포츠 * 건강</div>
									</div>
							</a></li>
							<li onmouseenter="zoomIn(event)" onmouseleave="zoomOut(event)"><a
								href="" target="_blank">
									<div>
										<img src="img/movie_img.png" alt="">
										<div class="li_text">영화 * 애니</div>
									</div>
							</a></li>
						</ul>
					</div>
					<div class="gnb_div">
						<ul class="gnb">
							<li onmouseenter="zoomIn(event)" onmouseleave="zoomOut(event)"><a
								href="" target="_blank">
									<div>
										<img src="img/car_img.png" alt="">
										<div class="li_text">자동차</div>
									</div>
							</a></li>
							<li onmouseenter="zoomIn(event)" onmouseleave="zoomOut(event)"><a
								href="" target="_blank">
									<div>
										<img src="img/kid_img.png" alt="">
										<div class="li_text">키즈 * 플레이</div>
									</div>
							</a></li>
							<li onmouseenter="zoomIn(event)" onmouseleave="zoomOut(event)"><a
								href="" target="_blank">
									<div>
										<img src="img/education_img.png" alt="">
										<div class="li_text">교육</div>
									</div>
							</a></li>
							<li onmouseenter="zoomIn(event)" onmouseleave="zoomOut(event)"><a
								href="" target="_blank">
									<div>
										<img src="img/real estate_img.png" alt="">
										<div class="li_text">부동산 * 투자</div>
									</div>
							</a></li>
						</ul>
					</div>
					<div class="gnb_div">
						<ul class="gnb">
							<li onmouseenter="zoomIn(event)" onmouseleave="zoomOut(event)"><a
								href="" target="_blank">
									<div>
										<img src="img/Politics_img.png" alt="">
										<div class="li_text">정치 * 시사</div>
									</div>
							</a></li>
							<li onmouseenter="zoomIn(event)" onmouseleave="zoomOut(event)"><a
								href="" target="_blank">
									<div>
										<img src="img/palette_img.png" alt="">
										<div class="li_text">그림 *만들기</div>
									</div>
							</a></li>
							<li onmouseenter="zoomIn(event)" onmouseleave="zoomOut(event)"><a
								href="" target="_blank">
									<div>
										<img src="img/clover_img.png" alt="">
										<div class="li_text">운세 * 타로</div>
									</div>
							</a></li>
							<li onmouseenter="zoomIn(event)" onmouseleave="zoomOut(event)"><a
								href="" target="_blank">
									<div>
										<img src="img/another_img.png" alt="">
										<div class="li_text">기타</div>
									</div>
							</a></li>
						</ul>
					</div>
				</div>
			</div>
		</nav>
	</div>
</body>

</html>