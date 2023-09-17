<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.project.jjj.Company_info"%>
<jsp:useBean id="session1" class="com.project.jjj.Mypage"></jsp:useBean>
<%
	String id = (String) session.getAttribute("id");
	String password = (String) session.getAttribute("password");
	if (id == null && password == null) {
		response.sendRedirect("login.html");
	}
	Company_info user = session1.company(id);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="css/mypage_company.css" rel="stylesheet" type="text/css">
<script type="text/javascript"
	src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
<script type="text/javascript" src="js/mypage_company.js"></script>
</head>
<body>

<jsp:include page="header_logout.jsp"></jsp:include>

	<div class="main">
		<h1>마이페이지</h1>
		<div class="all_info">

			<div class="top_info">
				<div>
					<img alt="img/user.png" src="img/user.png">
				</div>
				<div class="div_ul">
					<%
							out.println("<ul>");
							out.println("<li>회사명 : " + user.getComname() + "</li>");
							out.println("<li>담당자명 : " + user.getName() + "</li>");
							out.println("<li>담당자 이메일: " + user.getComemail() + "</li>");
							out.println("<li>담당자 전화번호 : " + user.getComnumber() + "</li>");
							out.println("</ul>");
					%>
				</div>
			</div>
			<hr>
		</div>
	</div>

<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>