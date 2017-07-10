package yogo.festival.controller;

import java.io.File;
import java.util.List;

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
	public ModelAndView list(){
		System.out.println("행사를 보여줘");
		List<FestivalVO> list = festivalDAO.list();
		ModelAndView mv = new ModelAndView();
		mv.addObject("listModel",list);
		mv.setViewName("/festival/festivalList");
		return mv;
		
	}
	
	 //행사 상세보기
	@RequestMapping(value="festivalView.do")
	public ModelAndView view( FestivalVO vo ){
		System.out.println("컨트롤은타냐?");
		FestivalVO view = festivalDAO.festivalView(vo);
		ModelAndView mv = new ModelAndView();
		mv.addObject("viewModel",view);
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
	public ModelAndView insert( FestivalVO vo){
		
//		if(vo.getExFile().equals(vo.getEvent_pictemp())){
//			
//		}
		MultipartFile event_pictemp = vo.getEvent_pictemp();
        if (event_pictemp != null) {
            String event_picreal = event_pictemp.getOriginalFilename();
            event_picreal = event_picreal+"_"+System.currentTimeMillis();
            vo.setEvent_picreal(event_picreal);
            try {
            	
                // 1. FileOutputStream 사용
                // byte[] fileData = file.getBytes();
                // FileOutputStream output = new FileOutputStream("C:/images/" + fileName);
                // output.write(fileData);
            	
                // 2. File 사용
                File file = new File("C:\\Users\\SAMSUNG\\Documents\\workspace-sts-3.7.3.RELEASE\\Marketing\\WebContent\\img\\" + event_picreal);
                event_pictemp.transferTo(file);
            } catch (Exception e) {
                System.out.println("파일업로드 실패 : " + e.getMessage());
            } // try - catch
        } // if
		
		System.out.println("페스티벌인서트 컨트롤");
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
	public ModelAndView update(FestivalVO vo){
		
		
		
		MultipartFile event_pictemp = vo.getEvent_pictemp();
		System.out.println("event>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>" + event_pictemp.isEmpty());
        if (event_pictemp != null) {
        	
            String event_picreal = event_pictemp.getOriginalFilename();
            event_picreal = event_picreal+"_"+System.currentTimeMillis();
            vo.setEvent_picreal(event_picreal);
            try {
            	
                // 1. FileOutputStream 사용
                // byte[] fileData = file.getBytes();
                // FileOutputStream output = new FileOutputStream("C:/images/" + fileName);
                // output.write(fileData);
            	
                // 2. File 사용
                File file = new File("C:\\Users\\SAMSUNG\\Documents\\workspace-sts-3.7.3.RELEASE\\Marketing\\WebContent\\img\\" + event_picreal);
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
	public ModelAndView eventConfirmInsert(FestivalVO festivalVo) {
		
		festivalDAO.eventConfirmInsert(festivalVo);
		ModelAndView mv = new ModelAndView();
		mv.addObject("adv_num" ,festivalVo.getEvent_num());
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
	public ModelAndView advConfirmDelete(String event_num, String truck_num) {
		festivalDAO.eventConfirmDelete(event_num, truck_num);
		ModelAndView mv = new ModelAndView();
		mv.addObject("event_num" ,event_num);
		mv.setViewName("redirect:festivalview.do");
		return mv;
	}
	
	
	
	
	
	
	
	
	
	
	
	
}









































