<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.project.jjj.Influ_info"%>
<%@ page import="com.project.jjj.Mypage_influ"%>
<jsp:useBean id="session1" class="com.project.jjj.Mypage"></jsp:useBean>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="css/mypage_influ.css" rel="stylesheet" type="text/css">
<script type="text/javascript"
	src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/chart.js@3.7.1/dist/chart.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
<script type="text/javascript" src="js/mypage_influ.js"></script>
</head>
<body>
	<%
		String id = (String) session.getAttribute("id");
		String password = (String) session.getAttribute("password");
		String type = (String) session.getAttribute("type");
		if (id == null && password == null) {
			response.sendRedirect("login.jsp");
		} else {
	%>
	<jsp:include page="header_logout.jsp"></jsp:include>
	<%
		}
		Influ_info user = session1.influ(id);
		Mypage_influ user1 = session1.influ_mypage(id);
	%>

	<div class="main">
		<h1>마이페이지</h1>
		<div class="all_info">

			<div class="top_info">
				<div class="user_img">
					<img alt="img/user.png" src="img/user.png">
				</div>
				<div class="div_ul">
					<button id="showInfo">정보 확인하기</button>
					<ul class='info_ul'>
						<%
							out.println("<li>닉네임 : " + user.getNickname() + "</li>");
							out.println("<li>이름 : " + user.getName() + "</li>");
							out.println("<li>이메일 : " + user.getEmail() + "</li>");
							out.println("<li>전화번호 : " + user.getMobilenumber() + "</li>");
						%>
					</ul>

				</div>
				<div class="div_sns">
					<ul>
						<%
							out.println("<li><a href='" + user1.getYoutuLink()
									+ "' target='_blank'><img alt='' src='img/youtube.png'></a></li>");
							out.println("<li><a href='" + user1.getLiveBcLink()
									+ "' target='_blank'><img alt='' src='img/twitch.png'></a></li>");
							out.println("<li><a href='" + user1.getSnsLink()
									+ "' target='_blank'><img alt='' src='img/instagram.png'></a></li>");
						%>
					</ul>
				</div>
			</div>
			<hr>
			<div class="div_data">
				<div>
					<ul>
						<li>구독자 수</li>
						<li>평균 시청자 수</li>
					</ul>
				</div>
				<div>
					<ul>
						<%
							out.println("<li>" + user1.getSubscri() + "</li>");
							out.println("<li>" + user1.getAvgviewers() + "</li>");
						%>
					</ul>
				</div>
			</div>
			<div class="div_data2">
				<div>
					<ul>
						<%
						double tenAge = user1.getTenAge();
					    double tweAge = user1.getTweAge();
					    double thrAge = user1.getThrAge();
					    double forAge = user1.getForAge();
					    double fifAge = user1.getFifAge();

					    double startTenAge = 0.0;
					    double endTenAge = tenAge;

					    double startTweAge = endTenAge;
					    double endTweAge = startTweAge + tweAge;

					    double startThrAge = endTweAge;
					    double endThrAge = startThrAge + thrAge;

					    double startForAge = endThrAge;
					    double endForAge = startForAge + forAge;

					    double startFifAge = endForAge;
					    double endFifAge = 100.0; // 최대 100%까지
						
					    String gradientStyle = "background: conic-gradient(" +
					            "#02f533 " + startTenAge + "% " + endTenAge + "%," +
					            "#02b4f5 " + startTweAge + "% " + endTweAge + "%," +
					            "#f22424 " + startThrAge + "% " + endThrAge + "%," +
					            "#ffa600 " + startForAge + "% " + endForAge + "%," +
					            "#f5dd02 " + startFifAge + "% " + endFifAge + "%" +
					        ");";
					    
					   double manRatio = user1.getMan_ratio();
					   double womanRatio = user1.getWoman_ratio();
					   
					   double startManRatio = 0.0;
					   double endManRatio = manRatio;
					   
					   double startWomanRatio = endManRatio;
					   double endWomanRatio = 100.0;
					   
					   String genderStyle = "background: conic-gradient(" + 
					   			"#FF3A56 " + startManRatio + "% " + endManRatio + "%," + 
					   			"#014D81 " + startWomanRatio + "% " + endWomanRatio + "%" +
					   					");";
					   
							out.println(
									"<li><p class='count-num' data-count='" + user1.getThravgSub() + "'>0</p><br>최근 30일 구독자 수</li>");
							out.println(
									"<li><p class='count-num' data-count='" + user1.getThravgViewer() + "'>0</p><br>최근 30일 시청자 수</li>");
							out.println(
									"<li><p class='count-num' data-count='" + user1.getThravgHit() + "'>0</p><br>최근 30일 평균 조회수</li>");
							out.println("<li><p class='gender_type' style='" + genderStyle + "'></p><br>구독자 성비<div class='man_woman'><div class='man'>남 : " + manRatio + "</div><div class='woman'>여 : " + womanRatio + "</div></div></li>");
							out.println("<li><p class='sub_age' style='" + gradientStyle + "'></p><br>구독자 연령대<div class='avg_age'><div class='ten'>10대" + tenAge + "</div><div class='twe'>20대" + tweAge + "</div><div class='thr'>30대" + thrAge + "</div><div class='fort'>40대" + forAge + "</div><div class='fift'>50대" + fifAge + "</div></div></li>");
						%>
						
					</ul>
				</div>
			</div>
			<hr>
			<h2>카테고리</h2>
			<div class="div_category">
				<ul>
					<%
						out.println("<li>" + user.getCategory() + "</li>");
					%>
				</ul>
			</div>
			<h2>소개글</h2>
			<div class="text">
				<%
					out.println(user1.getIntroduc());
				%>
			</div>
			<!-- 			<form action="" method="post">
				<input type="text" name="text" class="text">
			</form> -->
			<form action="" method="post">
				<input type="submit" name="submit" value="광고진행사항" class="submit">
			</form>
		</div>
	</div>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>