package yogo.review.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import yogo.review.dto.ReviewVO;

@Repository
public class ReviewDAOImpl implements ReviewDAO{

	@Autowired
	SqlSessionTemplate ss;
	
	//리뷰 리스트 불러오기
	@Override
	public List<ReviewVO> reviewList() {
		
		List<ReviewVO> reviewVo = null;
		reviewVo =  ss.selectList("review.reviewList");
		System.out.println("reviewVO" + reviewVo);
		return reviewVo;
	}

	//리뷰 작성(Insert)
	public int reviewInsert(ReviewVO vo) {
		//시퀀스 값 가져오기
		String seq = ss.selectOne("review.selectSeq");
		//가져온 시퀀스 값에 문자열 넣어주기
		String revSeq = "REV00";
		revSeq += seq;
		//vo에 시퀀스 값 넣기
		vo.setRev_num(revSeq);
		
		int result = ss.insert("review.reviewInsert",vo);
		
		return result;
	}

}
