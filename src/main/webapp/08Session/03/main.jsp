<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>


<script defer>
	//비동기 함수 : setInterval('함수명', 반복시간);	//반복시간마다 함수안의 로직을 수행
	
	let max = <%=session.getMaxInactiveInterval() %>; /* session의 유효시간을 max에 저장 */
	
	function timer() {
		max = max - 1;
		if( max < 0 ) {
			clearInterval(currTime); /* currTime에 저장돼 있는 반복 작업 제거 */
			alert("세션기간이 만료되었습니다.");
			location.href="logout.jsp";
		}
		document.getElementById("timer").innerHTML=max;
	}
	let currTime = setInterval(timer, 1000); /* setInterval(1초마다 timer함수를 실행), 실행에 대한 제어정보들을 currTime에 넣어줌 */
</script>



<h1>MAIN</h1>
<p id=timer></p>
Userid : <%=session.getAttribute("userid") %> <br>


<a href="logout.jsp">로그아웃</a>
	



</body>
</html>