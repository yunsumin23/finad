<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="com.project.DTO.*" %>

<!DOCTPYE html>
<html lang="ko">
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>ADstore</title>
</head>
<body>
<jsp:useBean id="aaa" class="com.project.jjj.Adstore" scope="page"/>
<%
	ArrayList<AdstoreDTO> jjj = aaa.getAdstoreList();
%>

</body>
</html>
