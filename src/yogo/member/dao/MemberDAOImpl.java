package yogo.member.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import yogo.member.dto.MemberVO;

@Repository
public class MemberDAOImpl implements MemberDAO {
	
	@Autowired
	SqlSessionTemplate ss;
	
	@Override
	public MemberVO idCheck(MemberVO vo) {
		MemberVO memberVo = null;
		
		return null;
	}

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

	@Override
	public MemberVO memberLogin(MemberVO vo) {
		MemberVO memberVo = null;
		try {
			memberVo = ss.selectOne("member.login", vo);
		} catch (Exception e) {
			System.out.println("로그인실패함");
		}
		
		return memberVo;
	}
}