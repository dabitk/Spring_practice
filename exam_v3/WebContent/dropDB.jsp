<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*,javax.sql.*,java.io.*"%>
<%@ page import="kopo.service.*,kopo.dto.*" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>테이블 삭제</h3>
	<%
	ExamService examService = new ExamServiceImpl();
	examService.dropDB();
	%>

</body>
</html>