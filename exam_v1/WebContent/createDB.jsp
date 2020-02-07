<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*,javax.sql.*,java.io.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>테이블 생성</h3>
	<hr>
	<%
	try {
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection conn = DriverManager.getConnection("jdbc:mysql://192.168.56.1:3306/jsptest","root","1234");
		Statement stmt = conn.createStatement();
		stmt.executeUpdate(
				"create table examtable(name varchar(20), studentid int not null primary key, kor int, eng int, mat int) DEFAULT CHARSET=utf8;");
		stmt.close();
		conn.close();	
	} catch(Exception e) {
        out.println("테이블 생성중 에러발생."+e);
    }
	%>
</body>
</html>