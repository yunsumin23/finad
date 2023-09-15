<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.project.jjj.AdstoreDTO"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>adstore_item.jsp</title>
<link rel="stylesheet" href="css/adstore.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
<script src="js/adstore.js"></script>
</head>
<body>
<jsp:include page="header_logout.jsp"></jsp:include>
	<jsp:useBean id="adstore" class="com.project.jjj.Adstore" scope="page" />
	
	
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>