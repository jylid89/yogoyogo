package yogo.member.dao;

import java.util.HashMap;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import yogo.member.dto.MemberVO;

@Repository
public class MemberDAOImpl implements MemberDAO {
	
	@Autowired
	SqlSessionTemplate ss;
	
	//아이디 중복확인
	@Override
	public String idCheck(String mem_id) {
		String result = ss.selectOne("member.idCheck", mem_id);
		
		return result;
	}

	//회원가입
	@Override
	public int memberInsert(MemberVO vo) {
		int result = 0;
		try {
			result = ss.insert("member.insert", vo);
		} catch (Exception e) {
			System.out.println("MemberDAOImpl / memberInsert 실패 : " + e.getMessage());
		}
		return result;
	}

	//로그인
	@Override
	public MemberVO memberLogin(MemberVO vo) {
		MemberVO memberVo = null;
		try {
			memberVo = ss.selectOne("member.login", vo);
			if(memberVo.getMem_state().equals("사업자")) {
				memberVo.setTruck_num(ss.selectOne("member.loginGetTruckNum", vo));
			}
		} catch (Exception e) {
			System.out.println("로그인실패함!!!!");
		}
		
		return memberVo;
	}
	
	//ajax->아이디/비번 확인
	public String loginCheck(String mem_id, String mem_pass) {
			HashMap map = new HashMap();
			map.put("mem_id", mem_id);
			map.put("mem_pass", mem_pass);
			String result = ss.selectOne("loginCheck",map );
				return result;
			}

	//닉네임 중복확인
	public String nickCheck(String mem_nick) {
		
		String result = ss.selectOne("member.nickCheck", mem_nick);
		return result;
	}

	public void truckInsert(MemberVO vo) {
			//시퀀스 값 가져오기
				String seq = ss.selectOne("member.selectSeq");
				//가져온 시퀀스 값에 문자열 넣어주기
				String revSeq = "TRUCK00";
				revSeq += seq;
				//vo에 시퀀스 값 넣기
				vo.setTruck_num(revSeq);
				System.out.println(vo.getCar_number() + " / " + vo.getTruck_catestate() + " / " + vo.getTruck_addr() + " / " + vo.getMem_id() + " / " + vo.getTruck_num()+ " / " + vo.getTruck_name());
		ss.insert("member.truckInsert", vo);
		
	}

	// id를 이용해서 닉네임, 이름, 회원구분 가지고 오기
	@Override
	public MemberVO memberById(String mem_id) {
		MemberVO vo = new MemberVO();
		try {
			vo = ss.selectOne("member.memberById", mem_id);
		} catch(Exception e) {
			System.out.println("아이디를 통한 멤버정보 가지고 오기 실패"+e.getMessage());
		}
		return vo;
	}

}