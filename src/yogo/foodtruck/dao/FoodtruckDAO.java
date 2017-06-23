package yogo.foodtruck.dao;

import java.util.List;

import yogo.foodtruck.dto.FoodtruckVO;
import yogo.menu.dto.MenuVO;

public interface FoodtruckDAO {
	public List<FoodtruckVO> list();
	
	public List<FoodtruckVO> search(String category, String []value);
	
	public FoodtruckVO foodtruckView(FoodtruckVO vo);
	
	public List<MenuVO> menuView(FoodtruckVO vo);
}
