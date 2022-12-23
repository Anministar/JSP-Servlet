<%@page import="javax.servlet.jsp.tagext.TryCatchFinally"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%@page import="java.sql.*, java.util.*" %>
	<%
	
		/* 기본 연결 정보 */
		String url = "jdbc:oracle:thin:@localhost:1521:xe";
		String id = "system";
		String pwd = "1234";
		
		/* DB연결 관련 JDBC Class 참조변수 */
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		/* 연결 Test */
		try{
			Class.forName("oracle.jdbc.driver.OracleDriver");
			conn = DriverManager.getConnection(url,id,pwd);
			
			System.out.println("[Connected] : " + conn);
			
			pstmt = conn.prepareStatement("INSERT INTO tbl_board values(board_seq.NEXTVAL, ?, ?, ?)");
			pstmt.setString(1, "Title1");
			pstmt.setString(2, "Writer1");
			pstmt.setString(3, "Content");
			int result = pstmt.executeUpdate();
			if(result>0) {
				System.out.println("INSERT성공!");
			}
		}
		
		catch(Exception e) {
			e.printStackTrace();
		}
		finally {
			try{pstmt.close();}catch(Exception e){}
			try{conn.close();}catch(Exception e){}
		}
	%>

</body>
</html>