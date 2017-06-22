package yogo.foodtruck.dao;

import java.util.List;

import yogo.foodtruck.dto.FoodtruckVO;

public interface FoodtruckDAO {
	public List<FoodtruckVO> list();
	
	public List<FoodtruckVO> search(String category, String []value);
}
