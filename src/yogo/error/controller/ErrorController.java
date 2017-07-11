package yogo.error.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class ErrorController {
	
	@RequestMapping(value="/throwable.do")
	public ModelAndView throwable() {
		ModelAndView mv = new ModelAndView();
		mv.addObject("errorType", "Throwable 에러");
		mv.addObject("errorContent", "예외가 발생하였습니다.");
		mv.setViewName("error/error");
		return mv;
	}
	
	@RequestMapping(value="/exception.do")
	public ModelAndView exception() {
		ModelAndView mv = new ModelAndView();
		mv.addObject("errorType", "Exception 에러");
		mv.addObject("errorContent", "예외가 발생하였습니다.");
		mv.setViewName("error/error");
		return mv;
	}
	
	@RequestMapping(value="/400.do")
	public ModelAndView fourHundred() {
		ModelAndView mv = new ModelAndView();
		mv.addObject("errorType", "400 에러");
		mv.addObject("errorContent", "잘못된 요청입니다.");
		mv.setViewName("error/error");
		return mv;
	}
	
	@RequestMapping(value="/403.do")
	public ModelAndView fourHundredThree() {
		ModelAndView mv = new ModelAndView();
		mv.addObject("errorType", "403 에러");
		mv.addObject("errorContent", "접근이 금지되었습니다.");
		mv.setViewName("error/error");
		return mv;
	}
	
	@RequestMapping(value="/404.do")
	public ModelAndView fourHundredFour() {
		ModelAndView mv = new ModelAndView();
		mv.addObject("errorType", "404 에러");
		mv.addObject("errorContent", "요청하신 페이지는 존재하지 않습니다.");
		mv.setViewName("error/error");
		return mv;
	}
	
	@RequestMapping(value="/405.do")
	public ModelAndView fourHundredFive() {
		ModelAndView mv = new ModelAndView();
		mv.addObject("errorType", "405 에러");
		mv.addObject("errorContent", "요청된 메소드가 허용되지 않습니다.");
		mv.setViewName("error/error");
		return mv;
	}
	
	@RequestMapping(value="/500.do")
	public ModelAndView fiveHundred() {
		ModelAndView mv = new ModelAndView();
		mv.addObject("errorType", "500 에러");
		mv.addObject("errorContent", "서버에 오류가 발생하였습니다.");
		mv.setViewName("error/error");
		return mv;
	}
	
	@RequestMapping(value="/503.do")
	public ModelAndView fiveHundredThree() {
		ModelAndView mv = new ModelAndView();
		mv.addObject("errorType", "503 Error");
		mv.addObject("errorContent", "서비스를 사용할 수 없습니다.");
		mv.setViewName("error/error");
		return mv;
	}
}
