package yogo.news.dao;

import java.util.List;

import yogo.activity.dto.ActivityVO;
import yogo.news.dto.NewsVO;

public interface NewsDAO {

	//뉴스 리스트
	List<NewsVO> selectNewsList(String board_state);

	//뉴스 상세
	NewsVO newsDetail(String board_num);
	
	//뉴스 조회수
	void updateCount(String board_num);
	
	//뉴스 상세 리스트
	List<NewsVO> selectNewsDetailList(String board_state, String board_num);
}
