<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.project.jjj.Influ_info"%>
<%@ page import="com.project.jjj.Mypage_influ" %>
<jsp:useBean id="session1" class="com.project.jjj.Mypage"></jsp:useBean>
<%
	String id = (String) session.getAttribute("id");
	String password = (String) session.getAttribute("password");
	if (id == null && password == null) {
		response.sendRedirect("login.html");
	}
	Influ_info user = session1.influ(id);
	Mypage_influ user1 = session1.influ_mypage(id);
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="css/mypage_influ.css" rel="stylesheet" type="text/css">
<script type="text/javascript"
	src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
<script type="text/javascript" src="js/mypage_influ.js"></script>
</head>
<body>
<jsp:include page="header_logout.jsp"></jsp:include>

	<div class="main">
		<h1>마이페이지</h1>
		<div class="all_info">

			<div class="top_info">
				<div class="user_img">
					<img alt="img/user.png" src="img/user.png">
				</div>
				<div class="div_ul">
					<%
							out.println("<ul>");
							out.println("<li>닉네임 : " + user.getNickname() + "</li>");
							out.println("<li>이름 : " + user.getName() + "</li>");
							out.println("<li>이메일 : " + user.getEmail() + "</li>");
							out.println("<li>전화번호 : " + user.getMobilenumber() + "</li>");
							out.println("</ul>");
					%>
				</div>
				<div class="div_sns">
					<ul>
						<%
							out.println("<li><a href='" + user1.getYoutuLink() + "' target='_blank'><img alt='' src='img/youtube.png'></a></li>");
							out.println("<li><a href='" + user1.getLiveBcLink() + "' target='_blank'><img alt='' src='img/twitch.png'></a></li>");
							out.println("<li><a href='" + user1.getSnsLink() + "' target='_blank'><img alt='' src='img/instagram.png'></a></li>");
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
						out.println("<li>" + user1.getSubscri() +"</li>");
						out.println("<li>" + user1.getAvgviewers() + "</li>");
					%>
					</ul>
				</div>	
			</div>
			<div class="div_data2">
				<div>
					<ul>
						<%
						out.println("<li><canvas class='sub'></canvas>최근 30일 구독자 수</li>");
						out.println("<li><canvas class='view'></canvas>최근 30일 시청자 수</li>");
						out.println("<li><canvas class='hits'></canvas>최근 30일 평균 조회수</li>");
						out.println("<li><canvas class='ratio'></canvas>구독자 성비</li>");
						out.println("<li><canvas class='age'></canvas>구독자 연령대</li>");
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
			<form action="" method="post">
			<input type="text" name="text" class="text">
			</form>
			<form action="" method="post">
			<input type="submit" name="submit" value="광고진행사항" class="submit">
			</form>
		</div>
	</div>

<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>