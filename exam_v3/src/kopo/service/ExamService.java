package kopo.service;

import java.util.List;

import kopo.dto.ExamSIO;

public interface ExamService {
	//createDB & dropDB
	void createDB(); //DB의 테이블을 create하는 메소드.
	void dropDB(); //DB의 테이블을 drop하는 메소드.
	//그나마 서비스 같은 놈
	void allsetDB(); //DB에 값을 넣는 메소드.
	//Read
	ExamSIO selectOne(int id); //학번으로 검색해서 결과 (1개 레코드)를 가져오는 메소드.
	List<ExamSIO> selectAll(); //모든 레코드를 가져오는 메소드.
	List<ExamSIO> selectAllByName(String name); //이름으로 검색해서 결과를 가져오는 메소드.
	//update
	int insert(ExamSIO examScore);
	int update(int id, ExamSIO examSIO);
	int update(ExamSIO examSIO);
	// Delete
	int delete(int id);
	int delete(ExamSIO examSIO);
}
