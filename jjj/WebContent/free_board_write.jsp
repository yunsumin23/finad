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
	<jsp:include page="header_logout.jsp"></jsp:include>

	



	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>