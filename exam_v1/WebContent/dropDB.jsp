<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*,javax.sql.*,java.io.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>테이블 삭제.</h3>
	<%
	try {
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection conn = DriverManager.getConnection("jdbc:mysql://192.168.56.1:3306/jsptest","root","1234");
		Statement stmt = conn.createStatement();
		stmt.executeUpdate(
				"drop table examtable;");
		stmt.close();
		conn.close();
	} catch(Exception e) {
        out.println("테이블 드랍 중 에러발생."+e);
    }
	%>
	
</body>
</html>