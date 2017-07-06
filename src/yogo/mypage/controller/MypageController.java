package yogo.mypage.controller;

import java.io.File;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import yogo.adver.dao.AdverDAO;
import yogo.adver.dao.AdverDAOImpl;
import yogo.adver.dto.AdverVO;
import yogo.catering.dto.CateringVO;
import yogo.member.dto.MemberVO;
import yogo.menu.dto.MenuVO;
import yogo.mypage.dao.MypageDAO;

@Controller
public class MypageController {
	
	@Autowired
	MypageDAO dao;

	// 케이터링 신청현황(일반사용자)
	@RequestMapping(value="/catAppStatus_user.do")
	public ModelAndView catAppStatus_user() {
		String mem_id = "sangjun0131@naver.com";
		List<CateringVO> list = new ArrayList<CateringVO>();
		list = dao.selectCate_user(mem_id);
		ModelAndView mv = new ModelAndView();
		mv.addObject("list", list);
		mv.setViewName("/mypage/catAppStatus_user");
		return mv;
	}
	
	// 케이터링 신청현황(사업자)
	@RequestMapping(value="/catAppStatus_ceo.do")
	public ModelAndView catAppStatus_ceo(){
		System.out.println("사업자 컨트롤 타니?");
		//찾을 아이디
		String truck_num = "truck003";
		List<CateringVO> list = new ArrayList<CateringVO>();
		list = dao.selectCate_ceo(truck_num);
		ModelAndView mv = new ModelAndView();
		//list를 cateModel에 담아서 넘겨줌
		mv.addObject("cateModel", list);
		//페이지 바로 이동
		mv.setViewName("/mypage/cateringstate_ceo");
		return mv;
	}
	
	
	
	//광고신청현황 list
	@RequestMapping(value="/adverAppStatus_adver.do")
	public ModelAndView adverAppStatusList_adver(HttpSession session) {
		String mem_id = (String) session.getAttribute("mem_id");
		List<AdverVO> list = new ArrayList<AdverVO>();
		list = dao.adverConfList_adver(mem_id);
		ModelAndView mv = new ModelAndView();
		mv.addObject("list", list);
		mv.setViewName("mypage/adverAppStatus_adver");
		return mv;
	}
	
	//광고거절 UPDATE
		@RequestMapping(value="advRefuseUpdate.do")
		public String advRefuseUpdate(AdverVO vo) {
			dao.advRefuseUpdate(vo);
			return "redirect:adverAppStatus_adver.do";
		}
		
		//광고승인 UPDATE
				@RequestMapping(value="advAckUpdate.do")
				public String advAckUpdate(AdverVO vo) {
					dao.advAckUpdate(vo);
					return "redirect:adverAppStatus_adver.do";
				}
		
	//광고승인확인List
		@RequestMapping(value="adverAppConfirm_adver.do")
		public ModelAndView adverAppConfirm_adver(HttpSession session) {
			String mem_id = (String) session.getAttribute("mem_id");
			List<AdverVO> list = new ArrayList<AdverVO>();
			list = dao.adverAppConfirm_adver(mem_id);
			ModelAndView mv = new ModelAndView();
			mv.addObject("list", list);
			mv.setViewName("/mypage/adverAppConfirm_adver");
			return mv;
		}
	// 사업자 메뉴 리스트
		@RequestMapping(value="menu_ceo.do")
		public ModelAndView menu_ceo(HttpSession session) {
			List<MenuVO> list = dao.selectMenu((String)session.getAttribute("mem_id"));
			ModelAndView mv = new ModelAndView();
			mv.addObject("truck_name", list.get(0).getTruck_name());
			mv.addObject("truck_addr", list.get(0).getTruck_addr());
			mv.addObject("truck_num", list.get(0).getTruck_num());
			mv.addObject("list", list);
			mv.setViewName("/mypage/menu_ceo");
			return mv;
		}
		
	// 사용자 정보 가지고 오기	
		@RequestMapping(value="selectMember.do")
		public ModelAndView selectMember(HttpSession session) {
			ModelAndView mv = new ModelAndView();
			String mem_id = (String)session.getAttribute("mem_id");
			MemberVO vo = dao.selectMember(mem_id);
			
			mv.addObject("vo", vo);
			mv.setViewName("/mypage/memberUpdate");
			return mv;
		}
		
	// 사용자 정보 업데이트
		@RequestMapping(value="memberUpdate.do")
		public String memberUpdate(MemberVO vo, HttpSession session) {
			vo.setMem_id((String)session.getAttribute("mem_id"));
			dao.memberUpdate(vo);
			return "redirect:selectMember.do";
		}
		
		// 메뉴 추가
				@RequestMapping(value="menuAdd.do")
				public String menuAdd(MenuVO vo) {
					MultipartFile menu_pictemp = vo.getMenu_pictemp();
			        if (menu_pictemp != null) {
			            String menu_picreal = menu_pictemp.getOriginalFilename();
			            menu_picreal = System.currentTimeMillis()+"_"+menu_picreal;
			            vo.setMenu_picreal("/YogoYogo/images/menu/"+menu_picreal);
			            try {
			            	
			                // 1. FileOutputStream 사용
			                // byte[] fileData = file.getBytes();
			                // FileOutputStream output = new FileOutputStream("C:/images/" + fileName);
			                // output.write(fileData);
			            	
			                // 2. File 사용
			                File file = new File("C:\\Users\\user\\git\\yogoyogo\\WebContent\\images\\menu\\" + menu_picreal);
			                menu_pictemp.transferTo(file);
			            } catch (Exception e) {
			                System.out.println("파일업로드 실패 : " + e.getMessage());
			            } // try - catch
			        } // if
					dao.menuAdd(vo);
					return "redirect:menu_ceo.do";
				}	
				
			// 메뉴 수정
				@RequestMapping(value="menuMod.do")
				public String menuMod(MenuVO vo) {
					MultipartFile menu_pictemp = vo.getMenu_pictemp();
					if(menu_pictemp.isEmpty()) {
						vo.setMenu_picreal(vo.getEx_pic());
					} else {
						String menu_picreal = menu_pictemp.getOriginalFilename();
			            menu_picreal = System.currentTimeMillis()+"_"+menu_picreal;
			            vo.setMenu_picreal("/YogoYogo/images/menu/"+menu_picreal);
			            try {
			            	            	
			                // 1. FileOutputStream 사용
			                // byte[] fileData = file.getBytes();
			                // FileOutputStream output = new FileOutputStream("C:/images/" + fileName);
			                // output.write(fileData);
			            	
			                // 2. File 사용
			                File file = new File("C:\\Users\\user\\git\\yogoyogo\\WebContent\\images\\menu\\" + menu_picreal);
			                menu_pictemp.transferTo(file);
			            } catch (Exception e) {
			                System.out.println("파일업로드 실패 : " + e.getMessage());
			            } // try - catch
					}
					
					dao.menuMod(vo);
					return "redirect:menu_ceo.do";
				}
		
	// 메뉴 삭제
		@RequestMapping(value="menuDel.do")
		public String menuDel(MenuVO vo) {
			dao.menuDel(vo);
			return "redirect:menu_ceo.do";
		}
		
	//(사업자)광고신청현황
		@RequestMapping(value="adverAppStatus_ceo.do")
		public ModelAndView adverAppStatus_ceo(HttpSession session){
			String mem_id = (String)session.getAttribute("mem_id");
			List<AdverVO> list = new ArrayList<AdverVO>();
			list = dao.adverAppStatus_ceo(mem_id);
			ModelAndView mv = new ModelAndView();
			mv.addObject("list", list);
			mv.setViewName("/mypage/adverAppStatus_ceo");
			return mv;
		}
}
