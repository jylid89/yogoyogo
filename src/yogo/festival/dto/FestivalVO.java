package yogo.festival.dto;

import org.springframework.web.multipart.MultipartFile;

public class FestivalVO {
	
	/* 행사 글 번호 */
	private String event_num;
	
	/* 회원 id */
	private String mem_id;
	
	/* 행사지역 */
	private String event_loc;
	
	/* 행사 글 제목 */
	private String event_name;
	
	/* 행사 글 내용 */
	private String event_content;
	
	/* 주최사 */
	private String event_comp;
	
	/* 사진임시경로 */
	private MultipartFile event_pictemp;
	
	/* 사진실제경로 */
	private String event_picreal;
	
	/* 지도좌표 */
	private String event_map;
	
	/* 글 게시한 날짜 */
	private String event_date;
	
	/* 행사 시작 날짜 */
	private String event_start;
	
	/* 행사 끝나는 날짜 */
	private String event_end;
	
	/* 이벤트 승인 번호 */
	private String eveconf_num;
	
	/* 업데이트 안할 시 원래 사진*/
	private String exFile;
	
	public String getExFile() {
		return exFile;
	}
	public void setExFile(String exFile) {
		this.exFile = exFile;
	}
	public String getTruck_num() {
		return truck_num;
	}
	public void setTruck_num(String truck_num) {
		this.truck_num = truck_num;
	}
	/* 트럭 번호 */
	private String truck_num;
	
	public String getEvent_num() {
		return event_num;
	}
	public void setEvent_num(String event_num) {
		this.event_num = event_num;
	}
	public String getMem_id() {
		return mem_id;
	}
	public void setMem_id(String mem_id) {
		this.mem_id = mem_id;
	}
	public String getEvent_loc() {
		return event_loc;
	}
	public void setEvent_loc(String event_loc) {
		this.event_loc = event_loc;
	}
	public String getEvent_name() {
		return event_name;
	}
	public void setEvent_name(String event_name) {
		this.event_name = event_name;
	}
	public String getEvent_content() {
		return event_content;
	}
	public void setEvent_content(String event_content) {
		this.event_content = event_content;
	}
	public String getEvent_comp() {
		return event_comp;
	}
	public void setEvent_comp(String event_comp) {
		this.event_comp = event_comp;
	}
	public MultipartFile getEvent_pictemp() {
		return event_pictemp;
	}
	public void setEvent_pictemp(MultipartFile event_pictemp) {
		
		
		this.event_pictemp = event_pictemp;
	}
	public String getEvent_picreal() {
		return event_picreal;
	}
	public void setEvent_picreal(String event_picreal) {
		this.event_picreal = event_picreal;
	}
	public String getEvent_map() {
		return event_map;
	}
	public void setEvent_map(String event_map) {
		this.event_map = event_map;
	}
	public String getEvent_date() {
		return event_date;
	}
	public void setEvent_date(String event_date) {
		this.event_date = event_date;
	}
	public String getEvent_start() {
		return event_start;
	}
	public void setEvent_start(String event_start) {
		this.event_start = event_start;
	}
	public String getEvent_end() {
		return event_end;
	}
	public void setEvent_end(String event_end) {
		this.event_end = event_end;
	}
	public String getEveconf_num() {
		return eveconf_num;
	}
	public void setEveconf_num(String eveconf_num) {
		this.eveconf_num = eveconf_num;
	}
	
	
}
