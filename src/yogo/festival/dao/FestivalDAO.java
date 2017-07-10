package yogo.festival.dao;

import java.util.List;

import yogo.festival.dto.FestivalVO;

public interface FestivalDAO {

	//행사 리스트 불러오기
	List<FestivalVO> list();
	
	//행사 상세 보기
	FestivalVO festivalView(FestivalVO vo);
	
	//행사 글 추가
	int festivalInsert(FestivalVO vo);
	
	//행사 글 수정하기
	int festivalUpdate(FestivalVO vo);
	
	//행사 글 삭제하기
	int festivalDelete(FestivalVO vo);
	
	//행사 신청 추가(Insert)
	int eventConfirmInsert(FestivalVO festivalVo);
		
	//ajax->버튼제어
	String confirmCheck(String event_num, String truck_num);
		
	//ajax->취소제어
	String confirmCancel(String event_num, String truck_num);
		
	//승인취소(Delete)
	void eventConfirmDelete(String event_num,String truck_num);
	
	//트럭번호 가져오기
	String selectTrucknum(String mem_id);
}
