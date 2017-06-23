package yogo.foodtruck.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.StringTokenizer;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import yogo.foodtruck.dao.FoodtruckDAO;
import yogo.foodtruck.dto.FoodtruckVO;
import yogo.menu.dto.MenuVO;

@Controller
public class FoodtruckController {
	
	@Autowired
	FoodtruckDAO foodtruckDao;
	
	//화면만 연결하는 메소드
			@RequestMapping("/{url}.do")
			public String member(@PathVariable String url){
				System.out.println("요청받았음");
				
				return "/foodtruck/"+url;
			}
//	리스트 부분
	@RequestMapping(value="/foodtruckList.do")
	public ModelAndView foodtruckList() {
		ModelAndView mv = new ModelAndView();
		
		List<FoodtruckVO> list = new ArrayList<FoodtruckVO>();
		
		list = foodtruckDao.list();
		mv.addObject("list", list);
		mv.setViewName("/foodtruck/foodtruckList");
		return mv;
	}
//	검색부분
	@RequestMapping(value="/foodtruckList_search.do")
	public ModelAndView trucklist_search(String category, String search_name, String eat, String drink, String enjoy, String addr) {
		String cate = "";
		String [] values = new String[4];
		List<FoodtruckVO> list = new ArrayList<FoodtruckVO>();
		
		if(category.equals("푸드트럭명")) {
			cate = "TRUCK_NAME";
			values[0] = search_name;
		} else if(category.equals("메뉴")) {
			cate = "MENU_NAME";
			if(eat.equals("on")) {
				values[1] = "먹을거리";
			} else if(drink.equals("on")) {
				values[2] = "마실거리";
			} else if(enjoy.equals("on")) {
				values[3] = "즐길거리";
			}
		} else if(category.equals("위치")) {
			cate = "TRUCK_ADDR";
			
			StringTokenizer st = new StringTokenizer(addr);
			String [] temp = new String[4];
			int i = 0;
			while(st.hasMoreTokens()) {
				temp[i] = st.nextToken();
				i = i+1;
			}
			values[0] = temp[1];
		}
		
		ModelAndView mv = new ModelAndView();
		list = foodtruckDao.search(cate, values);
		mv.addObject("list", list);
		mv.setViewName("/foodtruck/foodtruckList");
		return mv;
	}
	
	//foodtruck 상세정보
	@RequestMapping(value="/foodtruckDetail.do")
	public ModelAndView foodtruckView(FoodtruckVO vo){
		System.out.println("디테일 컨트롤");
		FoodtruckVO foodtruck = foodtruckDao.foodtruckView(vo);
		List<MenuVO> menulist = foodtruckDao.menuView(vo);
		ModelAndView mv = new ModelAndView();
		mv.addObject("foodtruck",foodtruck);
		mv.addObject("menuList",menulist);
		mv.setViewName("/foodtruck/foodtruckDetail");
		return mv;
	}
}
