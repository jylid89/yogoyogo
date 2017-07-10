package yogo.chart.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import yogo.chart.dao.ChartDAOImpl;

@Controller
public class ChartController {

	@Autowired
	ChartDAOImpl chartDAO;

	@RequestMapping(value="chartList.do")
	public String chartList( ){
		return "/chart/chart";
	}
	
	@RequestMapping(value="chartListTime.do")
	@ResponseBody
	public List<Map<String,Object>> chartListTime( String selectDay, HttpSession session ){
		String truck_num = (String)session.getAttribute("truck_num");
		List<Map<String,Object>> chartListTime;
		chartListTime = chartDAO.chartListTime(selectDay, truck_num);
		return chartListTime;
	}
	
	@RequestMapping(value="chartListDay.do")
	@ResponseBody
	public List<Map<String,Object>> chartListDay( String selectMon, HttpSession session ){
		String truck_num = (String)session.getAttribute("truck_num");
		List<Map<String,Object>> chartListDay;
		chartListDay = chartDAO.chartListDay(selectMon, truck_num);
		return chartListDay;
	}
	
	@RequestMapping(value="chartListMon.do")
	@ResponseBody
	public List<Map<String,Object>> chartListMon( String selectYear, HttpSession session ){
		String truck_num = (String)session.getAttribute("truck_num");
		List<Map<String,Object>> chartListMon;
		chartListMon = chartDAO.chartListMon(selectYear, truck_num);
		return chartListMon;
	}
	
}
























