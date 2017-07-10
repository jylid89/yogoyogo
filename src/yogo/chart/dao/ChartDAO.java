package yogo.chart.dao;

import java.util.List;
import java.util.Map;

public interface ChartDAO {

	//매출 불러오기 시간별
	List<Map<String, Object>> chartListTime(String selectDay, String truck_num);
	
	//매출 불러오기 일별
	List<Map<String, Object>> chartListDay(String selectMon, String truck_num);
	
	//매출 불러오기 월별
	List<Map<String, Object>> chartListMon(String selectYear, String truck_num);
		
}
