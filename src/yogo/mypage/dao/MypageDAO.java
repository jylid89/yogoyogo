package yogo.mypage.dao;

import java.util.List;

import yogo.adver.dto.AdverVO;
import yogo.catering.dto.CateringVO;

public interface MypageDAO {
	List<CateringVO> selectCate_user(String mem_id);
	
	//(광고업체)광고신청현황
	List<AdverVO> adverConfList_adver(String mem_id);

	//광고거절 UPDATE
	void advRefuseUpdate(AdverVO vo);

	//광고승인확인List
	List<AdverVO> adverAppConfirm_adver(String mem_id);

}
