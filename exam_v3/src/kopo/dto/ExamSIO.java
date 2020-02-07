package kopo.dto;

public class ExamSIO {
	//ExamSIO는 ExamRIO(도메인)과 구조가 완전히 동일하다. 
	//다만, RIO(도메인)는 Repository와 Service 사이에 데이터를 주고받기위해 쓰이는 반면,
	//SIO(DTO)는 Controller와 Service 사이에 데이터를 주고받기위해 쓰인다.
	//즉, 쓰이는 용도가 다름.
	private String name;
	private int studentid;
	private int kor;
	private int eng;
	private int mat;
	
	public ExamSIO() {
		
	}
	
	public ExamSIO(String name, int studentid, int kor, int eng, int mat) {
		super();
		this.name = name;
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
