<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.project.jjj.Nomal_info"%>
<jsp:useBean id="session1" class="com.project.jjj.Mypage"></jsp:useBean>
<%
	String id = (String) session.getAttribute("id");
	String password = (String) session.getAttribute("password");
	if (id == null && password == null) {
		response.sendRedirect("login.html");
	}
	/* session1.nomal_user(id); */
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="css/mypage_nomal.css" rel="stylesheet" type="text/css">
<script type="text/javascript"
	src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
<script type="text/javascript" src="js/mypage_nomal.js"></script>
</head>
<body>
	<jsp:include page="header_logout.jsp"></jsp:include>
	<%
		ArrayList<Nomal_info> array = session1.nomal_user(id);
	%>
	<div class="main">
		<h1>마이페이지</h1>
		<div class="all_info">

			<div class="top_info">
				<div>
					<img alt="img/user.png" src="img/user.png">
				</div>
				<div class="div_ul">
					<%
						for (int i = 0; i < array.size(); i++) {
							out.println("<ul>");
							out.println("<li>아이디 : " + array.get(i).getId() + "</li>");
							out.println("<li>아이디 : " + array.get(i).getId() + "</li>");
							out.println("<li>아이디 : " + array.get(i).getId() + "</li>");
							out.println("<li>아이디 : " + array.get(i).getId() + "</li>");
							out.println("</ul>");
						}
					%>
						<%-- <%
							for (int i = 0; i < array.size(); i++) {
						%>
						<li>아이디 : </li>
						<li>이름 : <%=array.get(i).getName()%></li>
						<li>이메일 : <%=array.get(i).getEmail()%></li> 
						<li>전화번호 : <%=array.get(i).getMobilenumber()%></li>
    <%

    	}
    %> --%>
				</div>
			</div>
		</div>
	</div>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>