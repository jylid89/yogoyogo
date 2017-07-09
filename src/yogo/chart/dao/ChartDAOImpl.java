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
	
	// 매출 불러오기 시간별
	@Override
	public List<Map<String, Object>> chartListTime(String selectDay) {
		return ss.selectList("chart.chartListTime", selectDay);
	}

	// 매출 불러오기 일별
	@Override
	public List<Map<String, Object>> chartListDay(String selectMon) {
		return ss.selectList("chart.chartListDay", selectMon);
	}

	// 매출 불러오기 월별
	@Override
	public List<Map<String, Object>> chartListMon(String selectYear) {
		return ss.selectList("chart.chartListMon", selectYear);
	}

}
