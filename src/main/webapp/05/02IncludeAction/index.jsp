<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
<!-- link -->
<%@include file="module/link.jsp"%>

</head>

<body>
	<!-- header -->
	<%@include file="module/header.jsp"%>
	
	<%@page import="java.io.*" %>
	<!-- pageContext 저장소에서 ServletContext를 가져오고 거기서 RealPath를 가져오는거임. -->
	<%
		System.out.println("REALPATH : " + pageContext.getServletContext().getRealPath("/"));
		String filepath = pageContext.getServletContext().getRealPath("/");
		File dir= new File(filepath + "05/02IncludeAction/actionTest");
		String lists[] = dir.list();
		for(String list : lists) {
			System.out.println("FILE : " + list);
		}
	%>
	
	<!-- action Tag -->
	<jsp:include page="module/section1.jsp">
		<jsp:param name="Img1" value="<%=lists[0] %>"/>
		<jsp:param name="Img2" value="<%=lists[1] %>"/>
		<jsp:param name="Img3" value="<%=lists[2] %>"/>
		<jsp:param name="Img4" value="<%=lists[3] %>"/>
		<jsp:param name="Img5" value="<%=lists[4] %>"/>
	</jsp:include>

	<!-- section1 -->
	<%@include file="module/section1.jsp"%>

	<!-- section2 -->
	<%@include file="module/section2.jsp"%>
	
	<!-- section3 -->
	<%@include file="module/section3.jsp"%>
	
	<!-- section4 -->
	<%@include file="module/section4.jsp"%>
	
	<!-- section5 -->
	<%@include file="module/section5.jsp"%>
	
	<!-- section6 -->
	<%@include file="module/section6.jsp"%>


	<div id="to-top">
		<i class="bi bi-upload"></i>
	</div>

</body>

</html>