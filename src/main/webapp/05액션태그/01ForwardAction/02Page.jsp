<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>02PAGE</h1>
	<%
	String userid = request.getParameter("userid");
	String pwd = request.getParameter("pwd");
	System.out.println("=============================");
	System.out.println("[02Page] userid : " + userid);
	System.out.println("[02Page] pwd : " + pwd);
	System.out.println("=============================");
	request.setAttribute("02page", "02Value");
	//forward 방식 페이지요청
	//03Page.jsp로 제어권을 넘김
	//URL은 변경되지 않는다
	//request 값 유지

	//forwarding
	%>
	<%
		request.setCharacterEncoding("UTF-8");
	%>
	<!-- forward ActionTag -->
	<jsp:forward page="03Page.jsp">
		<jsp:param name="02page" value="02page로부터 전달되는 값입니다." />
	</jsp:forward>
		<!-- 03Page.jsp로 이동할 때 parameter이름은 02page고 전달값음 value이다 -->


</body>
</html>