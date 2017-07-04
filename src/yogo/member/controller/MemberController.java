package yogo.member.controller;

import java.io.BufferedReader;
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
	public String register(){
		return "/join/register";
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
		String msg = "가입실패";
		int result = memberDao.memberInsert(vo);
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
		
		@RequestMapping(value="naverlogin.do")
		public String naverlogin(String code, String state, HttpSession session) {
			JSONObject json = new JSONObject();
			String next_apiURL;
			String clientId = "zE5y1nty2rQY7EdwF341";//애플리케이션 클라이언트 아이디값";
			String clientSecret = "bvrp6O39Bq";//애플리케이션 클라이언트 시크릿값";
			String redirectURI = "";
			try {
				redirectURI = URLEncoder.encode("192.168.0.178/YogoYogo4/loginView.do", "UTF-8");
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
	            MemberVO vo = new MemberVO();
//	            vo.setMem_id((String)json.get("email"));
//	            vo.setMem_nick((String)json.get("nickname"));
	            session.setAttribute("mem_name", json.get("nickname").toString());
	        } catch (Exception e) {
	            System.out.println(e);
	        }
			 
			return "/main/main";
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