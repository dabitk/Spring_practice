<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*,javax.sql.*, java.io.*" %>
<%@ page import = "kopo.domain.*,kopo.dao.*" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>데이터 Insert</title>
</head>
<body>
	<h3>20/01/20 kopo02 데이터 Insert</h3>
	<hr>
	<%
		try{
			ExamDao.insert(new ExamRIO("나연", 209901,95,100,95)); //DAO 클래스의 insert 메소드를 사용해서 ExamRIO 객체의 데이터를 DB에 삽입한다.
			ExamDao.insert(new ExamRIO("정연", 209902,90,90,100)); //insert 메소드는 static으로 선언되어 있기 때문에 "클래스명."으로 호출이 가능하다.
			ExamDao.insert(new ExamRIO("모모", 209903,85,80,95));
			ExamDao.insert(new ExamRIO("사나", 209904,75,100,85));
			ExamDao.insert(new ExamRIO("지영", 209905,85,70,75));
			ExamDao.insert(new ExamRIO("미나", 209906,95,80,95));
			ExamDao.insert(new ExamRIO("다현", 209907,85,100,85));
			ExamDao.insert(new ExamRIO("채영", 209908,75,90,65));
			ExamDao.insert(new ExamRIO("쯔위", 209909,85,80,95));
		}catch(Exception e){
			out.println("테이블 생성중 에러발생," + e);
		}
	%>
</body>
</html>