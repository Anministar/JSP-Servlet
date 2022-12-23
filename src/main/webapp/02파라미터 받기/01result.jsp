<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<%
	String title = request.getParameter("title");
	String bgcolor = request.getParameter("bgcolor");
	/* 파라미터는 모두 String 자료형으로 저장되기 때문에 equals를 사용하면 됨. */
	if(bgcolor.equals("etc")) {
		bgcolor="blue";
	}
	System.out.println("TITLE : " + title);
	System.out.println("BGCOLOR : " + bgcolor);
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body bgcolor="<%=bgcolor%>">

<h1>TITLE : <%=title %></h1>

</body>
</html>