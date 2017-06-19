package activity.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class activityController {
	
	@RequestMapping(value="/activity.do")
	public String test() {
		return "/activity/activity";
	}
	
	@RequestMapping(value="/activityinsert.do")
	public String test2() {
		return "/activity/activityinsert";
	}
}
