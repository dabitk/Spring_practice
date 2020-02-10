<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page import="java.io.*,java.util.*" %>
<%@ page import="com.kopo.domain.*" %>
<html>
<head>
	<title>Home</title>
</head>
<body>
<!-- HomeController.java에서 모델 객체에 속성으로 설정한 name과 addr 값을 JSTL 구문을 통해 출력함 -->
이름 : ${name} <br>
주소 : ${addr} <br>

<hr>
<!-- HomeController.java에서 모델 객체에 담긴 클래스 구조를 꺼내서 JSTL을 통해 출력함  -->
<!-- c:choose 태그는 if-else를 수행함. -->
<!-- c:when은 if 또는 else if를 의미함. -->
<!-- c:otherwise는 else를 의미함. -->

	<table cellspacing=1 width=600 border=1>
	<c:choose>
		<c:when test="${empty examRIO}">
			<tr>
				<td colspan=3>
					exam 없다
				</td>
		</c:when>
		<c:otherwise>
			<tr>
				<td width=50><p align=center>${examRIO.name}</p></td>
				<td width=50><p align=center>${examRIO.studentid}</p></td>
				<td width=50><p align=center>${examRIO.kor}</p></td>
				<td width=50><p align=center>${examRIO.eng}</p></td>
				<td width=50><p align=center>${examRIO.mat}</p></td>
			</tr>
		</c:otherwise>
	</c:choose>
	</table>
<hr>
<!-- HomeController.java에서 모델 객체에 담긴 클래스 구조의 리스트를 꺼내서 JSTL을 통해 출력함 -->
	<table cellspacing=1 width=600 border=1>
	<c:choose>
		<c:when test="${empty examList}">
			<tr>
				<td colspans=3>
					exams 없다
				</td>
			</tr>
		</c:when>
		<c:otherwise>
			<c:forEach items="${examList}" var="e">
			<tr>
				<td width=50><p align=center>${e.name}</p></td>
				<td width=50><p align=center>${e.studentid}</p></td>
				<td width=50><p align=center>${e.kor}</p></td>
				<td width=50><p align=center>${e.eng}</p></td>
				<td width=50><p align=center>${e.mat}</p></td>
			</tr>	
			</c:forEach>
		</c:otherwise>
	</c:choose>
	</table>
<hr><hr>
아래는 Scriptlet방식 (spring에서는 잘 사용하지 않음)<br>
<r>
<%
	String name=(String) request.getAttribute("name"); //패러미터를 문자열로 타입 캐스팅 후에 변수에 저장함.
	String addr=(String) request.getAttribute("addr"); //패러미터를 문자열로 타입 캐스팅 후에 변수에 저장함.
	out.println("이름 :"+name+"<br>");
	out.println("주소 :"+addr+"<br>");
%>
	<hr>
<%
	ExamRIO examRIO = (ExamRIO) request.getAttribute("examRIO");
%>
	<table cellspacing=1 width=500 border=1>
		<tr>
			<td width=50><p align=center><%=examRIO.getName() %></p></td>
			<td width=50><p align=center><%=examRIO.getStudentid() %></p></td>
			<td width=50><p align=center><%=examRIO.getKor() %></p></td>
			<td width=50><p align=center><%=examRIO.getEng() %></p></td>
			<td width=50><p align=center><%=examRIO.getMat() %></p></td>
		</tr>
	</table>
	<hr>
<%
	List<ExamRIO> examList = (List<ExamRIO>)request.getAttribute("examList");
	//패러미터에 담긴 리스트를 List<ExamRIO>에 담는다.
%>
<table cellspacing=1 width=600 border=1>
<%
	//for문으로 리스트에 담긴 내용 출력.
	for(int i=0;i < examList.size();i++){
		out.println("<tr>");
		out.println("<td width=50><p align=center>"+examList.get(i).getName()+"</p></td>");
		out.println("<td width=50><p align=center>"+Integer.toString(examList.get(i).getStudentid())+"</p></td>");
		out.println("<td width=50><p align=center>"+Integer.toString(examList.get(i).getKor())+"</p></td>");
		out.println("<td width=50><p align=center>"+Integer.toString(examList.get(i).getEng())+"</p></td>");
		out.println("<td width=50><p align=center>"+Integer.toString(examList.get(i).getMat())+"</p></td>");
		out.println("<tr>");
	}
%>
</table>
</body>
</html>
