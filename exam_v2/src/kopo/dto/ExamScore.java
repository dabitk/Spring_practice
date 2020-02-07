package kopo.dto;

//////////////////////////////////////////////////
//												//
//        20/01/20 실습 완료. DTO 구현 			//
//              kopo02 김정후					//
//												//
//////////////////////////////////////////////////

public class ExamScore {
	private String name;
	private int studentid;
	private int kor;
	private int eng;
	private int mat;
	
	public ExamScore() {}
	
	public ExamScore(String name, int Studentid, int kor, int eng, int mat) {
		super();
		this.name=name;
		this.studentid = studentid;
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

