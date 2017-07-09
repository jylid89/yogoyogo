package yogo.chart.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import yogo.chart.dao.ChartDAOImpl;
import yogo.pos.dto.PosVO;

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
	public List<Map<String,Object>> chartListTime( String selectDay ){
		List<Map<String,Object>> chartListTime;
		chartListTime = chartDAO.chartListTime(selectDay);
		return chartListTime;
	}
	
	@RequestMapping(value="chartListDay.do")
	@ResponseBody
	public List<Map<String,Object>> chartListDay( String selectMon ){
		List<Map<String,Object>> chartListDay;
		chartListDay = chartDAO.chartListDay(selectMon);
		return chartListDay;
	}
	
	@RequestMapping(value="chartListMon.do")
	@ResponseBody
	public List<Map<String,Object>> chartListMon( String selectYear ){
		List<Map<String,Object>> chartListMon;
		chartListMon = chartDAO.chartListMon(selectYear);
		return chartListMon;
	}
	
}
























