<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*,javax.sql.*,java.io.*" %>
<%@ page import="kopo.service.*,kopo.dto.*" %>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>전체 데이터</h3>
	<hr>
	<%
	try{
		ExamService examService = new ExamServiceImpl();
		List<ExamSIO> exams = examService.selectAll();
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
		for(int i=0;i<exams.size();i++){
			out.println("<tr>");
			out.println("<td width=50><p align=center>"+
				"<a href='oneviewDB.jsp?studentid="+Integer.toString(exams.get(i).getStudentid())+"'>"+
				exams.get(i).getName()+"</a></p></td>");
			out.println("<td width=50><p align=center>"+Integer.toString(exams.get(i).getKor())+"</p></td>");
			out.println("<td width=50><p align=center>"+Integer.toString(exams.get(i).getEng())+"</p></td>");
			out.println("<td width=50><p align=center>"+Integer.toString(exams.get(i).getMat())+"</p></td>");
			out.println("<tr>");
		}
	}catch(Exception e){
		out.println("테이블 생성중 에러발생."+e);
	}
	%>
</body>
</html>