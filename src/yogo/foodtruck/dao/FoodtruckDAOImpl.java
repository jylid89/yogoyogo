package yogo.foodtruck.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import yogo.foodtruck.dto.FoodtruckVO;
import yogo.menu.dto.MenuVO;

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
	public List<FoodtruckVO> search(String category, String[] value) {
		System.out.println(category+"/"+value[0]);
		List<FoodtruckVO> list = new ArrayList<FoodtruckVO>();
		HashMap map = new HashMap();
		map.put("category", category);
		map.put("value", value[0]);
		map.put("eat", value[1]);
		map.put("drink", value[2]);
		map.put("enjoy", value[3]);
		try {
			list = (ArrayList)ss.selectList("foodtruck.search", map);
		} catch(Exception e) {
			System.out.println("foodtruck search 실패 "+e.getMessage());
		}
		return list;
	}

	@Override
	public FoodtruckVO foodtruckView(FoodtruckVO vo) {
		FoodtruckVO truckVO = null;
		try{
			truckVO = ss.selectOne("foodtruck.truckdetail", vo);
			System.out.println("케이터링 view dao 접속");
		}catch( Exception ex )
		{
			System.out.println("케이터링 실패 : " + ex.getMessage());
		}
		
		return truckVO;
	}

	@Override
	public List<MenuVO> menuView(FoodtruckVO vo) {
		List<MenuVO> list = null;
		try{
			list = ss.selectList("foodtruck.menudetail", vo);
			System.out.println("케이터링 view dao 접속");
		}catch( Exception ex )
		{
			System.out.println("케이터링 실패 : " + ex.getMessage());
		}
		
		return list;
	}
}
