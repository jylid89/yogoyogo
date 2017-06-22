package yogo.mypage.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

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
}
