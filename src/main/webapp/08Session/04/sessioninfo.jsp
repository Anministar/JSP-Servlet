<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<jsp:useBean id="sessionDto" class="CH08.SessionDto" scope="apllication" />
<%@page import="java.util.*, javax.servlet.http.*" %>
<%
	try{
	for(String key : sessionDto.getSessionMap().keySet()) {
		HttpSession clientSession = sessionDto.getSessionMap().get(key);
		String remoteIp = (String) clientSession.getAttribute("remoteip");
		out.println("USERID : " + key + " | RemoteIp : " + remoteIp + "<br>");
	}
	} catch(Exception e ) {
		e.printStackTrace();
	}
	response.setIntHeader("Refresh", 2);
%>


</body>
</html>