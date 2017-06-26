package yogo.qna.dao;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import yogo.board.dto.BoardVO;
import yogo.catering.dto.CateringVO;


@Repository
public class QnaDAOImpl implements QnaDAO {

	@Autowired
	SqlSessionTemplate ss;
	
	@Override
	public List<BoardVO> qnaList() {
		List<BoardVO> list = new ArrayList<>();
		try{
			list = ss.selectList("qna.qnaList");
			System.out.println("Qna list dao 접속");
		}catch( Exception ex )
		{
			System.out.println("Qna 실패 : " + ex.getMessage());
		}
		
		return list;
	}

	@Override
	public int qnaInsert(BoardVO vo) {
		int result = 0;
		try{
			//시퀀스 값 가져오기
			String seq = ss.selectOne("qna.selectSeq");
			//가져온 시퀀스 값에 문자열 넣어주기
			String boaSeq = "boa00";
			boaSeq += seq;
			//vo에 시퀀스 값 넣기
			vo.setBoard_num(boaSeq);
			result = ss.insert("qna.qnaInsert", vo);
			System.out.println("Qna insert dao 접속");
		}catch( Exception ex )
		{
			System.out.println("Qna 실패 : " + ex.getMessage());
		}
		
		return result;
	}

	@Override
	public List<CateringVO> searchList(String keyField, String keyWord) {
	
		return null;
	}

	@Override
	public BoardVO qnaView(BoardVO vo) {
		BoardVO boardVO = null;
		try{
			boardVO = ss.selectOne("qna.qnaDetail", vo);
			System.out.println("Qna view dao 접속");
		}catch( Exception ex )
		{
			System.out.println("Qna 실패 : " + ex.getMessage());
		}
		
		return boardVO;
	}
	

}
