package com.kopo.domain2;

public class ExamRIO2 {
	private String name;
	private int studentid;
	private int kor;
	private int eng;
	private int mat;
	
	public ExamRIO2() {
	}
	
	public ExamRIO2(String name, int studentid, int kor, int eng, int mat) {
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
