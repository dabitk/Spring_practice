<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>

<!-- 컨트롤러에서 요청에 대한 처리를 한 후 뷰를 선택하면 ViewResolver를 거쳐서 여기로 들어온다. -->

<html>
<head>
	<title>Home</title>
</head>
<body>
<h1>
	Hello world!  
</h1>

<hr>
get방식 일반<a href="./get1?id='abc'&pass='111'">./get1?id='abc'&pass='111'</a>
<hr>
get방식 스프링타입<a href="./get2/abc/111">./get2/abc/111</a>
<hr.>
post방식 일반
<form action="./post1" method="post">
	이름 : <input type="text" name="name", value="나연"><br>
	학번 : <input type="text" name="studentid", value="209901"><br>
	국어 : <input type="text" name="kor", value="90"><br>
	영어 : <input type="text" name="eng", value="100"><br>
	수학 : <input type="text" name="mat", value="80"><br>
	<input type="submit" value="post1"> 
</form>
<hr>
post방식 묶어 처리
<form action="./post2" method="post">
	이름 : <input type="text" name="name", value="나연"><br>
	학번 : <input type="text" name="studentid", value="209901"><br>
	국어 : <input type="text" name="kor", value="90"><br>
	영어 : <input type="text" name="eng", value="100"><br>
	수학 : <input type="text" name="mat", value="80"><br>
	<input type="submit" value="post2"> 
</form>
</body>
</html>
