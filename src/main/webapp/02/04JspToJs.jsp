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
	String msg1="HELLO WORLD1";
	String msg2="HELLO WORLD2";
	String msg3="HELLO WORLD3";
	String msg4="HELLO WORLD4";
%>

<form action="" name=frm>
	<input type="text" />
	<input type="text" />
	<input type="text" />
	<input type="text" />
</form>

<script>
	const form = document.frm;
	form[0].innerHTML = "<%=msg1%>";
	form[1].innerHTML = "<%=msg2%>";
	form[2].innerHTML = "<%=msg3%>";
	form[3].innerHTML = "<%=msg4%>";
/* 	alert(form[0]); */
</script>


</body>
</html>