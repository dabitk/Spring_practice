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
	<h3>조회</h3>
	<hr>
	<%
	int studentid = Integer.parseInt(request.getParameter("studentid"));
	
	try {
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection conn = DriverManager.getConnection("jdbc:mysql://192.168.56.1:3306/jsptest","root","1234");
	    PreparedStatement ps=conn.prepareStatement("select * from examtable where studentid=?");  
        ps.setInt(1,studentid);  
        ResultSet rset=ps.executeQuery();  
		
	%>	
	<table cellspacing=1 width=600 border=1>
	<tr>
		<td width=50><p align=center>이름</p></td>
		<td width=50><p align=center>학번</p></td>
		<td width=50><p align=center>국어</p></td>		
		<td width=50><p align=center>영어</p></td>		
		<td width=50><p align=center>수학</p></td>
	</tr>
	<%      
    	while (rset.next()) { 
            out.println("<tr>");
            out.println("<td width=50><p align=center>"+rset.getString(1)+"</p></td>");
            out.println("<td width=50><p align=center>"+Integer.toString(rset.getInt(2))+"</p></td>");
            out.println("<td width=50><p align=center>"+Integer.toString(rset.getInt(3))+"</p></td>");
            out.println("<td width=50><p align=center>"+Integer.toString(rset.getInt(4))+"</p></td>");
            out.println("<td width=50><p align=center>"+Integer.toString(rset.getInt(5))+"</p></td>");
            out.println("<tr>");
    	} 
		rset.close(); 
		ps.close();
	 	conn.close();	
	} catch(Exception e) {
        out.println("테이블 생성중 에러발생."+e);
    }
	%>
</body>
</html>