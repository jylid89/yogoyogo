package yogo.activity.controller;

import java.io.File;
import java.util.List;

import javax.servlet.http.HttpSession;

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

	// 타임라인 리스트
	@RequestMapping(value="activityList.do")
	public ModelAndView list(HttpSession session){
		String truck_num = (String)session.getAttribute("truck_num");
		List<ActivityVO> list = activityDAO.list(truck_num);
		ModelAndView mv = new ModelAndView();
		mv.addObject("activityList", list);
		mv.setViewName("/activity/activity");
		return mv;
	}
	
	// 타임라인 글쓰기폼 이동
	@RequestMapping(value="activityInsert.do")
	public ModelAndView insertForm(){
		ModelAndView mv = new ModelAndView();
	 	 mv.setViewName("/activity/activityinsert");
		return mv;
	}
	
	// 타임라인 글쓰기
	@RequestMapping(value="activityInsertOk.do")
	public String insert( ActivityVO vo){
		MultipartFile mark_pictemp = vo.getMark_pictemp();
        if (mark_pictemp != null) {
            String mark_picreal = mark_pictemp.getOriginalFilename();
            mark_picreal = mark_picreal+"_"+System.currentTimeMillis();
            vo.setMark_picreal(mark_picreal);
            try {
                File file = new File("C:\\Users\\SAMSUNG\\Documents\\workspace-sts-3.7.3.RELEASE\\Marketing\\WebContent\\img\\" + mark_picreal);
                mark_pictemp.transferTo(file);
            } catch (Exception e) {
                System.out.println("타임라인 글쓰기 실패 : " + e.getMessage());
            } // try - catch
        } // if
        
	 	activityDAO.activityInsert(vo);
		return "redirect:activityList.do";		
	}

	// 타임라인 글수정
	@RequestMapping(value="activityUpdateOk.do")
	public ModelAndView updateForm( ActivityVO vo){
		MultipartFile mark_pictemp = vo.getMark_pictemp();
        if (mark_pictemp != null) {
            String mark_picreal = mark_pictemp.getOriginalFilename();
            mark_picreal = mark_picreal+"_"+System.currentTimeMillis();
            vo.setMark_picreal(mark_picreal);
            try {
                File file = new File("C:\\Users\\SAMSUNG\\Documents\\workspace-sts-3.7.3.RELEASE\\Marketing\\WebContent\\img\\" + mark_picreal);
                mark_pictemp.transferTo(file);
            } catch (Exception e) {
                System.out.println("타임라인 글 수정 실패 : " + e.getMessage());
            } // try - catch
        } // if
		int result = activityDAO.activityUpdate(vo);
		ModelAndView mv = new ModelAndView();
		mv.addObject("result",result);
		mv.setViewName("redirect:activityList.do");
		return mv;
	}
	
	// 타임라인 글삭제
	@RequestMapping(value="activityDelete.do")
	public String delete( ActivityVO vo){
		activityDAO.activityDelete(vo);
		return "redirect:activityList.do";
	}	
}






















