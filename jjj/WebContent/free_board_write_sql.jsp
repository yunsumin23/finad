<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
    <%
    
        String writer = "작성자 ㅋㅋ";
        String name = request.getParameter("input_name");
        String text = request.getParameter("input_text");
        Date currentDate = new Date(); // 현재 날짜와 시간 가져오기
        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        String formattedDate = dateFormat.format(currentDate);
        
        Connection connection = null;
        Statement statement = null;
        
        try{
            Class.forName("com.mysql.jdbc.Driver");
            connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/ads", "root", "s2m2j52120!");
            if(connection == null){
                throw new Exception("데이터베이스 연결 안됨<br>");
            }
            statement = connection.createStatement();
            int i = statement.executeUpdate("insert into freeboard(freeboardWriter, freeboardName, freeboardText, freeboardDate) values ('"+  writer + "','" + name + "','" + text + "','" + formattedDate + "');");
        } finally{
            try{
                statement.close();
            }catch(Exception ignored){
                
                
            }
        } try {
            connection.close();
        } catch(Exception ignored){
            
        }
        response.sendRedirect("free_board.jsp");
    %>

</body>
</html>
