<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*,javax.sql.*,java.io.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>데이터 Insert</title>
</head>
<body>
	<h3>데이터 Insert</h3>
	<hr>
	<%
	try {
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection conn = DriverManager.getConnection("jdbc:mysql://192.168.56.1:3306/jsptest","root","1234");
		Statement stmt = conn.createStatement();
		stmt.executeUpdate("insert into examtable (name, studentid, kor, eng, mat) values('나연',209901,95,100,95);"); 
	    stmt.executeUpdate("insert into examtable (name, studentid, kor, eng, mat) values('정연',209902,95,95,95);");
	    stmt.executeUpdate("insert into examtable (name, studentid, kor, eng, mat) values('모모',209903,100,100,100);");
	    stmt.executeUpdate("insert into examtable (name, studentid, kor, eng, mat) values('사나',209904,100,95,90);");
	    stmt.executeUpdate("insert into examtable (name, studentid, kor, eng, mat) values('지효',209905,80,100,70);");
	    stmt.executeUpdate("insert into examtable (name, studentid, kor, eng, mat) values('미나',209906,100,100,70);");
	    stmt.executeUpdate("insert into examtable (name, studentid, kor, eng, mat) values('다연',209907,70,70,70);");
	    stmt.executeUpdate("insert into examtable (name, studentid, kor, eng, mat) values('채영',209908,100,90,80);");
	    stmt.executeUpdate("insert into examtable (name, studentid, kor, eng, mat) values('츠위',209909,80,100,90);");
	    stmt.close();
		conn.close();	
	} catch(Exception e) {
        out.println("테이블 생성중 에러발생."+e);
    }
	%>
	
</body>
</html>