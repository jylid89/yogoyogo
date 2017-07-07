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
	 
	/* 由ъ뒪�듃 蹂닿린  */
	@RequestMapping(value="activityList.do")
	public ModelAndView list(){
		
		System.out.println("由ъ뒪�듃瑜� 遺덈윭以�");
		List<ActivityVO> list = activityDAO.list();
		ModelAndView mv = new ModelAndView();
		mv.addObject("listModel",list);
		mv.setViewName("/activity/activity");
		return mv;
		
	}
	/*	湲� �벐�윭 媛�湲� */
	@RequestMapping(value="activityInsert.do")
	public ModelAndView insertForm(){
		System.out.println("湲��벐�윭媛��땲?");
		ModelAndView mv = new ModelAndView();
	 	 mv.setViewName("/activity/activityinsert");
		return mv;
	}
	
	/* 湲� �벐怨� �떎�떆 由ъ뒪�듃濡� 媛�湲�  */
	@RequestMapping(value="activityInsertOk.do")
	public ModelAndView insert( ActivityVO vo){
		MultipartFile mark_pictemp = vo.getMark_pictemp();
        if (mark_pictemp != null) {
            String mark_picreal = mark_pictemp.getOriginalFilename();
            mark_picreal = mark_picreal+"_"+System.currentTimeMillis();
            vo.setMark_picreal(mark_picreal);
            try {
            	
                // 1. FileOutputStream �궗�슜
                // byte[] fileData = file.getBytes();
                // FileOutputStream output = new FileOutputStream("C:/images/" + fileName);
                // output.write(fileData);
            	
                // 2. File �궗�슜
                File file = new File("C:\\Users\\SAMSUNG\\Documents\\workspace-sts-3.7.3.RELEASE\\Marketing\\WebContent\\img\\" + mark_picreal);
                mark_pictemp.transferTo(file);
            } catch (Exception e) {
                System.out.println("�뙆�씪�뾽濡쒕뱶 �떎�뙣 : " + e.getMessage());
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
	
	/* �솢�룞 湲� �닔�젙�븯湲� */
	@RequestMapping(value="activityUpdateOk.do")
	public ModelAndView updateForm( ActivityVO vo){
		MultipartFile mark_pictemp = vo.getMark_pictemp();
        if (mark_pictemp != null) {
            String mark_picreal = mark_pictemp.getOriginalFilename();
            mark_picreal = mark_picreal+"_"+System.currentTimeMillis();
            vo.setMark_picreal(mark_picreal);
            try {
            	
                // 1. FileOutputStream �궗�슜
                // byte[] fileData = file.getBytes();
                // FileOutputStream output = new FileOutputStream("C:/images/" + fileName);
                // output.write(fileData);
            	
                // 2. File �궗�슜
                File file = new File("C:\\Users\\SAMSUNG\\Documents\\workspace-sts-3.7.3.RELEASE\\Marketing\\WebContent\\img\\" + mark_picreal);
                mark_pictemp.transferTo(file);
            } catch (Exception e) {
                System.out.println("�뙆�씪�뾽濡쒕뱶 �떎�뙣 : " + e.getMessage());
            } // try - catch
        } // if
		int result = activityDAO.activityUpdate(vo);
		ModelAndView mv = new ModelAndView();
		mv.addObject("result",result);
		mv.setViewName("redirect:activityList.do");
		return mv;
	}
	
	/* 湲� �궘�젣�븯湲�*/
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
	
	/* �뙘�뾽 �떕湲� */
	@RequestMapping(value="activityExit.do")
	public ModelAndView redirect(){
		
		List<ActivityVO> list = activityDAO.list();
		ModelAndView mv = new ModelAndView();
		mv.addObject("listModel",list);
		mv.setViewName("redirect:activityList.do");
		return mv;
		
	}
	
	
}






















