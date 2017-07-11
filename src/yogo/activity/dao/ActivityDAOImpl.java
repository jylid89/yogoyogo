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
	
	//활동 리스트
	public List<ActivityVO> list(String truck_num) {
		
		List list = new ArrayList();
		try{
			list = ss.selectList("activity.activitySelect", truck_num);
		}catch( Exception ex ){
		 	System.out.println("ActitivyDAOImpl / activityselect"+ex.getMessage());
		}
		return list;
	}

	// 활동 글 쓰기
	public int activityInsert(ActivityVO vo) {
		int result = 0;
		try{
			result = ss.insert("activity.activityInsert", vo);
		}catch( Exception ex ){
			System.out.println("ActivityDAOImpl / activtiyInsert 실패 " + ex.getMessage());
		}
		return result;
	}



	// 활동 글 수정
	public int activityUpdate(ActivityVO vo) {
		int result = 0;
		try{
			result = ss.update("activity.activityUpdate",vo);
		}catch(Exception ex){
			System.out.println("ActivityDAOImpl / activityUpdate 실패 : " + ex.getMessage());
		}
		return result;
	}

	// 활동 글 삭제
	public int activityDelete(ActivityVO vo) {
		int result = 0;
		try{
			result = ss.delete("activity.activityDelete",vo);
		}catch(Exception ex){
			System.out.println("ActivityDAOImpl / activityDelete 실패 : " + ex.getMessage());
		}
		return result;
	}

	
	
}
