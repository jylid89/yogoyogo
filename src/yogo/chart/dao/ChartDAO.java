package yogo.chart.dao;

import java.util.List;
import java.util.Map;

public interface ChartDAO {

	//매출 불러오기
	List<Map<String, Object>> chartList(String selectDay);
}
