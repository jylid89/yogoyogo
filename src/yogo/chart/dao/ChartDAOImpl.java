package yogo.chart.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class ChartDAOImpl implements ChartDAO {

	@Autowired
	SqlSessionTemplate ss;
	
	// 매출 불러오기 시간별
	@Override
	public List<Map<String, Object>> chartListTime(String selectDay, String truck_num) {
		HashMap map = new HashMap();
		map.put("selectDay", selectDay);
		map.put("truck_num", truck_num);
		return ss.selectList("chart.chartListTime", map);
	}

	// 매출 불러오기 일별
	@Override
	public List<Map<String, Object>> chartListDay(String selectMon, String truck_num) {
		HashMap map = new HashMap();
		map.put("selectMon", selectMon);
		map.put("truck_num", truck_num);
		return ss.selectList("chart.chartListDay", map);
	}

	// 매출 불러오기 월별
	@Override
	public List<Map<String, Object>> chartListMon(String selectYear, String truck_num) {
		HashMap map = new HashMap();
		map.put("selectYear", selectYear);
		map.put("truck_num", truck_num);
		return ss.selectList("chart.chartListMon", map);
	}

}
