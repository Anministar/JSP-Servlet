<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%!
	//1 반복분기문 사용 불가
	/* for(int i = 0; i < 10; i++) {
		System.out.println("HELLO WORLD");
	}
	if(true) {
		System.out.println("TEST");
	} */
	
	//2 산술연산식 가능
	int a = 0;
	public int addone() {
		a++;
		return a;
	}
%>
	
a : <%=addone() %><br>
	

</body>
</html>