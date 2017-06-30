package yogo.news.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import yogo.news.dao.NewsDAOImpl;
import yogo.news.dto.NewsVO;

@Controller
public class NewsController {

	@Autowired
	NewsDAOImpl newsDAO;
	 
	/*
	 *  리스트 보기
	 */
	@RequestMapping(value="newsList.do")
	public ModelAndView list(){
		List<NewsVO> list = new ArrayList<NewsVO>();
		String board_state = "news";
		list = newsDAO.selectNewsList(board_state);
		ModelAndView mv = new ModelAndView();
		for(int i=0; i<list.size(); i++){
			String temp = list.get(i).getBoard_content().substring(0,50) + "...";	
			list.get(i).setBoard_content(temp);
		}
		
		mv.addObject("list", list);
		mv.setViewName("/news/newsList");
		return mv;
		
	}
	
	/*
	 * 뉴스 상세
	 */
	@RequestMapping(value="newsDetail.do")
	public ModelAndView newsDetail(String board_num){
		//상세
		NewsVO vo =  newsDAO.newsDetail(board_num);
		//리스트
		List<NewsVO> list = new ArrayList<NewsVO>();
		String board_state = "news";
		list = newsDAO.selectNewsDetailList(board_state ,board_num);
		//조회수
		newsDAO.updateCount(board_num);
		ModelAndView mv = new ModelAndView();
		mv.addObject("vo", vo);
		mv.addObject("list",list);
		mv.setViewName("/news/newsDetail");
		return mv;
		
	}
	
}