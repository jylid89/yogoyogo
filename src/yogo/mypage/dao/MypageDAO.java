package yogo.mypage.dao;

import java.util.List;

import yogo.catering.dto.CateringVO;

public interface MypageDAO {
	List<CateringVO> selectCate_user(String mem_id);
}
