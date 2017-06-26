package yogo.activity.dto;

public class ActivityVO {

	/* 활동 글 시퀀스 넘버 */
	private String mark_num;
	/* 트럭 차 번호 */
	private String truck_num;
	/* 활동 내용 */
 	private String mark_content;
 	/* 활동 일자 */
 	private String mark_date;
 	/* 사진 보여지는 경로  */
 	private String mark_pictemp;
 	 /* 사진 진짜 경로 */
	private String mark_picreal;
	/* 홍보 시작날짜 */
	private String event_start;
	
	
	public String getEvent_start() {
		return event_start;
	}
	public void setEvent_start(String event_start) {
		this.event_start = event_start;
	}
	public String getMark_num() {
		return mark_num;
	}
	public void setMark_num(String mark_num) {
		this.mark_num = mark_num;
	}
	public String getTruck_num() {
		return truck_num;
	}
	public void setTruck_num(String truck_num) {
		this.truck_num = truck_num;
	}
	public String getMark_content() {
		return mark_content;
	}
	public void setMark_content(String mark_content) {
		this.mark_content = mark_content;
	}
	public String getMark_date() {
		return mark_date;
	}
	public void setMark_date(String mark_date) {
		this.mark_date = mark_date;
	}
	public String getMark_pictemp() {
		return mark_pictemp;
	}
	public void setMark_pictemp(String mark_pictemp) {
		this.mark_pictemp = mark_pictemp;
	}
	public String getMark_picreal() {
		return mark_picreal;
	}
	public void setMark_picreal(String mark_picreal) {
		this.mark_picreal = mark_picreal;
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}


