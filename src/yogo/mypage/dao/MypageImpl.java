package yogo.mypage.dao;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import yogo.catering.dto.CateringVO;

@Repository
public class MypageImpl implements MypageDAO {

	@Autowired
	SqlSessionTemplate ss;
	
	@Override
	public List<CateringVO> selectCate_user(String mem_id) {
		List<CateringVO> list = new ArrayList();
		try {
			list = ss.selectList("mypage.selectCate_user", mem_id);
		} catch(Exception e) {
			System.out.println("마이페이지(사용자) 케이터링 정보 불러오기 실패 "+e.getMessage());
		}
		return list;
	}

	

}
