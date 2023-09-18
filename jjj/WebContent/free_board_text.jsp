<%@page import="com.project.jjj.FreeBoard"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.project.jjj.BoardDTO"%>'
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>free_board_text.jsp</title>
<link rel="stylesheet" href="css/free_board_text.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
<script src="js/free_board.js"></script>
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
	<jsp:include page="header_login.jsp"></jsp:include>

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
	</div>



	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>