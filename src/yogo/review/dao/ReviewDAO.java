package yogo.review.dao;

import java.util.List;

import yogo.review.dto.ReviewVO;

public interface ReviewDAO {

	List<ReviewVO> reviewList();
}
