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
	
	//리뷰 리스트(Select)
	@RequestMapping(value="reviewList.do")
	public ModelAndView reviewList(String truck_num) {
		List<ReviewVO> list = reviewDAO.reviewList(truck_num);
		ModelAndView mv = new ModelAndView();
		mv.setViewName("/review/reviewList");
		mv.addObject("list", list);
		return mv;
	}
	
	//리뷰폼이동
	@RequestMapping(value="reviewform.do")
	public String reviewForm() {
		return "/review/reviewInsert";
	}
	
	//리뷰 작성(Insert)
	@RequestMapping(value="reviewInsert.do")
	public String reviewInsert(ReviewVO vo) {
		int result = reviewDAO.reviewInsert(vo);
		return "redirect:reviewList.do";
	}
	
	
}
