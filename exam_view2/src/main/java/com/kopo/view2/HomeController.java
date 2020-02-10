package com.kopo.view2;

import java.io.UnsupportedEncodingException;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import com.kopo.domain2.ExamRIO2;
/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/**
	 * "/"로 들어오는 GET요청을 처리하고 home으로 보냄.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		
		return "home";
	}
	
	/**
	 * "get1"로 들어오는 GET요청을 처리하고 get1로 보냄.
	 */
	
	@RequestMapping(value="get1", method = RequestMethod.GET)
	public String get1(Model model, String id, String pass) {
		//id, pass를 패러미터로 받는다.
		logger.info("get1.jsp start["+id+":"+pass+"]");
		
		model.addAttribute("id",id); // id를 model의 속성에 지정
		model.addAttribute("pass",pass); //pass를 model의 속성에 지정
		//렌더링할 뷰를 get1로 선택
		return "get1";
	}
	
	/**
	 * "get2"로 들어오는 GET요청을 처리하고 get2로 보냄.
	 */
	@RequestMapping(value="get2/{id}/{pass}", method = RequestMethod.GET)
	public String get2(@PathVariable("id") String id, @PathVariable("pass") String pass, Model model) {
		//id, pass를 패러미터로 받는다.
		logger.info("get2.jsp start["+id+":"+pass+"]");
		
		model.addAttribute("id",id); //id를 model의 속성에 지정
		model.addAttribute("pass",pass); //pass를 model의 속성에 지정
		//렌더링할 뷰를 get2로 선택
		return "get2";
	}
	
	/**
	 * "post1"로 들어오는 POST요청을 처리하고 post1로 보냄.
	 */
	@RequestMapping(value = "post1", method = RequestMethod.POST)
	public String post1(Model model, String name, String studentid, String kor, String eng, String mat) throws UnsupportedEncodingException{
		logger.info("post1.jsp start["+name+":"+studentid+":"+kor+":"+eng+":"+mat+"]");
		
		//한글처리
		name = new String(name.getBytes("8859_1"),"utf-8");
		
		model.addAttribute("name",name); //name을 model의 속성에 지정
		model.addAttribute("studentid",studentid); //studentid를 model의 속성에 지정
		model.addAttribute("kor",kor); //kor를 model의 속성에 지정
		model.addAttribute("eng",eng); //eng를 model의 속성에 지정
		model.addAttribute("mat",mat); //mat를 model의 속성에 지정
		//렌더링할 뷰를 post1로 선택
		return "post1";
	}
	/**
	 * "post2"로 들어오는 POST요청을 처리하고 post2로 보냄.
	 */
	@RequestMapping(value = "post2", method = RequestMethod.POST)
	public String post2(Model model,ExamRIO2 exam) throws UnsupportedEncodingException{
		
		logger.info("post2.jsp start["+exam.getName()+":"+exam.getStudentid()+":"+exam.getKor()+":"+exam.getEng()+":"+exam.getMat()+"]");
		
		//한글처리
		exam.setName(new String(exam.getName().getBytes("8859_1"),"utf-8"));
		
		model.addAttribute("exam",exam); //exam을 model의 속성에 지정
		//렌더링할 뷰를 post2로 선택
		return "post2";
	}
}
