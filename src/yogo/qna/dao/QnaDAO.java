package yogo.qna.dao;

import java.util.List;

import yogo.board.dto.BoardVO;
import yogo.catering.dto.CateringVO;


public interface QnaDAO {
		/**
		 * 게시물 목록 가져오기
		 */
		List<BoardVO> qnaList();
	
		/**
		 * 게시물 등록하기
		 */
		int qnaInsert( BoardVO vo);
	
		/**
		 * 조건에 의해 게시물 목록 가져오기
		 */
		List<CateringVO> searchList(String keyField, String keyWord );
		
		/**
		 * 해당 게시물 보여주기
		 */
		BoardVO qnaView(BoardVO vo);
}
