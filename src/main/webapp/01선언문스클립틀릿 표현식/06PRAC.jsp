<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- 
	1 Scanner 로 숫자를 입력받아 구구단을 출력(table, tr, td)
	-->
	<style>
tr, td {
	height: 50px;
	width: 50px;
	border: 1px solid gray;
}
</style>
	<%@page import="java.util.*" %>
	<%
	Scanner sc = new Scanner(System.in);

	System.out.println("단을 입력하세요 >>> ");
	int dan = sc.nextInt();
	%>

	<%
	out.print("<table>");
	for (int i = 0; i < 10; i++) {
		out.print("<tr>");
		out.print("<td>" + dan + "</td>");
		out.print("<td>x</td>");
		out.print("<td>" + i + "</td>");
		out.print("<td>=</td>");
		out.print("<td>" + dan * i + "</td>");
		out.println("</tr>");
	}
	out.print("</table>");
	%>
	
	<!--
	2 Scanner 로 숫자/메뉴명/을 입력받아 1depth메뉴를 표시
	 -->
	<!-- 아직 못 풀었음. -->
	
	<%! int num; %>
	
	
	<%
		System.out.println("메뉴 번호를 입력해주세요 >>>");
		System.out.println("1. 메뉴 등록.");
		System.out.println("2. 종료");
		num = sc.nextInt();
	%>
	
	<%
		if(num == 1) {
			out.println("<tr>");
			
			System.out.println("메뉴이름을 입력해주세요 >>> ");
			String menu = sc.nextLine();
			out.println("<td>" + menu + "</td>");
			
			out.println("</tr>");
		} else if (num == 2) {
			System.out.println("메뉴 선택을 종료합니다.");
		} else {
			System.out.println("없는 메뉴 번호입니다.");
		}
	%>

	
	 
	 
	 
	 
	 
	 
	 


</body>
</html>