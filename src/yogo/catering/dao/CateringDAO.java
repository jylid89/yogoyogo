package yogo.catering.dao;

import java.util.List;

import yogo.catering.dto.CateringVO;
import yogo.foodtruck.dto.FoodtruckVO;
import yogo.menu.dto.MenuVO;


public interface CateringDAO {
		/**
		 * 게시물 목록 가져오기
		 */
		List<FoodtruckVO> list();
	
		/**
		 * 게시물 등록하기
		 */
		int cateringInsert( CateringVO vo);
	
		/**
		 * 조건에 의해 게시물 목록 가져오기
		 */
		List<CateringVO> searchList(String keyField, String keyWord );
		
		/**
		 * 해당 게시물 보여주기
		 */
		List<MenuVO> cateringView(MenuVO vo);
}
