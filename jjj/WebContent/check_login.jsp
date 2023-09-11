<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%
	String id = request.getParameter("id");
	String password = request.getParameter("password");
	String check1 = "false";
	Connection connection = null;
	Statement statement = null;
	try {
		Class.forName("com.mysql.jdbc.Driver");
		connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/project", "root", "simpsons514!");
		if(connection == null) {
			throw new Exception("데이터베이스 연결 안됨");
		}
		statement = connection.createStatement();
		ResultSet resultSet = statement.executeQuery("select nomalUserId, password from project.nomal_user where nomalUserId = '" + id + "' and password = '" + password + "';");
		if(resultSet.next()) {
%>
		<script>
		location.href="loginsuc.html";
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