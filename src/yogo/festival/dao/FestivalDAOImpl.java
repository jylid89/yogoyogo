package yogo.festival.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import yogo.festival.dto.FestivalVO;

@Repository
public class FestivalDAOImpl implements FestivalDAO {

	@Autowired
	SqlSessionTemplate ss;
	
	//행사 리스트 불러오기
	public List<FestivalVO> list() {
		
		List list = new ArrayList();
		try{
			list = ss.selectList("festival.select");
		}catch(Exception ex){
			System.out.println("FestivalDAOImpl / festivalselect" + ex.getMessage());
		}
		
		return list;
		
	}

	//행사 리스트 상세보기
	public FestivalVO festivalView(FestivalVO vo) {
		System.out.println("다오임플뜹니까?");
		FestivalVO view = new FestivalVO();
		try{
			view = ss.selectOne("festival.selectOne", vo);
		}catch(Exception ex){
			System.out.println("FestivalDAOImpl / festivalView : 실패 " + ex.getMessage());
		}
		return  view;
	}

	//행사 글쓰기
	public int festivalInsert(FestivalVO vo) {
		System.out.println("인서트다오임플");
		int result = 0;
		try{
			result = ss.insert("festival.festivalInsert", vo);
		}catch( Exception ex ){
			System.out.println("FestivalDAOImpl / festivalInsert 실패 : " +ex.getMessage());
		}
		
		return result;
	}

	//행사 글 수정하기
	public int festivalUpdate(FestivalVO vo) {
		int result = 0;
		try{
			result = ss.update("festival.festivalUpdate",vo);
		}catch(Exception ex){
			System.out.println("FestivalDAOImpl / festivalUpdate 실패 : " + ex.getMessage());
		}
		return result;
	}

	//행사 글 삭제하기
	public int festivalDelete(FestivalVO vo) {
		int result = 0;
		try{
			result = ss.delete("festival.festivalDelete",vo);
		}catch( Exception ex ){
			System.out.println("FestivalDAOImpl / festivalDelete 실패 : " +ex.getMessage());
		}
		return result;
	}
	
	//행사 신청추가(Insert)
	public int eventConfirmInsert(FestivalVO festivalVo) {
		String seq = ss.selectOne("festival.selectSeq");
		//가져온 시퀀스 값에 문자열 넣어주기
		String eventSeq = "EVENTC00";
		eventSeq += seq;
		//vo에 시퀀스 값 넣기
		festivalVo.setEveconf_num(eventSeq);
		
		int result = ss.insert("festival.eventConfirmInsert", festivalVo);
		return result;
	}

	//ajax->신청/취소버튼
	public String confirmCheck(String event_num, String truck_num) {
		HashMap map = new HashMap();
		map.put("event_num", event_num);
		map.put("truck_num", truck_num);
		
		String result = ss.selectOne("adver.confirmCheck",map);
		return result;
	}

	//ajax->승인제어
	public String confirmCancel(String event_num, String truck_num) {
		HashMap map = new HashMap();
		map.put("event_num", event_num);
		map.put("truck_num", truck_num);
		
		String result = ss.selectOne("adver.confirmCancel",map);
		return result;
	}

	//승인취소(Delete)
	public void eventConfirmDelete(String event_num, String truck_num) {
		HashMap map = new HashMap();
		map.put("event_num", event_num);
		map.put("truck_num", truck_num);
		
		ss.delete("adver.advConfirmDelete",map);		
	}

}
