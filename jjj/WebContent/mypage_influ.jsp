<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.project.jjj.Influ_info"%>
<jsp:useBean id="session1" class="com.project.jjj.Mypage"></jsp:useBean>
<%
	String id = (String) session.getAttribute("id");
	String password = (String) session.getAttribute("password");
	if (id == null && password == null) {
		response.sendRedirect("login.html");
	}
	Influ_info user = session1.influ(id);
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="css/mypage_influ.css" rel="stylesheet" type="text/css">
<script type="text/javascript"
	src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
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
						<li><a href="#" target="_blank"><img alt="" src="img/youtube.png"></a></li>
						<li><a href="#" target="_blank"><img alt="" src="img/twitch.png"></a></li>
						<li><a href="#" target="_blank"><img alt="" src="img/instagram.png"></a></li>
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
						out.println("<li>유튜브에서 대이터 추출해야함</li>");
						out.println("<li>유튜브에서 대이터 추출해야함</li>");
					%>
					</ul>
				</div>	
			</div>
			<div class="div_data2">
				<div>
					<ul>
						<%
						out.println("<li>유튜브에서 대이터 추출해야함</li>");
						out.println("<li>유튜브에서 대이터 추출해야함</li>");
						out.println("<li>유튜브에서 대이터 추출해야함</li>");
						out.println("<li>유튜브에서 대이터 추출해야함</li>");
						out.println("<li>유튜브에서 대이터 추출해야함</li>");
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