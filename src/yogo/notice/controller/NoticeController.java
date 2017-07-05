package yogo.notice.controller;

import java.io.File;
import java.io.IOException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import yogo.board.dto.BoardVO;
import yogo.notice.dao.NoticeDAOImpl;

@Controller
public class NoticeController {

	@Autowired
	NoticeDAOImpl noticeDAO;
	
	//공지사항 이벤트 리스트 보기
	@RequestMapping(value="noticeList.do")
	public ModelAndView list(){
		System.out.println("공지사항 컨트롤타나요");
		List<BoardVO> list = noticeDAO.list();
		ModelAndView mv = new ModelAndView();
		mv.addObject("noticeList",list);
		mv.setViewName("/notice/notice");
		return mv;
	}
	
	//공지사항 이벤트 글 쓰러가기
	@RequestMapping(value="noticeInsert.do")
	public ModelAndView insertForm(){
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("/notice/noticeInsert");
		return mv;
		
	}
	
	//공지사항 이벤트 글 쓰고나서 리스트로 이동
	@RequestMapping(value="noticeInsertOk.do")
	public ModelAndView insert(BoardVO vo){
		MultipartFile board_pictemp = vo.getBoard_pictemp();
        if (board_pictemp != null) {
            String board_picreal = board_pictemp.getOriginalFilename();
            board_picreal = board_picreal+"_"+System.currentTimeMillis();
            vo.setBoard_picreal(board_picreal);
            try {
                // 1. FileOutputStream 사용
                // byte[] fileData = file.getBytes();
                // FileOutputStream output = new FileOutputStream("C:/images/" + fileName);
                // output.write(fileData);
            	
                // 2. File 사용
                File file = new File("C:\\Users\\SAMSUNG\\Documents\\workspace-sts-3.7.3.RELEASE\\Marketing\\WebContent\\img\\" + board_picreal);
                board_pictemp.transferTo(file);
            } catch (Exception e) {
                System.out.println("파일업로드 실패 : " + e.getMessage());
            } // try - catch
        } // if
		int result = noticeDAO.noticeInsert(vo);
		List<BoardVO> list = noticeDAO.list();
		ModelAndView mv = new ModelAndView();
		mv.addObject("noticeList",list);
		mv.addObject("noticeInsert",result);
		mv.setViewName("redirect:noticeList.do");
		return mv;
		
	}
	
	//공지사항 이벤트 상세보기
	@RequestMapping(value="noticeView.do")
	public ModelAndView view(BoardVO vo){
		
		BoardVO view = noticeDAO.noticeView(vo);
		ModelAndView mv = new ModelAndView();
		mv.addObject("viewModel",view);
		mv.setViewName("/notice/noticeDetail");
		return mv;
		
	}
	
	//공지사항 이벤트 수정하러 가기
	@RequestMapping(value="noticeUpdate.do")
	public ModelAndView updateForm(BoardVO vo){
		
		BoardVO list = noticeDAO.noticeView(vo);
		ModelAndView mv = new ModelAndView();
		mv.addObject("noticeList",list);
		mv.setViewName("/notice/noticeUpdate");
		return mv;
		
	}
	
	//공지사항 이벤트 수정하기
	@RequestMapping(value="noticeUpdateOk.do")
	public ModelAndView update(BoardVO vo){
		MultipartFile board_pictemp = vo.getBoard_pictemp();
        if (board_pictemp != null) {
            String board_picreal = board_pictemp.getOriginalFilename();
            board_picreal = board_picreal+"_"+System.currentTimeMillis();
            vo.setBoard_picreal(board_picreal);
            try {
                // 1. FileOutputStream 사용
                // byte[] fileData = file.getBytes();
                // FileOutputStream output = new FileOutputStream("C:/images/" + fileName);
                // output.write(fileData);
            	
                // 2. File 사용
                File file = new File("C:\\Users\\SAMSUNG\\Documents\\workspace-sts-3.7.3.RELEASE\\Marketing\\WebContent\\img\\" + board_picreal);
                board_pictemp.transferTo(file);
            } catch (Exception e) {
                System.out.println("파일업로드 실패 : " + e.getMessage());
            } // try - catch
        } // if	
		int update = noticeDAO.noticeUpdate(vo);
		List<BoardVO> list = noticeDAO.list();
		ModelAndView mv = new ModelAndView();
		mv.addObject("noticeList",list);
		mv.addObject("noticeUpdate",update);	
		mv.setViewName("redirect:noticeList.do");
		return mv;
		
	}
	
	
	
	//공지사항 삭제하기
	@RequestMapping(value="noticeDelete.do")
	public ModelAndView delete(BoardVO vo){
		
		int delete = noticeDAO.noticeDelete(vo);
		List<BoardVO> list = noticeDAO.list();
		ModelAndView mv = new ModelAndView();
		mv.addObject("noticeList",list);
		mv.addObject("noticeDelete",delete);	
		mv.setViewName("redirect:noticeList.do");
		return mv;
	}
		
	
//	//파일업로드
//	@RequestMapping(value = "noticeInsertOk.do", method = RequestMethod.GET)
//    public ModelAndView fileForm() {
//        ModelAndView mv = new ModelAndView();
//        mv.setViewName("redirect:noticeList.do"); 
//         return mv;
//    }
     
	//조회수
	@RequestMapping(value="noticeShow.do")
	public ModelAndView increase( BoardVO vo ){
		
		int inc = noticeDAO.noticeIncrese(vo);
		ModelAndView mv = new ModelAndView();
		mv.addObject("listModel",inc);
		mv.setViewName("/notice/noticeDetail");
		return mv;
	}
	
	




}
























































