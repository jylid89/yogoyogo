package yogo.member.dao;

import yogo.member.dto.MemberVO;

public interface MemberDAO {

	/*id 중복체크 */
	MemberVO idCheck( MemberVO vo );
	
	/* 회원가입 기능 */
	int memberInsert( MemberVO vo );
	
	/*로그인 기능*/
	MemberVO memberLogin( MemberVO vo );	
	
	String loginCheck(String mem_id, String mem_pass);
}