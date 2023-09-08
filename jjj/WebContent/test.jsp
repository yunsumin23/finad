<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%
    String id = request.getParameter("id");
    String result = "false";
    Connection con = null;
    Statement sta = null;
    
    if (id == null || id.trim().isEmpty()) {
    	result = "check";
	}
    try {
        Class.forName("com.mysql.jdbc.Driver");
        con = DriverManager.getConnection("jdbc:mysql://localhost:3306/project", "root", "simpsons514!");
        if (con == null) {
            throw new Exception("데이터베이스에 연결할 수 없습니다.<br>");
        }
        sta = con.createStatement();
        ResultSet rs = sta.executeQuery("select nomalUserId from project.nomal_user where nomalUserId = '" + id + "';");
        while(rs.next()) {
            result = "true";
        }
    } finally {
        try {
            sta.close();
        } catch (Exception ignored) {

        }
        try {
            con.close();
        } catch (Exception ignored) {

        }
    }
    out.print(result);

%>