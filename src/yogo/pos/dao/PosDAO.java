package yogo.pos.dao;

import java.util.List;

import yogo.pos.dto.PosVO;

public interface PosDAO {

	List<PosVO> posList(String truck_num);
	
	int posInsert(PosVO vo);
	
	PosVO selectTruck(String truck_num);
}
