<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
String id = (String) session.getAttribute("id");
String password = (String) session.getAttribute("password");
if (id == null && password == null) {
    response.sendRedirect("login.html");
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="css/mypage_nomal.css" rel="stylesheet" type="text/css">
<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
<script type="text/javascript" src="js/mypage_nomal.js"></script>
</head>
<body>
	<jsp:include page="header_logout.jsp"></jsp:include>
	<div class="center">
		<h1>마이페이지</h1>
		<div>
			<div>
				<img alt="" src="유저 프로필사진">
			</div>
		</div>
	</div>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>