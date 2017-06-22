package yogo.foodtruck.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import yogo.foodtruck.dto.FoodtruckVO;

@Repository
public class FoodtruckDAOImpl implements FoodtruckDAO {

	@Autowired
	SqlSessionTemplate ss;
	
	@Override
	public List<FoodtruckVO> list() {
		List<FoodtruckVO> list = new ArrayList<FoodtruckVO>();
		try{
			list = (ArrayList)ss.selectList("foodtruck.select");
		} catch(Exception e) {
			System.out.println("foodtruck select 실패 "+e.getMessage());
		}
		return list;
	}

	@Override
	public List<FoodtruckVO> search(String category, String[] values) {
		List<FoodtruckVO> list = new ArrayList<FoodtruckVO>();
		HashMap map = new HashMap();
		map.put("category", category);
		
		if(values[0] != null) map.put("value", values[0]);
		if(values[1] != null) map.put("eat", values[1]);
		if(values[2] != null) map.put("drink", values[2]);
		if(values[3] != null) map.put("enjoy", values[3]);
		
		try {
			if(category.equals("MENU_CATE")) {
				list = (ArrayList)ss.selectList("foodtruck.searchByMenu", map);
			} else {
				list = (ArrayList)ss.selectList("foodtruck.search", map);
			}
		} catch(Exception e) {
			System.out.println("foodtruck search 실패 "+e.getMessage());
		}
		return list;
	}

}
