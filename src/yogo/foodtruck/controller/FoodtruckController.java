package yogo.foodtruck.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import yogo.foodtruck.dao.FoodtruckDAO;
import yogo.foodtruck.dto.FoodtruckVO;

@Controller
public class FoodtruckController {
	
	@Autowired
	FoodtruckDAO foodtruckDao;
	
	@RequestMapping(value="/foodtruckList.do")
	public ModelAndView foodtruckList() {
		ModelAndView mv = new ModelAndView();
		
		List<FoodtruckVO> list = new ArrayList<FoodtruckVO>();
		
		list = foodtruckDao.list();
		mv.addObject("list", list);
		mv.setViewName("/foodtruck/foodtrucklist");
		return mv;
	}
	
	@RequestMapping(value="/foodtruckList_search.do")
	public ModelAndView trucklist_search(String category, String search_name, String eat, String drink, String enjoy, String addr) {
		String cate = "";
		String [] values = new String[4];
		List<FoodtruckVO> list = new ArrayList<FoodtruckVO>();
		
		if(category == "푸드트럭명") {
			cate = "TRUCK_NAME";
			values[0] = search_name;
		} else if(category == "메뉴") {
			cate = "MENU_NAME";
			if(eat.equals("on")) {
				values[1] = "먹을거리";
			} else if(drink.equals("on")) {
				values[2] = "마실거리";
			} else if(enjoy.equals("on")) {
				values[3] = "즐길거리";
			}
		} else if(category == "위치") {
			values[0] = addr;
		}
		
		ModelAndView mv = new ModelAndView();
		list = foodtruckDao.search(cate, values);
		mv.addObject("list", list);
		mv.setViewName("/foodtruck/foodtrucklist");
		return mv;
	}
}
