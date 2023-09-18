<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.project.jjj.BoardDTO"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>free_board.jsp</title>
<link rel="stylesheet" href="css/free_board.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
<script src="js/free_board.js"></script>
</head>
<body>
	<jsp:include page="header_login.jsp"></jsp:include>
	<jsp:useBean id="boardList" class="com.project.jjj.FreeBoard"
		scope="page" />

	<div id="table_header">
		<h1>게시판 목록</h1>
		<table>
			<tr id="sss">
				<th>번호</th>
				<th>제목</th>
				<th>작성자</th>
				<th>작성일</th>
			</tr>
			<%
				ArrayList<BoardDTO> boardDTO = boardList.getBoardList();
				for (int i = 0; i < boardDTO.size(); i++) {
					int number = boardDTO.get(i).getNumber();
					String writer = boardDTO.get(i).getWriter();
					String name = boardDTO.get(i).getName();
					String date = boardDTO.get(i).getDate();
					out.println("<tr>");
					out.println("<td><a href='free_board_text.jsp?number=" + number + "'>" + number + "</td>");
					out.println("<td><a href='free_board_text.jsp?number=" + number + "'>" + name + "</td>");
					out.println("<td>" + writer + "</td>");
					out.println("<td>" + date + "</td>");
					out.println("</tr>");
				}
			%>
		</table>
		<div id="free_board_write_btn">
			<form action = "free_board_write.jsp">
				<input type="submit" value="글쓰기">
			</form>
		</div>
	</div>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>

