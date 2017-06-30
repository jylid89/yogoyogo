package yogo.notice.dao;

import java.util.List;

import yogo.board.dto.BoardVO;

public interface NoticeDAO {

	//공지사항 이벤트 리스트 불러오기
	List<BoardVO> list();
	
	//공지사항 이벤트 글쓰기
	int noticeInsert(BoardVO vo);
	
	//공지사항 이벤트 상세보기
	BoardVO noticeView(BoardVO vo);
	
	//공지사항 이벤트 글 수정하기
	int noticeUpdate(BoardVO vo);
	
	//공지사항 이벤트 글 삭제하기
	int noticeDelete(BoardVO vo);
	
	//공지사항 이벤트 조회수 늘리기
	int noticeIncrese(BoardVO vo);
	
}





