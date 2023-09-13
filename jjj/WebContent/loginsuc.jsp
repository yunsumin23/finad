<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%	// 인증된 세션이 없으면 페이지 못보게 할거임
if (session.getAttribute("id") == null && session.getAttribute("password")== null) {
    response.sendRedirect("main.html");
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- <link href="css/loginsuc.css" rel="stylesheet" type="text/css"> -->
<style type="text/css">
@import url('https://fonts.googleapis.com/css2?family=Do+Hyeon&display=swap');

* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family: 'Do Hyeon', sans-serif;
}


header {
    position: relative;
    height: 100px;
    width: 1300px;
    margin: 0 auto;
}

header a,
nav a {
    text-decoration: none;
}

.top_button img {
    height: 18px;
    padding-left: 10px;
}

#main_logo {
    position: absolute;
    top: 10px;
    left: 0px;
    width: 250px;
    height: auto;
}

.top_button {
    position: absolute;
    top: 25px;
    right: 0px;
}

.form-control {
    width: 320px;
    height: 30px;
    font-size: 17px;
    color: black;
    display: grid;
    place-items: center;
    border: 1px solid black;
    padding: 10px;
}

.header_search {
    position: absolute;
    top: 50px;
    right: 0px;
}

.nav_div {
    display: flex;
    width: 1300px;
    margin: 30px auto;
}

.nav_div a {
    text-decoration: none;
    color: #014D81;
}

.gnbbox {
    width: 870px;
    height: 210px;
    background: white;
    position: absolute;
    top: 180px;
    border: 5px solid #014D81;
    border-radius: 15px;
}

.nav_div li {
    font-family: 'Do Hyeon', sans-serif;
    list-style: none;
    line-height: 40px;
}

.gnb li {
    margin-right: 23px;
}

.gnb a {
    color: #014D81;
    font-size: 18px;
}

.gnb img {
    height: 25px;
}

.category {
    color: #014D81;
    display: flex;
    position: absolute;
}

.category_text {
    font-size: 25px;
    color: #014D81;
    line-height: 40px;
}

.nav_ul {
    display: flex;
    font-size: 25px;
    font-weight: 500;
    justify-content: space-between;
    width: 700px;
    margin-left: 100px;
}

.category_div {
    position: absolute;
    top: 50px;
    left: 0;
    display: flex;
    width: 1000px;
}

.category_div li {
    padding: 5px;
}

.gnb div {
    display: flex;
    align-items: center;
}

.li_text {
    padding-left: 8px;
}

.category_div li:nth-child(1) {
    margin-left: 15px;
}

.category_div li:nth-child(2) {
    margin-left: 15px;
}

.category_div li:nth-child(3) {
    margin-left: 15px;
}

.category_div li:nth-child(4) {
    margin-left: 15px;
}

.category_div li:nth-child(5) {
    margin-left: 15px;
}

.nav_ul li a:after {
    display: block;
    content: "";
    width: 90px;
    height: 10px;
    border-bottom: 1px solid #000;
    margin: -15px auto;
    transform: scaleX(0);
    transition: all 250ms ease-in-out;
}

nav ul li:hover a:after {
    transform: scaleX(1);
}

nav ul li:nth-child(2) a:after {
    width: 160px;
}

nav ul li:nth-child(3) a:after {
    width: 90px;
}

nav ul li:nth-child(4) a:after {
    width: 70px;
}

nav ul li:nth-child(5) a:after {
    width: 83px;
  }
  
  .log{
      margin: 0 auto;
      margin-top: 150px;
      text-align: center;
      width: 1300px;
      
  }
  
  .main_move{
    width: 200px;
    height: 50px;
    background-color: #014D81;
    color: white;
    font-size: 20px;
    border-radius: 15px;
    border: none;
  }

/* 푸터 시작 */
footer {
    position: absolute;
    width: 100%;
    margin-top: 100px;
    background-color: #014D81;
}

.footer_class {
    width: 1300px;
    height: 200px;
    margin: 0 auto;
    padding-top: 50px;
}

footer a {
    text-decoration: none;
    color: #aaa;
    font-weight: 400;
}

footer p {
    color: #aaa;
    font-weight: 400;
}
/* 회원가입 완료 css*/
</style>
<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
<script type="text/javascript" src="js/loginsuc.js"></script>
</head>
<body>
        <header>
            <div class="top_div">
                <a href="main.html"><img src="img/logo.png" alt="로고" id="main_logo"></a>
                <div class="top_button">
                    <a href="#"><img src="img/login.png" alt=""></a>
                    <a href="signup_agree.html"><img src="img/signup.png" alt=""></a>
                    <a href="#"><img src="img/mypage.png" alt=""></a>
                </div>
            </div>
            <div class="header_search">
                <input type="search" class="form-control" placeholder="search">
            </div>
            <div class="nav_div">
            <nav>
                <p class="gnbbox"></p>
                <div class="category">
                    <div class="category_text">카테고리</div>
                    <ul class="nav_ul">
                        <li class="nav_li01"><a href="company_written_list.html" target="_blank">광고게시판</a></li>
                        <li class="nav_li02"><a href="" target="_blank">크리에이터 게시판</a></li>
                        <li class="nav_li03"><a href="" target="_blank">자유게시판</a></li>
                        <li class="nav_li04"><a href="" target="_blank">광고현황</a></li>
                        <li class="nav_li05"><a href="adstore.html" target="_blank">ADStore</a></li>
                    </ul>
                    <div class="category_div">
                        <div class="gnb_div">
                            <ul class="gnb">
                                <li onmouseenter="zoomIn(event)" onmouseleave="zoomOut(event)"><a href="categori01.html" target="_blank">
                                        <div><img src="img/beauty_img.png" alt="">
                                            <div class="li_text">뷰티 * 패션</div>
                                        </div>
                                    </a></li>
                                <li onmouseenter="zoomIn(event)" onmouseleave="zoomOut(event)"><a href="" target="_blank">
                                        <div><img src="img/food_img.png" alt="">
                                            <div class="li_text">먹방</div>
                                        </div>
                                    </a></li>
                                <li onmouseenter="zoomIn(event)" onmouseleave="zoomOut(event)"><a href="" target="_blank">
                                        <div><img src="img/BJ_img.png" alt="">
                                            <div class="li_text">BJ * 엔터테이너</div>
                                        </div>
                                    </a></li>
                                <li onmouseenter="zoomIn(event)" onmouseleave="zoomOut(event)"><a href="" target="_blank">
                                        <div><img src="img/vlog_img.png" alt="">
                                            <div class="li_text">vlog * 일상</div>
                                        </div>
                                    </a></li>
                            </ul>
                        </div>
                        <div class="gnb_div">
                            <ul class="gnb">
                                <li onmouseenter="zoomIn(event)" onmouseleave="zoomOut(event)"><a href="" target="_blank">
                                        <div><img src="img/game_img.png" alt="">
                                            <div class="li_text">게임</div>
                                        </div>
                                    </a></li>
                                <li onmouseenter="zoomIn(event)" onmouseleave="zoomOut(event)"><a href="" target="_blank">
                                        <div><img src="img/IT_img.png" alt="">
                                            <div class="li_text">IT * 전자기기</div>
                                        </div>
                                    </a></li>
                                <li onmouseenter="zoomIn(event)" onmouseleave="zoomOut(event)"><a href="" target="_blank">
                                        <div><img src="img/music_img.png" alt="">
                                            <div class="li_text">음악 * 춤</div>
                                        </div>
                                    </a></li>
                                <li onmouseenter="zoomIn(event)" onmouseleave="zoomOut(event)"><a href="" target="_blank">
                                        <div><img src="img/cook_img.png" alt="">
                                            <div class="li_text">요리 * 베이킹</div>
                                        </div>
                                    </a></li>
                            </ul>
                        </div>
                        <div class="gnb_div">
                            <ul class="gnb">
                                <li onmouseenter="zoomIn(event)" onmouseleave="zoomOut(event)"><a href="" target="_blank">
                                        <div><img src="img/travel_img.png" alt="">
                                            <div class="li_text">여행 * 아웃도어</div>
                                        </div>
                                    </a></li>
                                <li onmouseenter="zoomIn(event)" onmouseleave="zoomOut(event)"><a href="" target="_blank">
                                        <div><img src="img/pet_img.png" alt="">
                                            <div class="li_text">동물 * 펫</div>
                                        </div>
                                    </a></li>
                                <li onmouseenter="zoomIn(event)" onmouseleave="zoomOut(event)"><a href="" target="_blank">
                                        <div><img src="img/sports_img.png" alt="">
                                            <div class="li_text">스포츠 * 건강</div>
                                        </div>
                                    </a></li>
                                <li onmouseenter="zoomIn(event)" onmouseleave="zoomOut(event)"><a href="" target="_blank">
                                        <div><img src="img/movie_img.png" alt="">
                                            <div class="li_text">영화 * 애니</div>
                                        </div>
                                    </a></li>
                            </ul>
                        </div>
                        <div class="gnb_div">
                            <ul class="gnb">
                                <li onmouseenter="zoomIn(event)" onmouseleave="zoomOut(event)"><a href="" target="_blank">
                                        <div><img src="img/car_img.png" alt="">
                                            <div class="li_text">자동차</div>
                                        </div>
                                    </a></li>
                                <li onmouseenter="zoomIn(event)" onmouseleave="zoomOut(event)"><a href="" target="_blank">
                                        <div><img src="img/kid_img.png" alt="">
                                            <div class="li_text">키즈 * 플레이</div>
                                        </div>
                                    </a></li>
                                <li onmouseenter="zoomIn(event)" onmouseleave="zoomOut(event)"><a href="" target="_blank">
                                        <div><img src="img/education_img.png" alt="">
                                            <div class="li_text">교육</div>
                                        </div>
                                    </a></li>
                                <li onmouseenter="zoomIn(event)" onmouseleave="zoomOut(event)"><a href="" target="_blank">
                                        <div><img src="img/real estate_img.png" alt="">
                                            <div class="li_text">부동산 * 투자</div>
                                        </div>
                                    </a></li>
                            </ul>
                        </div>
                        <div class="gnb_div">
                            <ul class="gnb">
                                <li onmouseenter="zoomIn(event)" onmouseleave="zoomOut(event)"><a href="" target="_blank">
                                        <div><img src="img/Politics_img.png" alt="">
                                            <div class="li_text">정치 * 시사</div>
                                        </div>
                                    </a></li>
                                <li onmouseenter="zoomIn(event)" onmouseleave="zoomOut(event)"><a href="" target="_blank">
                                        <div><img src="img/palette_img.png" alt="">
                                            <div class="li_text">그림 *만들기</div>
                                        </div>
                                    </a></li>
                                <li onmouseenter="zoomIn(event)" onmouseleave="zoomOut(event)"><a href="" target="_blank">
                                        <div><img src="img/clover_img.png" alt="">
                                            <div class="li_text">운세 * 타로</div>
                                        </div>
                                    </a></li>
                                <li onmouseenter="zoomIn(event)" onmouseleave="zoomOut(event)"><a href="" target="_blank">
                                        <div><img src="img/another_img.png" alt="">
                                            <div class="li_text">기타</div>
                                        </div>
                                    </a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </nav>
        </div>
        <form action="main.html" class="log" method="post">
          <h1 class="log_success">로그인 성공</h1><br>
          <input type="submit" value="메인으로 이동" class="main_move">
    </form>
        <footer>
            <div class="footer_class">
                <a href="#" target="_blank">개인정보처리방침</a> | <a href="#" target="_blank">서비스이용약관</a> | <a href="#"
                    target="_blank">FINAD이용약관</a> | <a href="#" target="_blank">고객문의</a> | <a href="#"
                    target="_blank">사이트맵</a>
                <p> 법인명: (주) FINAD 대표자: 김유상 사업자등록번호 000-00-00000 통신판매업: 제0000-서울종로-0000호 <br> 주소 : 서울 성동구 광나루로 130 1101호
                </p>
                <p>COPYRIGHT (C) FINAD. All Rights Reserved.</p>
            </div>
        </footer>
        </header>
</body>
</html>