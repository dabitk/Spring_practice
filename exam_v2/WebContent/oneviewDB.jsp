<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*,javax.sql.*,java.io.*" %>
<%@ page import = "kopo.domain.*,kopo.dao.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>20/01/20 kopo02 조회</h3>
	<hr>
	<%
		int studentid = Integer.parseInt(request.getParameter("studentid")); //이전 페이지에서 studentid 패러미터를 받아온다.
		try{
			ExamRIO exam = ExamDao.getRecordById(studentid); //학번으로 학생 레코드를 조회하는 메소드. 
															 //ExamRIO를 반환받아서 exam 변수에 저장한다
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
			out.println("<tr>");
			out.println("<td width=50><p align=center>"+exam.getName()+"</p></td>");
			out.println("<td width=50><p align=center>"+Integer.toString(exam.getStudentid())+"</p></td>");
			out.println("<td width=50><p align=center>"+Integer.toString(exam.getKor())+"</p></td>");
			out.println("<td width=50><p align=center>"+Integer.toString(exam.getEng())+"</p></td>");
			out.println("<td width=50><p align=center>"+Integer.toString(exam.getMat())+"</p></td>");
			out.println("</tr>");
		}catch(Exception e){
			out.println("oneview중 에러발생, " + e);
		}
	%>
	</table>
</body>
</html>