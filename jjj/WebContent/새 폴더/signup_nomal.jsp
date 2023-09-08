<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String name = request.getParameter("name");
		String gender = request.getParameter("gender");
		String post = request.getParameter("post");
		String addr = request.getParameter("addr");
		String addr_more = request.getParameter("addr_more");
		String reference = request.getParameter("reference");
		String phone = request.getParameter("phone");
		String input_phone = request.getParameter("input_phone");
		String email = request.getParameter("email");
		
		Connection connection = null;
		Statement statement = null;
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/project", "root", "simpsons514!");
			if(connection == null) {
				throw new Exception("데이터베이스 연결 안됨<br>");
			}
			statement = connection.createStatement();
				int i = statement.executeUpdate("insert into nomal_user(nomalUserId, password, name, sex, eMail, post, address, addr_more, reference, newsAgency, mobileNumber) values ('"+  id + "','" + pw + "','" + name + "','" + gender + "','" + email + "','" + post + "','" + addr + "','" +  addr_more + "','" + reference + "','" + phone + "','" + input_phone + "');");				
		} finally {
			try {
				statement.close();
			} catch (Exception ignored) {
				
			}
		} try {
			connection.close();
		} catch (Exception ignored) {
			
		}
	%>
</body>
</html>