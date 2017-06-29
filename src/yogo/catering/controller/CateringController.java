package yogo.catering.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import yogo.catering.dao.CateringDAO;
import yogo.catering.dto.CateringVO;
import yogo.foodtruck.dto.FoodtruckVO;
import yogo.menu.dto.MenuVO;

@Controller
@RequestMapping(value="catering")
public class CateringController {
	
	@Autowired
	CateringDAO cateringDAO;
	
	//화면만 연결하는 메소드
		@RequestMapping("{url}.do")
		public String member(@PathVariable String url){
			System.out.println("요청받았음");
			
			return "/catering/"+url;
		}
		//write.do 생성
		@RequestMapping("write_ok.do")
		public ModelAndView insert(CateringVO vo){
			String message = "글작성 실패";
			int result = cateringDAO.cateringInsert(vo);
			if(result > 0) message = "글작성 성공";
			ModelAndView mv = new ModelAndView();
			mv.addObject("message",message);
			mv.addObject("result",result);
			mv.setViewName("/catering/cateringDetail");
			return mv;
		}
		
		//list.do 생성
		@RequestMapping("catelist.do")
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
			mv.addObject("truckNum",truckName);
			mv.setViewName("/catering/cateringDetail");
			return mv;
		}
}
