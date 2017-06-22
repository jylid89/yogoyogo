package yogo.activity.dao;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import yogo.activity.dto.ActivityVO;

@Repository
public class ActivityDAOImpl implements ActivityDAO {

	@Autowired
	SqlSessionTemplate ss;
	
	@Override
	public List<ActivityVO> list() {
		
		List list = new ArrayList();
		try{
		list = ss.selectList("activity.select");
		}catch( Exception ex ){
		 	System.out.println("ActitivyDAOImpl / activityselect"+ex.getMessage());
		}
		return list;
	}

	@Override
	public int activityInsert(ActivityVO vo) {
		int result = 0;
		try{
			result = ss.insert("activity.activityInsert", vo);
		}catch( Exception ex ){
			System.out.println("ActivityDAOImpl / activtiyInsert 실패 " + ex.getMessage());
		}
		
		return result;
	}

	
	
}
