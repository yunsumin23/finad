<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%
	String id = request.getParameter("id");
	String password = request.getParameter("password");
	String userType = request.getParameter("user_grade");
	Connection connection = null;
	Statement statement = null;
	ResultSet resultSet = null;
	try {
		Class.forName("com.mysql.jdbc.Driver");
		connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/project", "root", "simpsons514!");
		if(connection == null) {
			throw new Exception("데이터베이스 연결 안됨");
		}
		statement = connection.createStatement();
		String check = "";
		if("nomal".equals(userType)) {
			check = "select nomalUserId, password from project.nomal_user where nomalUserId = '" + id + "' and password = '" + password + "';";
		} else if("influencer".equals(userType)) {
			check = "select influ_user, password from project.user where influ_user = '" + id + "' and password = '" + password + "';";
		} else if("company".equals(userType)) {
			check = "select companyId, password from project.company where companyId = '" + id + "' and password = '" + password + "';";
		}
		
		resultSet = statement.executeQuery(check);
		
	    if(resultSet.next()) {
	    	session.setAttribute("id", id);
	    	session.setAttribute("password", password);
%>
		<script>
		location.href="loginsuc.jsp";
		</script>
<% 
		} else {
%>
			<script>
			alert("아이디 또는 패스워드가 일치하지 않습니다. 다시 로그인해주세요");
			location.href="login.html";
			</script>
<%
		}
	} finally {
		try {
			statement.close();
		} catch (Exception ignored) {
		}
	 try  {
		connection.close();
	} catch (Exception ignored) {
	}
	}
%>