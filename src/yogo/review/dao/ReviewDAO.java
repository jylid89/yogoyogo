package yogo.review.dao;

import java.util.List;

import yogo.review.dto.ReviewVO;

public interface ReviewDAO {

	//리뷰 리스트(Select)
	List<ReviewVO> reviewList();
	
	//리뷰 작성(Insert)
	int reviewInsert(ReviewVO vo);
}
