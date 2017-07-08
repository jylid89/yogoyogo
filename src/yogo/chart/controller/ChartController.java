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
	@ResponseBody
	public List<Map<String,Object>> chartList( String selectDay){
		
		List<Map<String,Object>> chartDaily;
		chartDaily = chartDAO.chartList(selectDay);
		
		return chartDaily;
		
	}
	
}
























