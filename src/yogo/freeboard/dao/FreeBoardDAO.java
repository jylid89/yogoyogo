package yogo.freeboard.dao;

import java.util.List;

import yogo.freeboard.dto.FreeBoardVO;

public interface FreeBoardDAO {

	//자유게시판 리스트(SELECT)
	List<FreeBoardVO> FreeBoardList();
	
	//자유게시판 작성(INSERT)
	int FreeBoardInsert(FreeBoardVO vo);
	
	//자유 게시판 수정(UPDATE)
	
}
