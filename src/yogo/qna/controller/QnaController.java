package yogo.qna.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import yogo.board.dto.BoardVO;
import yogo.qna.dao.QnaDAO;

@Controller
@RequestMapping(value="/qna")
public class QnaController {
	
	@Autowired
	QnaDAO qnaDAO;
	
	//화면만 연결하는 메소드
//		@RequestMapping("/{url}.do")
//		public String member(@PathVariable String url){
//			System.out.println("요청받았음");
//			
//			return "/qna/"+url;
//		}
		//write.do 생성
		@RequestMapping("qnaWrite_ok.do")
		public ModelAndView qnaIsnsert(BoardVO vo){
			String message = "글작성 실패";
			int result = qnaDAO.qnaInsert(vo);
			if(result > 0) message = "글작성 성공";
			ModelAndView mv = new ModelAndView();
			mv.addObject("message",message);
			mv.addObject("result",result);
			mv.setViewName("/qna/qnaList");
			return mv;
		}
		
		//write 생성
		@RequestMapping("qnaForm.do") 
		public String qnaWrite(){
			return "/qna/qnaInsert";
		}
		
		
		//list.do 생성
		@RequestMapping("qnaList.do")
		public ModelAndView qnaSelect(){
			List<BoardVO> list = qnaDAO.qnaList();
			System.out.println("케이터링 컨트롤 접속");
			ModelAndView mv = new ModelAndView();
			mv.addObject("listModel",list);
			mv.setViewName("/qna/qnaList");
			return mv;
		}
		
		//catering 상세정보
		@RequestMapping("qnadetail.do")
		public ModelAndView qnaView(BoardVO vo){
//			cateringDAO.increaseCount(vo);
			BoardVO boardVO = qnaDAO.qnaView(vo);
			ModelAndView mv = new ModelAndView();
			mv.addObject("model",boardVO);
			mv.setViewName("/qna/qnaDetail");
			return mv;
		}
}
