package yogo.member.controller;

import java.io.BufferedReader;
import java.io.File;
import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import net.minidev.json.JSONObject;
import net.minidev.json.parser.JSONParser;
import yogo.member.dao.MemberDAOImpl;
import yogo.member.dto.MemberVO;

@Controller
public class MemberController {

	@Autowired
	MemberDAOImpl memberDao;
	
	@RequestMapping(value="register.do")
	public ModelAndView register(HttpSession session){
		MemberVO vo = new MemberVO();
		vo.setMem_id((String)session.getAttribute("mem_id"));
		vo.setMem_nick((String)session.getAttribute("mem_nick"));
		vo.setMem_name((String)session.getAttribute("mem_name"));
		session.invalidate();
		ModelAndView mv = new ModelAndView();
		mv.addObject("vo", vo);
		mv.setViewName("/join/register");
		return mv;
	}
	
	@RequestMapping(value="loginView.do")
	public String loginView(){
		return "/login/loginView";
	}
	
	//로그인
	@RequestMapping(value="login.do")
	public ModelAndView login(MemberVO vo, HttpSession session){
		int result = 0;
		String view = "/login/loginView";
		MemberVO reVO = memberDao.memberLogin(vo);
		
		if ( reVO != null ) {
			session.setAttribute("mem_id", reVO.getMem_id());
			session.setAttribute("mem_state", reVO.getMem_state());
			session.setAttribute("mem_nick", reVO.getMem_nick());
			session.setAttribute("mem_name", reVO.getMem_name());
			session.setAttribute("truck_num", reVO.getTruck_num());
			result = 1;
			view = "/main/main";
		}
		
		ModelAndView mv = new ModelAndView();
		mv.addObject("result", result);
		mv.setViewName(view);
		
		return mv;
	}
	
	//회원가입
	@RequestMapping(value="join.do")
	public ModelAndView join(MemberVO vo, HttpSession session){
		MultipartFile truck_pictemp = vo.getTruck_pictemp();
		if(truck_pictemp != null){
			String truck_picreal1 = truck_pictemp.getOriginalFilename();
			truck_picreal1 = System.currentTimeMillis() + "_" + truck_picreal1;
			vo.setTruck_picreal1("/YogoYogo/images/foodtruck/"+truck_picreal1);
			try {
				File file = new File("C:\\Users\\yeeun\\git\\yogoyogo\\WebContent\\images\\foodtruck\\" + truck_picreal1);
				truck_pictemp.transferTo(file);
			} catch (Exception e) {
				System.out.println("파일업로드 실패 : " + e.getMessage());
            } 
		}
			int result=0;
		if(vo.getMem_state().equals("사업자")){
			result = memberDao.memberInsert(vo);
			memberDao.truckInsert(vo);
		}else{
			result = memberDao.memberInsert(vo);
		}
		String msg = "가입실패";
		if( result > 0 ) msg = "가입성공";
		session.setAttribute("msg", msg);
		ModelAndView mv = new ModelAndView();
//		mv.addObject("msg", msg);
		mv.addObject(result);
		
		mv.setViewName("/main/main");
		
		return mv;
	}
	
	//ajax -> loginCheck
		@RequestMapping(value="loginCheck.do")
		@ResponseBody
		public String loginCheck(String mem_id, String mem_pass){
			String result = memberDao.loginCheck(mem_id, mem_pass);
			return result;
		}
		
	//로그아웃
		@RequestMapping(value="logOut.do")
		public String logOut(HttpSession session){
				session.invalidate();
			
			return "/main/main";
		}
	
	// 네이버 로그인
		@RequestMapping(value="naverlogin.do")
		public String naverlogin(String code, String state, HttpSession session) {
			String nextpage = "";
			JSONObject json = new JSONObject();
			String next_apiURL;
			String clientId = "zE5y1nty2rQY7EdwF341";//애플리케이션 클라이언트 아이디값";
			String clientSecret = "bvrp6O39Bq";//애플리케이션 클라이언트 시크릿값";
			String redirectURI = "";
			try {
				redirectURI = URLEncoder.encode("192.168.0.188/YogoYogo/register.do", "UTF-8");
			} catch (UnsupportedEncodingException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
			
			next_apiURL = "https://nid.naver.com/oauth2.0/token?grant_type=authorization_code&";
			next_apiURL += "client_id=" + clientId;
			next_apiURL += "&client_secret=" + clientSecret;
			next_apiURL += "&redirect_uri=" + redirectURI;
			next_apiURL += "&code=" + code;
			next_apiURL += "&state=" + state;
			String access_token = "";
			String refresh_token = "";
			StringBuffer res = new StringBuffer();
			 try {
			      URL url = new URL(next_apiURL);
			      HttpURLConnection con = (HttpURLConnection)url.openConnection();
			      con.setRequestMethod("GET");
			      int responseCode = con.getResponseCode();
			      BufferedReader br;
			      if(responseCode==200) { // 정상 호출
			        br = new BufferedReader(new InputStreamReader(con.getInputStream()));
			      } else {  // 에러 발생
			        br = new BufferedReader(new InputStreamReader(con.getErrorStream()));
			      }
			      String inputLine;
			      res = new StringBuffer();
			      while ((inputLine = br.readLine()) != null) {
			        res.append(inputLine);
			      }
			      br.close();
			      if(responseCode==200) {
			    	  JSONParser parser = new JSONParser();
			    	  json = (JSONObject) parser.parse(res.toString());
			      }
			    } catch (Exception e) {
			      System.out.println(e);
			    }
			 
			String token = json.get("access_token").toString();// 네이버 로그인 접근 토큰;
	        String header = "Bearer " + token; // Bearer 다음에 공백 추가
	        try {
	            String apiURL = "https://openapi.naver.com/v1/nid/me";
	            URL url = new URL(apiURL);
	            HttpURLConnection con = (HttpURLConnection)url.openConnection();
	            con.setRequestMethod("GET");
	            con.setRequestProperty("Authorization", header);
	            int responseCode = con.getResponseCode();
	            BufferedReader br;
	            if(responseCode==200) { // 정상 호출
	                br = new BufferedReader(new InputStreamReader(con.getInputStream()));
	            } else {  // 에러 발생
	                br = new BufferedReader(new InputStreamReader(con.getErrorStream()));
	            }
	            String inputLine;
	            StringBuffer response = new StringBuffer();
	            while ((inputLine = br.readLine()) != null) {
	                response.append(inputLine);
	            }
	            br.close();
	            JSONParser parser = new JSONParser();
	            System.out.println(response.toString());
	            json = (JSONObject) parser.parse(response.toString());
	            json = (JSONObject) parser.parse(json.get("response").toString());
	            
	            String result = memberDao.idCheck((String)json.get("email"));
	            
	            if(result.equals("0")) {
	            	session.setAttribute("mem_id", (String)json.get("email"));
		            session.setAttribute("mem_nick", (String)json.get("nickname"));
		            session.setAttribute("mem_name", (String)json.get("name"));
		            nextpage = "redirect:register.do";
		            
	            } else {
	            	MemberVO vo = memberDao.memberById((String)json.get("email"));
	            	session.setAttribute("mem_id", vo.getMem_id());	
	    			session.setAttribute("mem_state", vo.getMem_state());
	    			session.setAttribute("mem_nick", vo.getMem_nick());
	    			session.setAttribute("mem_name", vo.getMem_name());
	            	nextpage = "/main/main";
	            }
	        } catch (Exception e) {
	            System.out.println(e);
	        }
			return nextpage;
		}
		
		//ajax -> 아이디 중복확인
			@RequestMapping(value="idCheck.do")
			@ResponseBody
			public String idCheck(String mem_id){
				String result = memberDao.idCheck(mem_id);
				return result;
			}
		//닉네임 중복확인
			@RequestMapping(value="nickCheck.do")
			@ResponseBody
			public String nickCheck(String mem_nick){
				String result = memberDao.nickCheck(mem_nick);
				return result;
			}
}