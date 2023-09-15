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
<link href="css/loginsuc.css" rel="stylesheet" type="text/css">
<script type="text/javascript"
	src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
<script type="text/javascript" src="js/loginsuc.js"></script>
</head>
<body>
	<jsp:include page="header_logout.jsp"></jsp:include>
	<form action="main.html" class="log" method="post">
		<h1 class="log_success">로그인 성공</h1>
		<br> <input type="submit" value="메인으로 이동" class="main_move">
	</form>
<%--   	<%= id %>
	<%= password%>
	<%= type %> --%>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>