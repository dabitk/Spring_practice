package com.kopo.view;

import java.util.ArrayList;
import java.util.List;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.kopo.domain.ExamRIO;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	

	/**
	 * "/" 디렉터리로 들어오는 GET방식의 요청을 여기에서 핸들링(로직처리)한 후,
	 *  렌더링할 뷰를 선택하는 메소드. 
	 */
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);

		//모델에 한개를 보내거나
		model.addAttribute("name","홍필두");
		model.addAttribute("addr","분당구");

		//모델에 클래스 구조로 보내거나
		ExamRIO examRIO = new ExamRIO("제니",209901,91,100,95);
		model.addAttribute("examRIO",examRIO);

		//모델에 클래스 구조의 리스트로 보내거나
		List<ExamRIO> examList = new ArrayList<ExamRIO>();
		examList.add(new ExamRIO("나연",209901,91,100,95));
		examList.add(new ExamRIO("정연",209902,92,100,95));
		examList.add(new ExamRIO("모모",209903,93,100,95));
		examList.add(new ExamRIO("사나",209904,94,100,95));
		examList.add(new ExamRIO("지효",209905,80,100,95));
		examList.add(new ExamRIO("미나",209906,96,100,95));
		examList.add(new ExamRIO("다현",209907,97,100,95));
		examList.add(new ExamRIO("채영",209908,98,100,95));
		examList.add(new ExamRIO("쯔위",209909,99,100,95));
		model.addAttribute("examList",examList);
		
		//렌더링할 뷰를 문자열 형으로 지정해서 반환한다.
		return "home";
	}
	
}
