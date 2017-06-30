package yogo.notice.dao;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import yogo.board.dto.BoardVO;

@Repository
public class NoticeDAOImpl implements NoticeDAO {

	@Autowired
	SqlSessionTemplate ss;
	
	//공지사항 이벤트 리스트 불러오기
	public List<BoardVO> list() {
		
		List list = new ArrayList();
		try{
			list = ss.selectList("notice.noticeSelect");
		}catch(Exception ex){
			System.out.println("NoticeDAOImpl / noticeSelect 실패 : " + ex.getMessage());
		}
		return list;
	}

	//공지사항 이벤트 글쓰기
	public int noticeInsert(BoardVO vo) {
		int result = 0;
		try{
			result = ss.insert("notice.noticeInsert", vo);
		}catch( Exception ex ){
			System.out.println("NoticeDAOImpl / noticeInsert 실패  : " +ex.getMessage() );
		}
		return result;
	}

	//공지사항 이벤트 상세보기
	public BoardVO noticeView(BoardVO vo) {
		
		BoardVO view = new BoardVO();
		try{
			view = ss.selectOne("notice.noticeView", vo);
		}catch( Exception ex ){
			System.out.println(" NoticeDAOImpl / notcieView 실패 : "+ex.getMessage());
		}
		return view;
	}

	// 공지사항 이벤트 수정
	public int noticeUpdate(BoardVO vo) {
		int result = 0;
		try{
			result = ss.update("notice.noticeUpdate", vo);
		}catch( Exception ex ){
			System.out.println("NoticeDAOImpl / noticeUpdate 실패 : " + ex.getMessage());
		}
		return result;
	}

	// 공지사항 이벤트 삭제
	public int noticeDelete(BoardVO vo) {
		
		int result = 0;
		try{
			result = ss.delete("notice.noticeDelete",vo);
		}catch( Exception ex ){
			System.out.println("NoticeDAOImpl / noticeDelete 실패 : " + ex.getMessage());
		}
		return result;
	}

	//이벤트 공지사항 조회수 늘리기
	public int noticeIncrese(BoardVO vo) {
		
		int result = 0;
		try{
			result = ss.update("notice.noticeIncrease", vo);
		}catch( Exception ex){
			System.out.println("NoticeDAOImpl / noticeIncrease 실패 : " +ex.getMessage());
		}
		
		return result;
	}

}










