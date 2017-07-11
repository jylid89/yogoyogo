package yogo.catering.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import yogo.catering.dao.CateringDAO;
import yogo.catering.dto.CateringVO;
import yogo.foodtruck.dto.FoodtruckVO;
import yogo.menu.dto.MenuVO;

@Controller
public class CateringController {
	
	@Autowired
	CateringDAO cateringDAO;
	
		//write.do 생성
		@RequestMapping("write_ok.do")
		public String insert(CateringVO vo, HttpSession session){
			vo.setMem_id((String)session.getAttribute("mem_id"));
			cateringDAO.cateringInsert(vo);
			return "redirect:cateList.do";
		}
		
		//list.do 생성
		@RequestMapping("cateList.do")
		public ModelAndView getSelect(){
			List<FoodtruckVO> list = cateringDAO.list();
			System.out.println("케이터링 컨트롤 접속");
			ModelAndView mv = new ModelAndView();
			mv.addObject("listModel",list);
			mv.setViewName("/catering/cateringList");
			return mv;
		}
		
		//catering 상세정보
		@RequestMapping("detail.do")
		public ModelAndView cateringView(MenuVO vo){
//			cateringDAO.increaseCount(vo);
			List<MenuVO> list = cateringDAO.cateringView(vo);
			String truckName = list.get(0).getTruck_name();
			String truckNum = list.get(0).getTruck_num();
			ModelAndView mv = new ModelAndView();
			mv.addObject("model",list);
			mv.addObject("truckName",truckName);
			mv.addObject("truckNum",truckNum);
			mv.setViewName("/catering/cateringDetail");
			return mv;
		}
}
