<%@page import="com.project.jjj.FreeBoard"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.project.DTO.BoardDTO"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>free_board_text.jsp</title>
<link rel="stylesheet" href="css/free_board_text.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
<script src="js/free_board_text.js"></script>
<jsp:useBean id="boardList" class="com.project.jjj.FreeBoard"
		scope="page" />
</head>
<body>
	<%
		String clickText = request.getParameter("number"); //클릭한 글의 글번호 값을 받아서 저장
		ArrayList<BoardDTO> arr = boardList.getBoardList();

		BoardDTO boardDTO = null;
		for (BoardDTO selected : arr) {
			if (selected.getNumber() == Integer.parseInt(clickText)) {
				boardDTO = selected;
				break;
			}
		}
		
	%>
<%
	String id = (String) session.getAttribute("id");
	String password = (String) session.getAttribute("password");
	String type = (String) session.getAttribute("type");
	if (id == null && password == null) {
%>
<jsp:include page="header_login.jsp"></jsp:include>
<%
	} else {
		%>
<jsp:include page="header_logout.jsp"></jsp:include>
		<%
	}
%>

	<div id="text_header">
		<h1>자유게시판</h1>
		<table>
			<tr>
			<%
				out.println("<td colspan='6'>"+boardDTO.getName()+"</td>");
			%>
			</tr>
			<tr id="text_info">
				<%
					out.println("<td>" + boardDTO.getWriter() + "</td>");
					out.println("<td>" + boardDTO.getDate() + "</td>");
				%>
				<td></td>
				<td>조회수</td>
				<td>추천수</td>
				<td>댓글수</td>
			</tr>
			<tr>
				<%
					out.println("<td colspan='6' id='text'>" + boardDTO.getText() + "</td>");
				%>
			</tr>
		</table>
		<div id="free_board_btn">
			<form action = "free_board.jsp">
				<input type="submit" value="목록">
			</form>
		</div>
	</div>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>