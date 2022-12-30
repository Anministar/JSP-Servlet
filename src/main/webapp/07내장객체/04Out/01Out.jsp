<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>


	<%@page import="java.io.*" %>
	<%
		out.print("<h1>TEST1</h1>");
		PrintWriter tout = response.getWriter();
		tout.print("<h1>TEST1</h1>");
	%>



</body>
</html>