package yogo.activity.dao;

import java.util.List;

import yogo.activity.dto.ActivityVO;

public interface ActivityDAO {

	/*
	 *  활동 리스트 불려오는 기능
	 */
	List<ActivityVO> list();
	
	/*
	 *  활동 글쓰기 기능
	 */
	int activityInsert(ActivityVO vo);
	
	 
}