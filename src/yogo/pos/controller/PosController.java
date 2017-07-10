package yogo.pos.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import yogo.pos.dao.PosDAOImpl;
import yogo.pos.dto.PosVO;

@Controller
public class PosController {

	@Autowired
	PosDAOImpl posDAO;
	
	//메뉴 리스트 보기
	@RequestMapping(value="posList.do")
	public ModelAndView posList(HttpSession session){
		String truck_num = (String)session.getAttribute("truck_num");
		List<PosVO> list = posDAO.posList(truck_num);
		PosVO vo = posDAO.selectTruck(truck_num);
		ModelAndView mv = new ModelAndView();
		mv.addObject("truck_name", vo.getTruck_name());
		mv.addObject("posModel",list);
		mv.setViewName("/pos/pos");
		return mv;
		
	}
	
	//결제 완료
	@RequestMapping(value="posInsertOk.do")
	public ModelAndView posInsert(PosVO vo){
		System.out.println(vo.getPos_totprice());
		int result = posDAO.posInsert(vo);
		ModelAndView mv = new ModelAndView();
		mv.addObject("result",result);
		mv.setViewName("redirect:posList.do");
		return mv; 
	}
	
	
	
	
}




































