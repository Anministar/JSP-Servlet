<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<!-- 5초 뒤에 웹페이지 새로고침을 하게 되면 내용들이 버려지게 됨. -->
	<%
		session.setMaxInactiveInterval(5);
	%>
	<jsp:useBean id="bean" class="CH05.TestDto" scope="application" />
	<jsp:setProperty name="bean" property="msg1" value="msg1-Value" />

	<%
	System.out.println("01Start : " + bean);
	%>

	<!-- Redirect -->
	<%
	response.sendRedirect("02.jsp");
	%>



</body>
</html>