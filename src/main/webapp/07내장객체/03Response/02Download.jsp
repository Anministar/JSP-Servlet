<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	
	<%@page import="java.io.*" %>
	<%
		//download Path 확인
		String realPath = pageContext.getServletContext().getRealPath("/") + "07내장객체\\03Response\\download";
		System.out.println("RealPath : " + realPath);
		//Instream (파일경로로부터 프로그램방향으로 스트림 만들기)
		FileInputStream fin = new FileInputStream(realPath + "\\TEST.txt");
		//OUstream (자바 프로그램에서 브라우저로 내용 전달할 스트림)
		ServletOutputStream bout = response.getOutputStream();
		
		//[오류해결] 이 응답을 위해 getOutputStream()이 이미 호출되었습니다.
		out.clear();							//response outstream 을 닫고 버퍼를 이용
		out = pageContext.pushBody();			//현재 페이지 body 연결
		
		//response 전달 파일타입 변경 ==> 이게 없으면 jsp파일 그대로 다운로드됨.
		response.setHeader("Content-Type", "application/octet-stream; charset=utf-8");
		response.setHeader("Content-Disposition", "attachment; filename=TEST.txt"); //filename을 TEST.txt를 해줘야지 저 파일명으로 다운로드 가능
		while(true) {
			int data = fin.read();
			if(data==-1) {
				break;
			}
			bout.write((byte)data);
			bout.flush();
		}
		
		bout.close();
		fin.close();
	%>
</body>
</html>