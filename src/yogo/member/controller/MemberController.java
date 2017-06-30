package yogo.member.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import yogo.member.dao.MemberDAOImpl;
import yogo.member.dto.MemberVO;

@Controller
public class MemberController {

	@Autowired
	MemberDAOImpl memberDao;
	
	@RequestMapping(value="register.do")
	public String register(){
		return "/join/register";
	}
	
	@RequestMapping(value="register1.do")
	public String register1(){
		return "/join/register1";
	}
	
	@RequestMapping(value="loginView.do")
	public String loginView(){
		return "/login/loginView";
	}
	
	@RequestMapping(value="login.do")
	public ModelAndView login(MemberVO vo, HttpSession session){
		int result = 0;
		String view = "/login/loginView";
		MemberVO reVO = memberDao.memberLogin(vo);
		
		if ( reVO != null ) {
			session.setAttribute("mem_id", reVO.getMem_id());	
			session.setAttribute("mem_state", reVO.getMem_state());
			session.setAttribute("mem_nick", reVO.getMem_nick());
			session.setAttribute("mem_name", reVO.getMem_name());
			result = 1;
			view = "/main/main";
		}
		
		ModelAndView mv = new ModelAndView();
		mv.addObject("result", result);
		mv.setViewName(view);
		
		return mv;
	}
	
	@RequestMapping(value="join.do")
	public ModelAndView join(MemberVO vo){
		String msg = "가입실패";
		int result = memberDao.memberInsert(vo);
		if( result > 0 ) msg = "가입성공";
		
		ModelAndView mv = new ModelAndView();
		mv.addObject(msg);
		mv.addObject(result);
		mv.setViewName("/main/main");
		
		return mv;
	}
	
	//ajax -> loginCheck
		@RequestMapping(value="loginCheck.do")
		@ResponseBody
		public String loginCheck(String mem_id, String mem_pass){
			String result = memberDao.loginCheck(mem_id, mem_pass);
			return result;
		}
		
	//로그아웃
		@RequestMapping(value="logOut.do")
		public String logOut(HttpSession session){
				session.invalidate();
			
			return "/main/main";
		}
}