package yogo.freeboard.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import javassist.tools.reflect.Sample;
import yogo.board.dto.BoardVO;
import yogo.freeboard.dao.FreeBoardDAOImpl;

@Controller
public class FreeBoardController {

	@Autowired
	FreeBoardDAOImpl freeDAO;
	
	//자유게시판 글쓰기 버튼 클릭시
	@RequestMapping("freeboardInsert.do")
	public String freeboard(String url){
		
		return "/freeboard/freeboardInsert";
	}
	
	//자유게시판 리스트(SELECT)
	@RequestMapping(value="freeboard.do")
	public ModelAndView freeList(){
		List<BoardVO> freeVO = freeDAO.FreeBoardList();
		ModelAndView mv = new ModelAndView();
		mv.setViewName("/freeboard/freeboard");
		mv.addObject("freeVO",freeVO);
		
		return mv;
	}
	
	//자유게시판 상세 뷰
	@RequestMapping(value="freeboardDetail.do")
	public ModelAndView freeDetail(BoardVO vo){
		BoardVO freeVO = freeDAO.freeboardDetail(vo);		
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("/freeboard/freeboardDetail");
		mv.addObject("freeVO", freeVO);
		
		return mv;
	}
	
	//자유게시판 인서트 (INSERT)
	@RequestMapping(value="freeInsert.do")
	public String freeInsert(BoardVO vo){
		freeDAO.FreeBoardInsert(vo);
		
		return "redirect:freeboard.do";
	}
	
	//자유게시판 삭제(DELETE)
	@RequestMapping(value="freeDelete.do")
	public ModelAndView freeDelete(BoardVO vo){
		List<BoardVO> freeVO = new ArrayList<BoardVO>();
		int result = freeDAO.freeBoardDelete(vo);
		
		ModelAndView mv = new ModelAndView();
		mv.addObject("freeVO", freeVO);
		mv.addObject("result",result);
		mv.setViewName("redirect:freeboard.do");
		
		return mv;
	}
	
	//자유게시판 수정(UPDATE)
	public void freeModify(BoardVO vo){
		
	}
//	@RequestMapping(value="/list", method=RequestMethod.GET)
//	public ModelAndView list(Sample sample) throws Exception{
//		try {
//			pagingVO paging = new pagingVO();
//			paging.setPageNo(1);
//			paging.setPageSize(10);
//			paging.setTotalCount(totalCount);
//			
//		} catch (Exception e) {
//			System.out.println("페이징 실패 : " + e.getMessage());
//		}
//	}
	
}