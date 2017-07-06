package yogo.activity.controller;

import java.io.File;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import yogo.activity.dao.ActivityDAOImpl;
import yogo.activity.dto.ActivityVO;

@Controller
public class ActivityController {

	@Autowired
     ActivityDAOImpl activityDAO;
	 
	/* 리스트 보기  */
	@RequestMapping(value="/activityList.do")
	public ModelAndView list(){
		
		System.out.println("리스트를 불러줘");
		List<ActivityVO> list = activityDAO.list();
		ModelAndView mv = new ModelAndView();
		mv.addObject("listModel",list);
		mv.setViewName("/activity");
		return mv;
		
	}
	/*	글 쓰러 가기 */
	@RequestMapping(value="activityInsert.do")
	public ModelAndView insertForm(){
		System.out.println("글쓰러가니?");
		ModelAndView mv = new ModelAndView();
	 	 mv.setViewName("/activityInsert");
		return mv;
	}
	
	/* 글 쓰고 다시 리스트로 가기  */
	@RequestMapping(value="activityInsertOk.do")
	public ModelAndView insert( ActivityVO vo){
		MultipartFile mark_pictemp = vo.getMark_pictemp();
        if (mark_pictemp != null) {
            String mark_picreal = mark_pictemp.getOriginalFilename();
            mark_picreal = mark_picreal+"_"+System.currentTimeMillis();
            vo.setMark_picreal(mark_picreal);
            try {
            	
                // 1. FileOutputStream 사용
                // byte[] fileData = file.getBytes();
                // FileOutputStream output = new FileOutputStream("C:/images/" + fileName);
                // output.write(fileData);
            	
                // 2. File 사용
                File file = new File("C:\\Users\\SAMSUNG\\Documents\\workspace-sts-3.7.3.RELEASE\\Marketing\\WebContent\\img\\" + mark_picreal);
                mark_pictemp.transferTo(file);
            } catch (Exception e) {
                System.out.println("파일업로드 실패 : " + e.getMessage());
            } // try - catch
        } // if
        
	 	int result = activityDAO.activityInsert(vo);
	 	List<ActivityVO> list = activityDAO.list();
		ModelAndView mv = new ModelAndView();
		mv.addObject("result",result);
		mv.addObject("listModel",list);
		mv.setViewName("redirect:activityList.do");
		return mv;
		
	}
	
	/* 활동 글 수정하기 */
	@RequestMapping(value="activityUpdateOk.do")
	public ModelAndView updateForm( ActivityVO vo){
		MultipartFile mark_pictemp = vo.getMark_pictemp();
        if (mark_pictemp != null) {
            String mark_picreal = mark_pictemp.getOriginalFilename();
            mark_picreal = mark_picreal+"_"+System.currentTimeMillis();
            vo.setMark_picreal(mark_picreal);
            try {
            	
                // 1. FileOutputStream 사용
                // byte[] fileData = file.getBytes();
                // FileOutputStream output = new FileOutputStream("C:/images/" + fileName);
                // output.write(fileData);
            	
                // 2. File 사용
                File file = new File("C:\\Users\\SAMSUNG\\Documents\\workspace-sts-3.7.3.RELEASE\\Marketing\\WebContent\\img\\" + mark_picreal);
                mark_pictemp.transferTo(file);
            } catch (Exception e) {
                System.out.println("파일업로드 실패 : " + e.getMessage());
            } // try - catch
        } // if
		int result = activityDAO.activityUpdate(vo);
		ModelAndView mv = new ModelAndView();
		mv.addObject("result",result);
		mv.setViewName("redirect:activityList.do");
		return mv;
	}
	
	/* 글 삭제하기*/
	@RequestMapping(value="activityDelete.do")
	public ModelAndView delete( ActivityVO vo){
		int result = activityDAO.activityDelete(vo);
		List<ActivityVO> list = activityDAO.list();
		ModelAndView mv = new ModelAndView();
		mv.addObject("result",result);
		mv.addObject("listModel",list);
		mv.setViewName("redirect:activityList.do");
		return mv;
		
	}
	
	/* 팝업 닫기 */
	@RequestMapping(value="activityExit.do")
	public ModelAndView redirect(){
		
		List<ActivityVO> list = activityDAO.list();
		ModelAndView mv = new ModelAndView();
		mv.addObject("listModel",list);
		mv.setViewName("redirect:activityList.do");
		return mv;
		
	}
	
	
}






















