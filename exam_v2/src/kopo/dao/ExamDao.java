package kopo.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.Statement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import kopo.domain.ExamRIO;

//////////////////////////////////////////////////
//												//
//20/01/20 실습 완료. DAO 구현 					//
//kopo02 김정후									//
//////////////////////////////////////////////////

public class ExamDao {
	
	public static Connection getConnection() {
		//DB와의 커넥션을 생성하는 메소드.
		Connection conn = null;
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn = DriverManager.getConnection("jdbc:mysql://192.168.56.1:3306/jsptest","root","1234");
		}catch(Exception e) {System.out.println(e);}
		return conn;
	}
	
	public static int createDB() {
		//DB 테이블을 생성하는 메소드.
		int status=0;
		try {
			Connection conn = getConnection(); //커넥션을 얻는다.
			Statement stmt = conn.createStatement();
			stmt.executeUpdate( //테이블 CREATE 쿼리 수행.
					"create table examtable(name varchar(20), studentid int not null primary key, kor int, eng int, mat int) DEFAULT CHARSET=utf8;");
			stmt.close();
			conn.close();
		}catch(Exception e) {System.out.println(e);}
		return status;
	}
	
	public static int dropDB() {
		//DB 테이블을 삭제하는 메소드.
		int status = 0;
		try {
			Connection conn=getConnection(); //커넥션을 얻는다.
			Statement stmt = conn.createStatement();
			stmt.executeUpdate( //테이블 DROP 쿼리 수행.
					"drop table examtable");
		}catch(Exception e) {System.out.println(e);}
		return status;
	}
	
	public static int insert(ExamRIO u) {
		//ExamRIO 객체를 인자로 받아서 DB 테이블에 INSERT하는 메소드.
		int status=0;
		try {
			Connection conn = getConnection(); //커넥션을 얻는다.
			PreparedStatement ps = conn.prepareStatement( //SQL쿼리를 준비(prepare)한다
					"insert into examtable(name,studentid,kor,eng,mat) values (?,?,?,?,?)");
			ps.setString(1, u.getName());
			ps.setInt(2, u.getStudentid());
			ps.setInt(3, u.getKor());
			ps.setInt(4, u.getEng());
			ps.setInt(5, u.getMat());
			status = ps.executeUpdate(); //INSERT 쿼리 수행.
			ps.close();
			conn.close();
		}catch(Exception e){System.out.println(e);}
		return status;
	}
	
	public static int update(ExamRIO u) {
		//인자로 받은 ExamRIO 객체의 값으로 DB 테이블의 레코드를 UPDATE하는 메소드.
		int status = 0;
		try {
			Connection conn = getConnection(); //커넥션을 얻는다.
			PreparedStatement ps = conn.prepareStatement( //SQL쿼리를 준비(prepare)한다
					"upate examtable set name=?, studentid=?, kor=?, eng=?,math=?,where studentid=?");
			ps.setString(1, u.getName());
			ps.setInt(2, u.getStudentid());
			ps.setInt(3, u.getKor());
			ps.setInt(4, u.getEng());
			ps.setInt(5, u.getMat());
			ps.setInt(6, u.getStudentid());
			status = ps.executeUpdate(); //UPDATE 쿼리 수행.
			ps.close();
			conn.close();
		}catch(Exception e) {System.out.println(e);}
		return status;
	}
	
	public static int delete(ExamRIO u) {
		//인자로 받은 ExamRIO의 studentid 값과 같은 값을 가지는 테이블 레코드를 찾아서 DELETE하는 메소드.
		int status=0;
		try {
			Connection conn = getConnection(); //커넥션을 얻는다.
			PreparedStatement ps = conn.prepareStatement("delete from examtable where studentid=?"); //SQL쿼리를 준비(prepare)한다
			ps.setInt(1, u.getStudentid());
			status = ps.executeUpdate(); //DELETE 쿼리 수행.
			ps.close();
			conn.close();
		}catch(Exception e) {System.out.println(e);}
		return status;
	}
	
	public static List<ExamRIO> getAllRecords(){
		//테이블상의 모든 레코드를 리스트에 저장해서 반환하는 메소드.
		List<ExamRIO> list = new ArrayList<ExamRIO>(); //리스트 인터페이스를 ArrayList 구상 클래스로 구현.
		
		try {
			Connection conn=getConnection(); //커넥션을 얻는다.
			PreparedStatement ps = conn.prepareStatement("select * from examtable"); //쿼리를 준비(prepare)한다.
			ResultSet rs = ps.executeQuery(); //SELECT 쿼리 수행
			while(rs.next()) {
				ExamRIO u = new ExamRIO();
				u.setName(rs.getString("name"));
				u.setStudentid(rs.getInt("studentid"));
				u.setKor(rs.getInt("kor"));
				u.setEng(rs.getInt("eng"));
				u.setMat(rs.getInt("mat"));
				list.add(u); //가져온 레코드를 ExamRIO형태로 리스트에 적재.
			}
			rs.close();
			ps.close();
			conn.close();
		}catch(Exception e) {System.out.println(e);}
		return list; //리스트 객체 반환.
	}
	
	public static ExamRIO getRecordById(int id) {
		//id 값과 같은 값을 가지는 테이블 레코드를 찾아서 ExamRIO에 저장하여 반환하는 메소드
		ExamRIO u = new ExamRIO();
		try {
			Connection conn = getConnection(); //커넥션을 얻는다
			PreparedStatement ps = conn.prepareStatement("select * from examtable where studentid=?"); //쿼리를 준비(prepare)한다.
			ps.setInt(1, id);
			ResultSet rs = ps.executeQuery(); //SELECT 쿼리 수행.
			while(rs.next()) {
				u.setName(rs.getString("name"));
				u.setStudentid(rs.getInt("studentid"));
				u.setKor(rs.getInt("kor"));
				u.setEng(rs.getInt("eng"));
				u.setMat(rs.getInt("mat"));
			}
			rs.close();
			ps.close();
			conn.close();
		}catch(Exception e) {System.out.println(e);}
		return u; //ExamRIO 객체 반환.
	}
	
}
