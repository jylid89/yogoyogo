package yogo.festival.controller;

import java.io.File;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import yogo.festival.dao.FestivalDAOImpl;
import yogo.festival.dto.FestivalVO;

@Controller
public class FestivalController {

	@Autowired
	FestivalDAOImpl festivalDAO;
	
	 //행사 리스트 보기
	@RequestMapping(value="festivalList.do")
	public ModelAndView list(HttpSession session){
		String mem_state = (String)session.getAttribute("mem_state");
		List<FestivalVO> list = festivalDAO.list();
		ModelAndView mv = new ModelAndView();
		mv.addObject("listModel",list);
		mv.addObject("mem_state", mem_state);
		mv.setViewName("/festival/festivalList");
		return mv;
		
	}
	
	 //행사 상세보기
	@RequestMapping(value="festivalView.do")
	public ModelAndView view( FestivalVO vo ,HttpSession session){
		String mem_state = (String)session.getAttribute("mem_state");
		String mem_id = (String)session.getAttribute("mem_id");
		
		if(mem_state == null){
			mem_state="비회원";
		}
		
		if(mem_state.equals("사업자")){
			String truck_num = festivalDAO.selectTrucknum(mem_id);
			vo.setTruck_num(truck_num);
		}else{
			
		}
		
		FestivalVO view = festivalDAO.festivalView(vo);
		ModelAndView mv = new ModelAndView();
		mv.addObject("viewModel",view);
		mv.addObject("vo", vo);
		mv.setViewName("/festival/festivalDetail");
		return mv;
	}
	
	 //행사 글 쓰러가기
	@RequestMapping(value="festivalInsert.do")
	public ModelAndView insertform(){
		ModelAndView mv = new ModelAndView();
		mv.setViewName("/festival/festivalInsert");
		return mv;
	}
	
	 //행사 글 추가
	@RequestMapping(value="festivalInsertOk.do")
	public ModelAndView insert( FestivalVO vo, HttpSession session){
		vo.setMem_id((String)session.getAttribute("mem_id"));
		MultipartFile event_pictemp = vo.getEvent_pictemp();
        if (event_pictemp != null) {
            String event_picreal = event_pictemp.getOriginalFilename();
            event_picreal =System.currentTimeMillis() +"_"+  event_picreal;
            vo.setEvent_picreal("/YogoYogo/images/festival/"+event_picreal);
            try {
            	
                // 2. File 사용
                File file = new File("C:\\Users\\yeeun\\git\\yogoyogo\\WebContent\\images\\festival\\" + event_picreal);
                event_pictemp.transferTo(file);
            } catch (Exception e) {
                System.out.println("파일업로드 실패 : " + e.getMessage());
            } // try - catch
        } // if
		
		int result = festivalDAO.festivalInsert(vo);
		List<FestivalVO> list = festivalDAO.list();
		ModelAndView mv = new ModelAndView();
		mv.addObject("listModel",list);
		mv.addObject("result",result);
		mv.setViewName("redirect:festivalList.do");
		return mv;
	}
	
	//행사 글 수정하러가기
	@RequestMapping(value="festivalUpdate.do")
	public ModelAndView updateForm(FestivalVO vo){
		
		FestivalVO list = festivalDAO.festivalView(vo);
		ModelAndView mv = new ModelAndView();
		mv.addObject("listModel",list);
		mv.setViewName("/festival/festivalUpdate");
		return mv;
	}
	
	//행사 글 수정하기
	@RequestMapping(value="festivalUpdateOk.do")
	public ModelAndView update(FestivalVO vo,HttpSession session){
		vo.setMem_id((String)session.getAttribute("mem_id"));
		MultipartFile event_pictemp = vo.getEvent_pictemp();
        if (event_pictemp != null) {
        	
            String event_picreal = event_pictemp.getOriginalFilename();
            event_picreal =System.currentTimeMillis() +"_"+  event_picreal;
            vo.setEvent_picreal("/YogoYogo/images/festival/"+event_picreal);
            try {
                // 2. File 사용
            	File file = new File("C:\\Users\\yeeun\\git\\yogoyogo\\WebContent\\images\\festival\\"  + event_picreal);
                event_pictemp.transferTo(file);
            } catch (Exception e) {
                System.out.println("파일업로드 실패 : " + e.getMessage());
            } // try - catch
        } // if
        
        if(event_pictemp.isEmpty()) {
        	 
              String event_picreal = vo.getExFile();
              vo.setEvent_picreal(event_picreal);
              
        }
        int result = festivalDAO.festivalUpdate(vo);
        List<FestivalVO> list = festivalDAO.list();
		ModelAndView mv = new ModelAndView();
		mv.addObject("listModel",list);
		mv.addObject("result",result);
		mv.setViewName("redirect:festivalList.do");
		return mv;
	}
	
	
	//행사 글 삭제하기
	@RequestMapping(value="festivalDelete.do")
	public ModelAndView delete(FestivalVO vo){
		
		int result = festivalDAO.festivalDelete(vo);
		List<FestivalVO> list = festivalDAO.list();
		ModelAndView mv = new ModelAndView();
		mv.addObject("result",result);
		mv.addObject("listModel",list);
		mv.setViewName("redirect:festivalList.do");
		return mv;
		
	}
	
	//행사 신청 추가(Insert)
	@RequestMapping(value="eventConfirmInsert.do")
	public ModelAndView eventConfirmInsert(FestivalVO vo) {
		
		festivalDAO.eventConfirmInsert(vo);
		ModelAndView mv = new ModelAndView();
		mv.addObject("event_num" ,vo.getEvent_num());
		mv.setViewName("redirect:festivalView.do");
		return mv;
		
	}
		
	//ajax -> 신청하기/신청취소 버튼제어
	@RequestMapping(value="eveconfirmCheck.do")
	@ResponseBody
	public String confirmCheck(String event_num, String truck_num){
		
		String result = festivalDAO.confirmCheck(event_num, truck_num);
		return result;
	}
		
	//ajax -> 승인 전인지 아닌지 제어
	@RequestMapping(value="eveconfirmCancel.do")
	@ResponseBody
	public String confirmCancel(String event_num, String truck_num){
		String result = festivalDAO.confirmCancel(event_num, truck_num);
		return result;
	}
		
	//승인취소(delete)
	@RequestMapping(value="eveConfirmDelete.do")
	public ModelAndView eveConfirmDelete(String event_num, String truck_num,FestivalVO vo) {
		festivalDAO.eventConfirmDelete(event_num, truck_num);
		ModelAndView mv = new ModelAndView();
		mv.addObject("event_num" ,event_num);
		mv.setViewName("redirect:festivalView.do");
		return mv;
	}
	
	
}









































