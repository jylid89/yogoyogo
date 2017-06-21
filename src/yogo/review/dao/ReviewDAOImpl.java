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

}
