package com.kopo.domain;

public class ExamRIO {
	//RIO는 Repo와 Service 사이의 데이터를 주고 받기 위한 컨테이너 역할을 한다.
	//domain이라고도 부름.
	private String name;
	private int studentid;
	private int kor;
	private int eng;
	private int mat;
	
	public ExamRIO() {
	}
	
	public ExamRIO(String name, int studentid, int kor, int eng, int mat) {
		super();
		this.name= name;
		this.studentid=studentid;
		this.kor = kor;
		this.eng = eng;
		this.mat = mat;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getStudentid() {
		return studentid;
	}

	public void setStudentid(int studentid) {
		this.studentid = studentid;
	}

	public int getKor() {
		return kor;
	}

	public void setKor(int kor) {
		this.kor = kor;
	}

	public int getEng() {
		return eng;
	}

	public void setEng(int eng) {
		this.eng = eng;
	}

	public int getMat() {
		return mat;
	}

	public void setMat(int mat) {
		this.mat = mat;
	}
	
	
}
