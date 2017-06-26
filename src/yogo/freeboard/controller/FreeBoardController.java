package yogo.freeboard.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import yogo.freeboard.dao.FreeBoardDAO;
import yogo.freeboard.dao.FreeBoardDAOImpl;
import yogo.freeboard.dto.FreeBoardVO;

@Controller
public class FreeBoardController {

	@Autowired
	FreeBoardDAOImpl freeDAO;
	
	@RequestMapping("freeboardInsert.do")
	public String freeboard(String url){
		return "/freeboard/freeboardInsert";
	}
	
	//자유게시판 리스트(SELECT)
	@RequestMapping(value="/freeboard.do")
	public ModelAndView freeList(){
		List<FreeBoardVO> freeVO = freeDAO.FreeBoardList();
		ModelAndView mv = new ModelAndView();
		mv.setViewName("/freeboard/freeboard");
		mv.addObject("list",freeVO);
		
		return mv;
	}
	
	//자유게시판 인서트 (INSERT)
	@RequestMapping(value="freeInsert.do")
	public String freeInsert(FreeBoardVO vo){
		System.out.println("인서트 이벤트 발생");
		freeDAO.FreeBoardInsert(vo);
		
		return "redirect:freeboard.do";
	}
}
