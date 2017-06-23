package yogo.catering.dao;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import yogo.catering.dto.CateringVO;
import yogo.foodtruck.dto.FoodtruckVO;
import yogo.menu.dto.MenuVO;


@Repository
public class CateringDAOImpl implements CateringDAO {

	@Autowired
	SqlSessionTemplate ss;
//	리스트가져오는 부분
	@Override
	public List<FoodtruckVO> list() {
		List<FoodtruckVO> list = new ArrayList<>();
		try{
			list = (ArrayList) ss.selectList("catering.cateringlist");
			System.out.println("케이터링 list dao 접속");
		}catch( Exception ex )
		{
			System.out.println("케이터링 실패 : " + ex.getMessage());
		}
		
		return list;
	}
//	케이터링신청부분
	@Override
	public int cateringInsert(CateringVO vo) {
		int result = 0;
		try{
			//시퀀스 값 가져오기
			String seq = ss.selectOne("catering.selectSeq");
			//가져온 시퀀스 값에 문자열 넣어주기
			String catSeq = "CAT00";
			catSeq += seq;
			//vo에 시퀀스 값 넣기
			vo.setCate_num(catSeq);
			result = ss.insert("catering.cateringinsert", vo);
			System.out.println("케이터링 insert dao 접속");
		}catch( Exception ex )
		{
			System.out.println("케이터링 실패 : " + ex.getMessage());
		}
		
		return result;
	}

	@Override
	public List<CateringVO> searchList(String keyField, String keyWord) {
	
		return null;
	}
//	케이터링 디테일 부분
	@Override
	public List<MenuVO> cateringView(MenuVO vo) {
		List<MenuVO> list = null;
		try{
			list = ss.selectList("catering.cateringdetail", vo);
			System.out.println("케이터링 view dao 접속");
		}catch( Exception ex )
		{
			System.out.println("케이터링 실패 : " + ex.getMessage());
		}
		
		return list;
	}
	

}
