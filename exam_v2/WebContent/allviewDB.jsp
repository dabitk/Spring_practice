<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*,javax.sql.*,java.io.*" %>
<%@ page import="kopo.domain.*,kopo.dao.*" %>
<%@ page import="java.util.*" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>20/01/20 kopo02 전체 데이터 조회</h3>
	<hr>
	<%
		try{
			List<ExamRIO> exams = ExamDao.getAllRecords(); //DB에서 모든 레코드를 받아와서 리스트에 저장한 후 반환하는 메소드.
		
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
			for(int i=0;i<exams.size();i++){ //리스트를 순회 하면서 테이블 형태로 출력함
				out.println("<tr>");
				out.println("<td width=50><p align=center>"+
					"<a href='oneviewDB.jsp?studentid="+Integer.toString(exams.get(i).getStudentid())+"'>"+ //이름을 누르면 oneviewDB.jsp로 이동하도록 a 태그 적용.
					exams.get(i).getName()+"</a></p></td>");
				out.println("<td width=50><p align=center>"+
					"<a href='oneviewDB.jsp?studentid="+Integer.toString(exams.get(i).getStudentid())+"'>"+ //학번을 누르면 oneviewDB.jsp로 이동하도록 a 태그 적용.
					Integer.toString(exams.get(i).getStudentid())+"</a></p></td>");
				out.println("<td width=50><p align=center>"+Integer.toString(exams.get(i).getKor())+"</p></td>"); //국어 점수 출력
				out.println("<td width=50><p align=center>"+Integer.toString(exams.get(i).getEng())+"</p></td>"); //영어 점수 출력
				out.println("<td width=50><p align=center>"+Integer.toString(exams.get(i).getMat())+"</p></td>"); //수학 점수 출력
				out.println("<tr>");
			}
		}catch(Exception e){
			out.println("테이블 생성중 에러발생, "+e);
		}
	%>
	</table>

</body>
</html>