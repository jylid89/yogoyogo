package yogo.adver.dao;

import java.util.List;

import yogo.adver.dto.AdverVO;

public interface AdverDAO {

	//광고 리스트(Select)
	List<AdverVO> adverList();
	
	//광고 디테일(Detail)
	AdverVO adverDetail(String adv_num,String mem_id);
	
	//광고 신청 추가(Insert)
	int advConfirmInsert(AdverVO adverVo);
	
	//ajax->버튼제어
	String confirmCheck(String adv_num, String truck_num);
	
	//ajax->취소제어
	String confirmCancel(String adv_num, String truck_num);
	
	//승인취소(Delete)
	void advConfirmDelete(String adv_num,String truck_num);
	
	//광고 추가(Insert)
	void advInsert(AdverVO vo);
	
}
