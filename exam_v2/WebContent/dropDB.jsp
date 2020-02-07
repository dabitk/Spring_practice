<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*, javax.sql.*, java.io.*" %>
<%@ page import = "kopo.domain.*,kopo.dao.*" %>    

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>20/01/20 kopo02 테이블 삭제</h1>
	<%
		try{
			ExamDao.dropDB(); //DB 테이블 드랍 메소드.
		}catch(Exception e){
			out.println("테이블 드랍 중 에러발생, " + e);
		}
	%>
</body>
</html>