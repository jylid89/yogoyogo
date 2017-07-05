package yogo.freeboard.dao;

import java.util.List;

import yogo.board.dto.BoardVO;

public interface FreeBoardDAO {

	//자유게시판 리스트(SELECT)
	List<BoardVO> FreeBoardList();
	
	//자유게시판 상세뷰(SELECT)
	BoardVO freeboardDetail(BoardVO vo);
	
	//자유게시판 작성(INSERT)
	void FreeBoardInsert(BoardVO vo);
	
	//자유 게시판 삭제(DELETE)
	int freeBoardDelete(BoardVO vo);
	
	//자유게시판 수정(UPDATE)
	int freeboardModify(BoardVO vo);
}
