package yogo.pos.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import yogo.pos.dto.PosVO;
import yogo.pos.dao.PosDAOImpl;

@Controller
public class PosController {

	@Autowired
	PosDAOImpl posDAO;
	
	//메뉴 리스트 보기
	@RequestMapping(value="posList.do")
	public ModelAndView posList(){
		
		List<PosVO> list = posDAO.posList();
		ModelAndView mv = new ModelAndView();
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




































