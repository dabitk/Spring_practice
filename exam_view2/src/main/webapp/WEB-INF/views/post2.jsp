<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>

<!-- 컨트롤러에서 요청에 대한 처리를 한 후 뷰를 선택하면 ViewResolver를 거쳐서 여기로 들어온다. -->

<!DOCTYPE html>
<html>
<head>
	<title>Home</title>
</head>
<body>
	<h1>
		post2
	</h1>
	
	<hr>
	<!-- JSTL로 name,studentid,kor,eng,mat를 출력함 -->
	이름=${exam.name}<br>
	학번=${exam.studentid}<br>
	국어=${exam.kor}<br>
	영어=${exam.eng}<br>
	수학=${exam.mat}<br>
	
</body>
</html>