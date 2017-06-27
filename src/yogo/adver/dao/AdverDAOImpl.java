package yogo.adver.dao;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import yogo.adver.dto.AdverVO;
import yogo.review.dto.ReviewVO;

@Repository
public class AdverDAOImpl implements AdverDAO{

	@Autowired
	SqlSessionTemplate ss;

//	//리뷰 작성(Insert)
//	public int reviewInsert(ReviewVO vo) {
//		//시퀀스 값 가져오기
//		String seq = ss.selectOne("review.selectSeq");
//		//가져온 시퀀스 값에 문자열 넣어주기
//		String revSeq = "REV00";
//		revSeq += seq;
//		//vo에 시퀀스 값 넣기
//		vo.setRev_num(revSeq);
//		
//		int result = ss.insert("review.reviewInsert",vo);
//		
//		return result;
//	}

	//광고 리스트 불러오기
	public List<AdverVO> adverList() {
		List<AdverVO> adverVo = null;
		adverVo =  ss.selectList("adver.adverList");
		return adverVo;
	}

	//광고 리스트 상세
	public AdverVO adverDetail(String adv_num, String mem_id) {
		AdverVO vo = ss.selectOne("adver.adverDetail",adv_num);
		vo.setTruck_num(ss.selectOne("adver.selectTruck",mem_id));
		return vo;
	}

	//광고 신청추가(Insert)
	public int advConfirmInsert(AdverVO adverVo) {
		//시퀀스 값 가져오기
				String seq = ss.selectOne("adver.selectSeq");
				//가져온 시퀀스 값에 문자열 넣어주기
				String advSeq = "ADVC00";
				advSeq += seq;
				//vo에 시퀀스 값 넣기
				adverVo.setAdvconf_num(advSeq);
				
		int result = ss.insert("adver.advConfirmInsert", adverVo);
		return result;
	}

	//ajax->신청/취소버튼
	public String confirmCheck(String adv_num, String truck_num) {
		HashMap map = new HashMap();
		map.put("adv_num", adv_num);
		map.put("truck_num", truck_num);
		
		String result = ss.selectOne("adver.confirmCheck",map);
		return result;
	}

	//ajax->승인제어
	public String confirmCancel(String adv_num, String truck_num) {
		HashMap map = new HashMap();
		map.put("adv_num", adv_num);
		map.put("truck_num", truck_num);
		
		String result = ss.selectOne("adver.confirmCancel",map);
		return result;
	}

	//승인취소(Delete)
	public void advConfirmDelete(String adv_num, String truck_num) {
		HashMap map = new HashMap();
		map.put("adv_num", adv_num);
		map.put("truck_num", truck_num);
		
		ss.delete("adver.advConfirmDelete",map);
		
	}

	//광고 추가(Insert)
	public void advInsert(AdverVO vo) {
		//시퀀스 값 가져오기
		String seq = ss.selectOne("adver.selectAdvSeq", vo);
		//가져온 시퀀스 값에 문자열 넣어주기
		String advSeq = "ADV00";
		advSeq += seq;
		//vo에 시퀀스 값 넣기
		vo.setAdv_num(advSeq);
		vo.setTruck_num(ss.selectOne("adver.selectTruck",vo));
		int result = ss.insert("adver.advInsert", vo);
	}

}
