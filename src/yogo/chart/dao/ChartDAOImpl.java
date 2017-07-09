package yogo.chart.dao;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import yogo.pos.dto.PosVO;

@Repository
public class ChartDAOImpl implements ChartDAO {

	@Autowired
	SqlSessionTemplate ss;
	
	//매출 불러오기
	@Override
	public List<Map<String, Object>> chartList(String selectDay) {
		 return ss.selectList("chart.chartList", selectDay);
	}

}
