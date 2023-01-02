<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		Cookie[] cookies = request.getCookies();
		String userid = null;
		String pwd = null;
		String idchk = null;
		String pwdchk = null;
		if(cookies!=null) {
			for(Cookie cookie : cookies) {
				if(cookie.getName().equals("userid")) {
					userid = cookie.getValue();
				}
				if(cookie.getName().equals("pwd")) {
					pwd = cookie.getValue();
				}
				if(cookie.getName().equals("idchk")) {
					idchk = cookie.getValue();
				}
				if(cookie.getName().equals("pwdchk")) {
					pwdchk = cookie.getValue();
				}
				
			}	
		}
		
	%>

	<form action="loginproc.jsp" method="post">
		<%
		if(idchk != null) {
			out.println("<input type='text' name=userid value=" + userid + " /> <br>");
		} else {
			out.println("<input type='text' name=userid /> <br>");
		}
		
		
		%>
		<%
		if(pwdchk != null) {
			out.println("<input type='text' name=pwd value=" + pwd + " /> <br>");
		} else {
			out.println("<input type='text' name=pwd /> <br>");
		}
		%>
		<%
		if(idchk != null) {
			out.println("<input type='checkbox' name=idchk checked /> ID저장 <br>");
		} else {
			out.println("<input type='checkbox' name=idchk /> ID저장<br>");
		}
		%>
		
		<%
		if(idchk != null) {
			out.println("<input type='checkbox' name=pwdchk checked /> PW저장 <br>");
		} else {
			out.println("<input type='checkbox' name=pwdchk /> PW저장<br>");
		}
		%>
		
		<%-- <input type=text name=userid value="<%=(idchk!=null)?userid:"" %>" /> <br>
		<input type=password name=pwd value="<%=(pwdchk!=null)?pwd:"" %>" /> <br> --%>
		<!-- 이렇게 하고 밑에 checkbox는 그대로 써도 됨. 이게 더 간다해서!! -->
		<input type="submit" value="로그인" />
	</form>


</body>
</html>