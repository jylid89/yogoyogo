package yogo.activity.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import yogo.activity.dao.ActivityDAOImpl;
import yogo.activity.dto.ActivityVO;

@Controller
public class ActivityController {

	@Autowired
     ActivityDAOImpl activityDAO;
	 
	/*
	 *  리스트 보기
	 */
	@RequestMapping(value="/list.do")
	public ModelAndView list(){
		System.out.println("리스트를 불러줘");
		List<ActivityVO> list = activityDAO.list();
		ModelAndView mv = new ModelAndView();
		mv.addObject("listModel",list);
		mv.setViewName("/activtiy/activity");
		return mv;
		
	}
	/*
	 * 글 쓰러 가기
	 */
	@RequestMapping(value="activityInsert.do")
	public ModelAndView write(){
		System.out.println("글쓰러가니?");
		ModelAndView mv = new ModelAndView();
	 	 mv.setViewName("/activtiy/activityInsert");
		return mv;
		
	}
	
	/*
	 * 글 쓰고 다시 리스트로 가기
	 */
	@RequestMapping(value="activityInsertOk.do")
	public ModelAndView insert( ActivityVO vo){
		System.out.println("글써지니?");
	 	int result = activityDAO.activityInsert(vo);
	 	List<ActivityVO> list = activityDAO.list();
		ModelAndView mv = new ModelAndView();
		mv.addObject("result",result);
		mv.addObject("listModel",list);
		mv.setViewName("/activtiy/activity");
		return mv;
		
	}
	
	
	
}






















