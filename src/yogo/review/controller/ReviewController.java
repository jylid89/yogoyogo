package yogo.review.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import yogo.review.dao.ReviewDAOImpl;
import yogo.review.dto.ReviewVO;

@Controller
public class ReviewController {
	
	@Autowired
	ReviewDAOImpl reviewDAO;
	
	@RequestMapping(value="/reviewList.do")
	public ModelAndView reviewList() {
		List<ReviewVO> list = reviewDAO.reviewList();
		ModelAndView mv = new ModelAndView();
		mv.setViewName("/review/reviewList");
		mv.addObject("list", list);
		return mv;
	}
	
	@RequestMapping(value="/reviewInsert.do")
	public String reviewInsert() {
		return "/review/reviewInsert";
	}
}
