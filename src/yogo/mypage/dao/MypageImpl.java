package yogo.mypage.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.StringTokenizer;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import yogo.adver.dto.AdverVO;
import yogo.catering.dto.CateringVO;
import yogo.member.dto.MemberVO;
import yogo.menu.dto.MenuVO;

@Repository
public class MypageImpl implements MypageDAO {

	@Autowired
	SqlSessionTemplate ss;
	
	// 케이터링 신청현황(일반사용자)
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

	//케이터링 신청 현황 리스트 (사업자) 
	@Override
	public List<CateringVO> selectCate_ceo(String truck_num) {
		// list 생성
		List<CateringVO> list = new ArrayList();
		// truck_num를 list에 넘겨줌
		try{
			list = ss.selectList("mypage.selectCate_ceo",truck_num);
		}catch( Exception ex){
			System.out.println("MypageImpl / selectCate_ceo : " + ex.getMessage());
		}
		return list;
	}
	
	//케이터링 승인완료 현황 리스트 (사업자) 
	@Override
	public List<CateringVO> selectApprove_ceo(String truck_num) {
		// list 생성
		List<CateringVO> list = new ArrayList();
		// truck_num를 list에 넘겨줌
		try{
			list = ss.selectList("mypage.selectApprove_ceo",truck_num);
		}catch( Exception ex){
			System.out.println("MypageImpl / selectApprove_ceo : " + ex.getMessage());
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
			ss.update("mypage.advRefuseUpdate", vo);			
		}
	
	//광고승인 UPDATE
		@Override
		public void advAckUpdate(AdverVO vo) {
				ss.update("mypage.advOkUpdate", vo);
			}

	//광고승인확인List
	@Override
	public List<AdverVO> adverAppConfirm_adver(String mem_id) {
		List<AdverVO> list = new ArrayList<AdverVO>();
		list = ss.selectList("mypage.adverAppConfirm",mem_id);
		return list;
	}
	
	// 사용자 정보 가지고 오기
	@Override
	public MemberVO selectMember(String mem_id) {
		MemberVO vo = new MemberVO();
		try {
			vo = ss.selectOne("mypage.selectMember", mem_id);
			
			if(vo.getMem_state().equals("사업자")){
				vo = ss.selectOne("mypage.selectCeoMember", mem_id);
			}
		} catch(Exception e) {
			System.out.println("개인정보 불러오기 실패"+e.getMessage());
		}
		return vo;
	}

	// 사용자 정보 업데이트
	@Override
	public void memberUpdate(MemberVO vo) {
		System.out.println("사용자 정보 업데이트 impl");
		try {
			ss.update("mypage.memberUpdate", vo);
		} catch(Exception e) {
			System.out.println("개인정보 업데이트 실패 "+e.getMessage());
		}
	}

	// 메뉴 list
	@Override
	public List<MenuVO> selectMenu(String mem_id) {
			List<MenuVO> list = new ArrayList();
		try {
			list = ss.selectList("mypage.selectMenu", mem_id);
		} catch ( Exception e ) {
			System.out.println("메뉴 select 실패 "+e.getMessage());
		}
		return list;
	}

	// 메뉴 추가
	@Override
	public void menuAdd(MenuVO vo) {
		try {
			String price = vo.getMenu_price();
			StringTokenizer st = new StringTokenizer(price, "원");
			price = st.nextToken();
			vo.setMenu_price(price);
			String seq = ss.selectOne("mypage.selectMenuSeq");
			String revSeq = "MENU00";
			revSeq += seq;
			vo.setMenu_num(revSeq);
			ss.insert("mypage.menuAdd", vo);
		} catch(Exception e) {
			System.out.println("메뉴 add 실패 "+e.getMessage());
		}
	}

	// 메뉴 수정
	@Override
	public void menuMod(MenuVO vo) {
		try {
			String price = vo.getMenu_price();
			StringTokenizer st = new StringTokenizer(price, "원");
			price = st.nextToken();
			vo.setMenu_price(price);
			ss.update("mypage.menuMod", vo);
		} catch(Exception e) {
			System.out.println("메뉴 mod 실패 "+e.getMessage());
		}
	}

	// 메뉴 삭제
	@Override
	public void menuDel(MenuVO vo) {
		try {
			ss.delete("mypage.menuDel", vo);
		} catch(Exception e) {
			System.out.println("메뉴 add 실패 "+e.getMessage());
		}
	}

	//(사업자)광고신청현황
	@Override
	public List<AdverVO> adverAppStatus_ceo(String mem_id) {
		List<AdverVO> list = new ArrayList();
		list = ss.selectList("mypage.adverAppStatus_ceo", mem_id);
		return list;
	}

	//비밀번호 ajax
	@Override
	public String passCheck(String mem_pass, String mem_id) {
		HashMap map = new HashMap();
		map.put("mem_pass", mem_pass);
		map.put("mem_id", mem_id);
		String result = ss.selectOne("mypage.passCheck", map);
		return result;
	}

	//사업자 정보수정
	@Override
	public void ceoUpdate(MemberVO vo) {
		ss.update("mypage.cedUpdate", vo);
		
	}
	
	//(사업자)케이터링 승인 시 상태 업데이트
	@Override
	public int catAppConfirm(CateringVO vo) {
		int result = 0;
		try {
			result = ss.update("mypage.catAppConfirm",vo);
		} catch(Exception e) {
			System.out.println("mypage.catAppConfirm 실패 "+e.getMessage());
		}
		return result;
	}
	
	//(사업자)케이터링 거절 시 상태 업데이트
	@Override
	public int catAppReject(CateringVO vo) {
		int result = 0;
		try {
			result = ss.update("mypage.catAppReject",vo);
		} catch(Exception e) {
			System.out.println("mypage.catAppReject 실패 "+e.getMessage());
		}
		return result;
	}
}
