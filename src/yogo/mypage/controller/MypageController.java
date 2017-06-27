package yogo.mypage.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import yogo.adver.dao.AdverDAO;
import yogo.adver.dao.AdverDAOImpl;
import yogo.adver.dto.AdverVO;
import yogo.catering.dto.CateringVO;
import yogo.mypage.dao.MypageDAO;

@Controller
public class MypageController {
	
	@Autowired
	MypageDAO dao;

	@RequestMapping(value="/catAppStatus_user.do")
	public ModelAndView catAppStatus_user() {
		String mem_id = "sangjun0131@naver.com";
		List<CateringVO> list = new ArrayList<CateringVO>();
		list = dao.selectCate_user(mem_id);
		ModelAndView mv = new ModelAndView();
		mv.addObject("list", list);
		mv.setViewName("/mypage/catAppStatus_user");
		return mv;
	}
	
	//광고신청현황 list
	@RequestMapping(value="/adverAppStatus_adver.do")
	public ModelAndView adverAppStatusList_adver(HttpSession session) {
		String mem_id = (String) session.getAttribute("mem_id");
		List<AdverVO> list = new ArrayList<AdverVO>();
		list = dao.adverConfList_adver(mem_id);
		ModelAndView mv = new ModelAndView();
		mv.addObject("list", list);
		mv.setViewName("/mypage/adverAppStatus_adver");
		return mv;
	}
	
	//광고거절/승인 UPDATE
		@RequestMapping(value="/advRefuseUpdate.do")
		public String advRefuseUpdate(AdverVO vo) {
			dao.advRefuseUpdate(vo);
			return "redirect:adverAppStatus_adver.do";
		}
		
	//광고승인확인List
		@RequestMapping(value="/adverAppConfirm_adver.do")
		public ModelAndView adverAppConfirm_adver(HttpSession session) {
			String mem_id = (String) session.getAttribute("mem_id");
			List<AdverVO> list = new ArrayList<AdverVO>();
			list = dao.adverAppConfirm_adver(mem_id);
			ModelAndView mv = new ModelAndView();
			mv.addObject("list", list);
			mv.setViewName("/mypage/adverAppConfirm_adver");
			return mv;
		}
}
