<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%@page import="java.util.*, CH03.SimpleDto" %>
<!-- java.util.* 여기다 찾아라, CH03.SimpleDto 여기다 찾아라 ==> 이런 의미임. -->
<%
	Scanner sc = new Scanner(System.in);
	SimpleDto dto = new SimpleDto("홍길동","33","대구");
	out.println(dto);
%>

</body>
</html>