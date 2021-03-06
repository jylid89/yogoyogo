package yogo.foodtruck.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.StringTokenizer;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import yogo.activity.dao.ActivityDAO;
import yogo.activity.dto.ActivityVO;
import yogo.foodtruck.dao.FoodtruckDAO;
import yogo.foodtruck.dto.FoodtruckVO;
import yogo.menu.dto.MenuVO;
import yogo.review.dao.ReviewDAO;
import yogo.review.dto.ReviewVO;

@Controller
public class FoodtruckController {
	
	@Autowired
	FoodtruckDAO foodtruckDao;
	
	@Autowired
	ActivityDAO activityDao;
	
	@Autowired
	ReviewDAO reviewDao;
	
//	리스트 부분
	@RequestMapping(value="foodtruckList.do")
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
			cate = "MENU_CATE";
			if(eat != null)	if(eat.equals("on")) values[1] = "먹을거리";
			if(drink != null) if(drink.equals("on")) values[2] = "마실거리";
			if(enjoy != null) if(enjoy.equals("on")) values[3] = "즐길거리";
		} else if(category.equals("위치")) {
			cate = "TRUCK_ADDR";
			
			StringTokenizer st = new StringTokenizer(addr);
			String [] temp = new String[4];
			int i = 0;
			while(st.hasMoreTokens()) {
				temp[i] = st.nextToken();
				i = i+1;
			}
			if(temp[1] == null) {
				values[0] = addr;
			} else {
				values[0] = temp[1];
			}
		}
		
		ModelAndView mv = new ModelAndView();
		list = foodtruckDao.search(cate, values);
		mv.addObject("list", list);
		mv.setViewName("/foodtruck/foodtruckList");
		return mv;
	}
	
	//foodtruck 상세정보
	@RequestMapping(value="foodtruckDetail.do")
	public ModelAndView foodtruckView(FoodtruckVO vo){
		System.out.println("디테일 컨트롤");
		FoodtruckVO foodtruck = foodtruckDao.foodtruckView(vo);
		
		List<MenuVO> menu_eat = foodtruckDao.menuViewEat(vo);
		List<MenuVO> menu_drink = foodtruckDao.menuViewDrink(vo);
		List<MenuVO> menu_enjoy = foodtruckDao.menuViewEnjoy(vo);
		
		List<ActivityVO> activityList = activityDao.list(vo.getTruck_num());
		List<ReviewVO> reviewList = reviewDao.reviewList(vo.getTruck_num());
		
		ModelAndView mv = new ModelAndView();
		
		mv.addObject("menu_eat", menu_eat);
		mv.addObject("menu_drink", menu_drink);
		mv.addObject("menu_enjoy", menu_enjoy);
		mv.addObject("activityList", activityList);
		mv.addObject("reviewList", reviewList);
		mv.addObject("foodtruck", foodtruck);
		mv.setViewName("/foodtruck/foodtruckDetail");
		return mv;
	}
}
