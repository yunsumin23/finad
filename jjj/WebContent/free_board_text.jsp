<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.project.jjj.BoardDTO"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>free_board_text.jsp</title>
<link rel="stylesheet" href="css/free_board_text.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
<script src="js/free_board.js"></script>
</head>
<body>
	<jsp:include page="header_logout.jsp"></jsp:include>
	<jsp:useBean id="boardList" class="com.project.jjj.FreeBoard" scope="page" />
	<div id="text_header">
		<h1>자유게시판</h1>
		<table>
			<tr>
				<td colspan="6">제목</td>
			</tr>
			<tr id="text_info">
				<td>작성자</td>
				<td>작성일</td>
				<td></td>
				<td>조회수</td>
				<td>추천수</td>
				<td>댓글수</td>
			</tr>
			<tr>
				<td colspan="6"></td>
			</tr>
			
		</table>
	</div>
	
	
	
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>