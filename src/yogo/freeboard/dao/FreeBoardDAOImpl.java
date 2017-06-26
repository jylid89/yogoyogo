package yogo.freeboard.dao;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import yogo.freeboard.dto.FreeBoardVO;

@Repository
public class FreeBoardDAOImpl {

	@Autowired
	SqlSessionTemplate ss;
	
	 public List<FreeBoardVO> FreeBoardList(){
		List freeVO = new ArrayList();
		try{
		freeVO = ss.selectList("freeboard.freeList");
		}catch(Exception ex){
			System.out.println("FreeBoardList : " + ex.getMessage());
		}
		return freeVO;
	}
	 
	 //자유게시판 글 등록(INSERT)
	public void FreeBoardInsert(FreeBoardVO vo){
		//시퀀스 값 가져오기
		String seq = ss.selectOne("freeboard.selectFreeSeq", vo);
		//가져온 시퀀스 값에 문자열 넣어주기
		String freeSeq = "FRB00";
		freeSeq += seq;
		//vo에 시퀀스 값 넣기
		vo.setBoard_num(freeSeq);
		
		ss.insert("freeboard.freeInsert",vo);
	}
}