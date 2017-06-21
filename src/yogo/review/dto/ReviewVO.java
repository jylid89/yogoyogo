package yogo.review.dto;

public class ReviewVO {

	/* 리뷰번호 */
	private String rev_num;
	/* 트럭번호 */
	private String truck_num;
	/* 회원 아이디 */
	private String mem_id;
	/* 리뷰 제목 */
	private String rev_title;
	/* 리뷰 내용 */
	private String rev_content;
	/* 리뷰 작성일 */
	private String rev_date;
	/* 회원 닉네임 */
	private String mem_nick;
	
	
	public String getRev_num() {
		return rev_num;
	}
	public void setRev_num(String rev_num) {
		this.rev_num = rev_num;
	}
	public String getTruck_num() {
		return truck_num;
	}
	public void setTruck_num(String truck_num) {
		this.truck_num = truck_num;
	}
	public String getMem_id() {
		return mem_id;
	}
	public void setMem_id(String mem_id) {
		this.mem_id = mem_id;
	}
	public String getRev_title() {
		return rev_title;
	}
	public void setRev_title(String rev_title) {
		this.rev_title = rev_title;
	}
	public String getRev_content() {
		return rev_content;
	}
	public void setRev_content(String rev_content) {
		this.rev_content = rev_content;
	}
	public String getRev_date() {
		return rev_date;
	}
	public void setRev_date(String rev_date) {
		this.rev_date = rev_date;
	}
	public String getMem_nick() {
		return mem_nick;
	}
	public void setMem_nick(String mem_nick) {
		this.mem_nick = mem_nick;
	}
	
	
	
	
}
