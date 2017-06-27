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
//	리스트
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
//	검색 부분
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
//	디테일 부분 중 푸드트럭 정보
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
//	디테일 부분 중 메뉴 정보
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
