package yogo.member.dao;

import yogo.member.dto.MemberVO;

public interface MemberDAO {

	/* 회원가입 기능 */
	int memberInsert( MemberVO vo );
	
	/*로그인 기능*/
	MemberVO memberLogin( MemberVO vo );	
	
	/*  로그인 확인*/
	String loginCheck(String mem_id, String mem_pass);

	/* id 중복확인 */
	String idCheck(String mem_id);
	
	/* 닉네임 중복확인 */
	String nickCheck(String mem_nick);
	
	/* 트럭인서트 */
	void truckInsert(MemberVO vo);
	
	/* id를 이용해서 닉네임, 이름, 회원구분 가지고 오기 */
	MemberVO memberById(String mem_id);
}