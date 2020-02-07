package kopo.service;

import java.util.ArrayList;
import java.util.List;

import kopo.dao.ExamDao;
import kopo.domain.ExamRIO;
import kopo.dto.ExamSIO;

public class ExamServiceImpl implements ExamService{

	@Override
	public void createDB() {
		// TODO Auto-generated method stub
		ExamDao.createDB();
	}

	@Override
	public void dropDB() {
		// TODO Auto-generated method stub
		ExamDao.dropDB();
	}

	@Override
	public void allsetDB() {
		// TODO Auto-generated method stub
		this.insert(new ExamSIO("나연",209901,91,100,95));
		this.insert(new ExamSIO("정연",209902,92,100,95));
		this.insert(new ExamSIO("모모",209903,93,100,95));
		this.insert(new ExamSIO("사나",209904,94,100,95));
		this.insert(new ExamSIO("지효",209905,80,100,95));
		this.insert(new ExamSIO("미나",209906,96,100,95));
		this.insert(new ExamSIO("다현",209907,97,100,95));
		this.insert(new ExamSIO("채영",209908,98,100,95));
		this.insert(new ExamSIO("쯔위",209909,99,100,95));	
	}

	@Override
	public ExamSIO selectOne(int id) {
		// TODO Auto-generated method stub\
		ExamRIO examRIO = ExamDao.getRecordById(id);
		return new ExamSIO(
				examRIO.getName(), examRIO.getStudentid(), examRIO.getKor(), examRIO.getEng(), examRIO.getMat()
				);
	}

	@Override
	public List<ExamSIO> selectAll() {
		// TODO Auto-generated method stub
		List<ExamRIO> examRIO = ExamDao.getAllRecords();
		List<ExamSIO> examSIO = new ArrayList<ExamSIO>();
		for(ExamRIO exam : examRIO) {
			examSIO.add(new ExamSIO(
			exam.getName(), exam.getStudentid(), exam.getKor(), exam.getEng(), exam.getMat()
			));
		}
		return examSIO;
	}

	@Override
	public List<ExamSIO> selectAllByName(String name) {
		// TODO Auto-generated method stub
		
		return null;
	}

	@Override
	public int insert(ExamSIO examSIO) {
		// TODO Auto-generated method stub
		return ExamDao.insert(
				new ExamRIO(examSIO.getName(),examSIO.getStudentid(),
						examSIO.getKor(),examSIO.getEng(),examSIO.getMat())
				);
	}

	@Override
	public int update(int id, ExamSIO examSIO) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int update(ExamSIO examSIO) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int delete(int id) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int delete(ExamSIO examSIO) {
		// TODO Auto-generated method stub
		return 0;
	}

}
