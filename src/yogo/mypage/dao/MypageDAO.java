package yogo.mypage.dao;

import java.util.List;

import yogo.adver.dto.AdverVO;
import yogo.catering.dto.CateringVO;
import yogo.member.dto.MemberVO;
import yogo.menu.dto.MenuVO;

public interface MypageDAO {
	// 케이터링 신청현황(일반사용자)
	List<CateringVO> selectCate_user(String mem_id);
	
	//(광고업체)광고신청현황
	List<AdverVO> adverConfList_adver(String mem_id);

	//광고거절 UPDATE
	void advRefuseUpdate(AdverVO vo);
	
	//광고승인 UPDATE
	void advAckUpdate(AdverVO vo);

	//광고승인확인List
	List<AdverVO> adverAppConfirm_adver(String mem_id);
	
	// 개인정보 가지고 오기
	MemberVO selectMember(String mem_id);
	
	// 개인정보 업데이트
	void memberUpdate(MemberVO vo);
	
	// 메뉴 가지고 오기
	List<MenuVO> selectMenu(String mem_id);
	
	// 메뉴 추가
	void menuAdd(MenuVO vo);
	
	// 메뉴 수정
	void menuMod(MenuVO vo);
	
	// 메뉴 삭제
	void menuDel(MenuVO vo);

	//(사업자)광고신청현황
	List<AdverVO> adverAppStatus_ceo(String mem_id);

}
