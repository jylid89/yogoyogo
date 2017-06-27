package yogo.adver.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import yogo.adver.dao.AdverDAOImpl;
import yogo.adver.dto.AdverVO;
import yogo.review.dao.ReviewDAOImpl;

@Controller
public class AdverController {
	
	@Autowired
	AdverDAOImpl adverDAO;
	
	//광고 리스트(Select)
	@RequestMapping(value="/adverList.do")
	public ModelAndView reviewList() {
		List<AdverVO> list = adverDAO.adverList();
		ModelAndView mv = new ModelAndView();
		mv.setViewName("/adver/adverList");
		mv.addObject("list", list);
		return mv;
	}
	
	//광고 디테일(Detail)
	@RequestMapping(value="advDetail.do")
	public ModelAndView advDetail(String adv_num,HttpSession session) {
		String mem_id = (String)session.getAttribute("mem_id");
		AdverVO vo = adverDAO.adverDetail(adv_num,mem_id);
		ModelAndView mv = new ModelAndView();
		mv.setViewName("/adver/adverDetail");
		mv.addObject("vo", vo);
		return mv;
	}
	
	//광고 신청 추가(Insert)
	@RequestMapping(value="advConfirmInsert.do")
	public ModelAndView advConfirmInsert(AdverVO adverVo) {
		adverDAO.advConfirmInsert(adverVo);
		ModelAndView mv = new ModelAndView();
		mv.addObject("adv_num" ,adverVo.getAdv_num());
		mv.setViewName("redirect:advDetail.do");
		return mv;
	}
	
	//ajax -> 신청하기/신청취소 버튼제어
	@RequestMapping(value="confirmCheck.do")
	@ResponseBody
	public String confirmCheck(String adv_num, String truck_num){
			String result = adverDAO.confirmCheck(adv_num, truck_num);
		return result;
	}
	
	//ajax -> 승인 전인지 아닌지 제어
	@RequestMapping(value="confirmCancel.do")
	@ResponseBody
	public String confirmCancel(String adv_num, String truck_num){
			String result = adverDAO.confirmCancel(adv_num, truck_num);
		return result;
	}
	
	//승인취소(delete)
	@RequestMapping(value="advConfirmDelete.do")
	public ModelAndView advConfirmDelete(String adv_num, String truck_num) {
		adverDAO.advConfirmDelete(adv_num, truck_num);
		ModelAndView mv = new ModelAndView();
		mv.addObject("adv_num" ,adv_num);
		mv.setViewName("redirect:advDetail.do");
		return mv;
	}
	
	//페이지 이동
	@RequestMapping(value="/insertForm.do")
	public String insertForm() {
		return "/adver/adverInsert";
	}
	
	//광고추가(Insert)
	@RequestMapping(value="advInsert.do")
	public String advInsert(AdverVO vo, HttpSession session) {
		vo.setAdv_num((String)session.getAttribute("mem_id"));
		
		adverDAO.advInsert(vo);
		return "redirect:adverList.do";
	}
	
	
	
}
