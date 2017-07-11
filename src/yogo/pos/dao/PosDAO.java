package yogo.pos.dao;

import java.util.List;

import yogo.pos.dto.PosVO;

public interface PosDAO {

	List<PosVO> posList(String truck_num);
	
	int posInsert(PosVO vo);
	
	PosVO selectTruck(String truck_num);
	
	//시퀀스 가져오기
	String selectOrder();
}
