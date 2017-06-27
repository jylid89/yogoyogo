package yogo.mypage.dao;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import yogo.adver.dto.AdverVO;
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

	//(광고업체)광고신청현황
	@Override
	public List<AdverVO> adverConfList_adver(String mem_id) {
		List<AdverVO> list = new ArrayList<AdverVO>();
		list = ss.selectList("mypage.selectConfList_adver", mem_id);
		return list;
	}

	//광고거절 UPDATE
	@Override
	public void advRefuseUpdate(AdverVO vo) {
		if(vo.getFlag() == "거절"){
			ss.update("mypage.advRefuseUpdate", vo);			
		}else{
			ss.update("mypage.advOkUpdate", vo);
		}
		}

	//광고승인확인List
	@Override
	public List<AdverVO> adverAppConfirm_adver(String mem_id) {
		List<AdverVO> list = new ArrayList<AdverVO>();
		list = ss.selectList("mypage.adverAppConfirm",mem_id);
		return list;
	}

	

}
