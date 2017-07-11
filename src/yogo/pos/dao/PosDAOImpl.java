package yogo.pos.dao;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import yogo.pos.dto.PosVO;

@Repository
public class PosDAOImpl implements PosDAO {

	@Autowired
	SqlSessionTemplate ss;
	
	//메뉴 리스트
	public List<PosVO> posList(String truck_num) {
		
		List list = new ArrayList();
		try{
			list = ss.selectList("pos.posSelect", truck_num);
		}catch(Exception ex){
			System.out.println("PosDAOImpl / posList 실패 : " + ex.getMessage());
		}
		return list;
		
	}

	//결제 완료
	public int posInsert(PosVO vo) {

		int result = 0;
		try{
			result = ss.insert("pos.posInsert", vo);
		}catch(Exception ex){
			System.out.println("PosDAOImp / posInsert 실패 : " +ex.getMessage());
		}
		return result;
	}

	@Override
	public PosVO selectTruck(String truck_num) {
		return ss.selectOne("pos.selectTruck", truck_num);
	}

	//시퀀스 가져오기
	@Override
	public String selectOrder(){
		return ss.selectOne("pos.posOrder");
	}
	

}































