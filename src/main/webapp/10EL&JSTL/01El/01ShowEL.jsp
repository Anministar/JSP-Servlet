<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@page import="CH10.*" %>
<%
	//Attr
	request.setAttribute("RequestKey", "RequestValue");
	session.setAttribute("SessionKey", "SessionValue");
	
	//중복확인
	pageContext.setAttribute("KEY", "PAGE VALUE"); // request보다 더 좁은 범위
	request.setAttribute("KEY","REQ VALUE");	// session보다 더 좁은 범위
	session.setAttribute("KEY","SESSION VALUE");
	
	//객체
 	Person obj = new Person();
	obj.setName("홍길동");
	obj.setAge("55");
	obj.setAddr("대구");
	request.setAttribute("hong", obj); 
	
	
	//NULL확인
	Integer list1[] = null;
	Integer list2[] = {1,2,3};
	request.setAttribute("list1", list1);
	request.setAttribute("list2", list2);
%>

[PARAM] USERID : ${param.userid}<br>
[PARAM] PWD : ${param.pwd}<br>

[ATTR] REQUEST KEY : ${requestScope.RequestKey } <br>
[ATTR] REQUEST KEY : ${RequestKey } <br>
[ATTR] SESSION KEY : ${sessionScope.SessionKey } <br>
[ATTR] SESSION KEY : ${SessionKey } <br>
<hr>
[중복확인] KEY : ${KEY } <br>
<hr>
[OBJECT] HONG : ${hong } <br>
[OBJECT] HONG : ${hong.getName() } <br>
[OBJECT] HONG : ${hong.name } <br>
[OBJECT] HONG : ${hong.age } <br>
[OBJECT] HONG : ${hong.addr } <br>
<hr>

[ETC] 기타연산 : <%=1+"1" %><br>
[ETC] 기타연산 : ${1+"1" }<br>
<hr>
[NULL] empty null : ${empty null } <br>
[NULL] empty list1 : ${empty list1 } <br>
[NULL] list1 == null : ${list1 == null} <br>
[NULL] empty list2 : ${empty list2 } <br>



</body>
</html>