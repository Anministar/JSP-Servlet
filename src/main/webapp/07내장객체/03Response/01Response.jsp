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
		//Redirect 경로 지정
		//response.sendRedirect("../02Request/01Request.jsp");
		
		//response 헤더정보 지정
		//response.setIntHeader("Refresh", 3);
		//response.sendError(404, "지각 좀 하지마라 좀 제발");
		
		//response OutStream 꺼내오기
		//ServletOutputStream bout = response.getOutputStream();
		//bout.write(102);
		//버퍼 초기화
		//bout.flush();
		//bout.close();
		
		
		PrintWriter o = response.getWriter();
		o.println("<h1>TEST</h1>");
	%>
	<%=new java.util.Date().toString() %>
</body>
</html>