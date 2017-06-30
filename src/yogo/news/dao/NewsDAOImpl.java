package yogo.news.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import yogo.activity.dto.ActivityVO;
import yogo.news.dto.NewsVO;

@Repository
public class NewsDAOImpl implements NewsDAO {

	@Autowired
	SqlSessionTemplate ss;
	
	//뉴스 리스트/상세
	@Override
	public List<NewsVO> selectNewsList(String board_state) {
		
		List list = new ArrayList();
		try{
		list = ss.selectList("news.selectNewsList",board_state);
		}catch( Exception ex ){
		 	System.out.println("selectNewsList"+ex.getMessage());
		}
		return list;
	}
	
	//뉴스 상세
	public NewsVO newsDetail(String board_num) {
		NewsVO vo = ss.selectOne("news.newsDetail", board_num);
		return vo;
	}

	//조회수 update
	public void updateCount(String board_num) {
		ss.update("news.updateCount", board_num);
		
	}

	public List<NewsVO> selectNewsDetailList(String board_state, String board_num) {
		HashMap map = new HashMap();
		map.put("board_state", board_state);
		map.put("board_num", board_num);
		System.out.println(board_num + " / " + board_state);
		List<NewsVO> list = ss.selectList("news.selectNewsDetailList" , map);
		return list;
	}

}
