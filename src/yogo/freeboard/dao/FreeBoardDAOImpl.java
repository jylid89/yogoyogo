package yogo.freeboard.dao;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import yogo.board.dto.BoardVO;

@Repository
public class FreeBoardDAOImpl implements FreeBoardDAO {

	@Autowired
	SqlSessionTemplate ss;

	//자유게시판 글 목록 불러오기
	@Override
	public List<BoardVO> FreeBoardList() {
		List<BoardVO> freeVO = new ArrayList<BoardVO>();
		try {
			freeVO = ss.selectList("freeboard.freeList");
		} catch (Exception e) {
			System.out.println("자유게시판 목록 불러오기 에러 : " + e.getMessage());
		}
		return freeVO;
	}

	//자유게시판 상세 뷰
	@Override
	public BoardVO freeboardDetail(BoardVO vo){
		BoardVO freeVO = new BoardVO();
		try {
			freeVO = ss.selectOne("freeboard.freeDetail", vo);
		} catch (Exception e) {
			System.out.println("자유게시판 목록 불러오기 에러 : " + e.getMessage());
		}
		return freeVO;
	}
	
	//자유게시판 글 등록
	@Override
	public void FreeBoardInsert(BoardVO vo) {
		ss.insert("freeboard.freeInsert", vo);
	}

	// 자유게시판 글 삭제
	@Override
	public int freeBoardDelete(BoardVO vo) {
		int result = 0;
		try {
			result = ss.delete("freeboard.freeDelete", vo);
		} catch (Exception e) {
			System.out.println("자유게시판 글 삭제 에러 : " + e.getMessage());
		}
		return result;
	}

	@Override
	public void freeboardModify(BoardVO vo) {
				
	}
	
}