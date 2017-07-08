package yogo.adver.dto;

import java.util.List;

public class AdverVO {

	/* 광고명 */
	private String adv_title;
	
	/* 광고내용 */
	private String adv_content;
	
	/* 조회수 */
	private int adv_count;
	
	/* 광고사 이름 */
	private String mem_nick;
	
	/* 광고번호 */
	private String adv_num;
	
	/* 광고이미지 */
	private String adv_picreal;
	
	/* 트럭번호 */
	private String truck_num;
	
	/* 승인번호 */
	private String advconf_num;

	/* 회원 아이디 */
	private String mem_id;
	
	/* 트럭명 */
	private String truck_name;
	
	/* 광고승인 거절 이유 */
	private String advconf_reason;
	
	/* flag */
	private String flag;
	
	/* 승인상태 */
	private String advconf_state;
	
	/* 임시이미지 */
	private String adv_pictemp;
	
	/* 트럭이미지1 */
	private String truck_picreal1;
	
	public String getAdv_picreal() {
		return adv_picreal;
	}

	public void setAdv_picreal(String adv_picreal) {
		this.adv_picreal = adv_picreal;
	}
	
	public String getAdv_title() {
		return adv_title;
	}

	public void setAdv_title(String adv_title) {
		this.adv_title = adv_title;
	}

	public String getAdv_content() {
		return adv_content;
	}

	public void setAdv_content(String adv_content) {
		this.adv_content = adv_content;
	}

	public int getAdv_count() {
		return adv_count;
	}

	public void setAdv_count(int adv_count) {
		this.adv_count = adv_count;
	}

	public String getMem_nick() {
		return mem_nick;
	}

	public void setMem_nick(String mem_nick) {
		this.mem_nick = mem_nick;
	}

	public String getAdv_num() {
		return adv_num;
	}

	public void setAdv_num(String adv_num) {
		this.adv_num = adv_num;
	}

	public String getTruck_num() {
		return truck_num;
	}

	public void setTruck_num(String truck_num) {
		this.truck_num = truck_num;
	}

	public String getAdvconf_num() {
		return advconf_num;
	}

	public void setAdvconf_num(String advconf_num) {
		this.advconf_num = advconf_num;
	}

	public String getMem_id() {
		return mem_id;
	}

	public void setMem_id(String mem_id) {
		this.mem_id = mem_id;
	}

	public String getTruck_name() {
		return truck_name;
	}

	public void setTruck_name(String truck_name) {
		this.truck_name = truck_name;
	}

	public String getAdvconf_reason() {
		return advconf_reason;
	}

	public void setAdvconf_reason(String advconf_reason) {
		this.advconf_reason = advconf_reason;
	}

	public String getFlag() {
		return flag;
	}

	public void setFlag(String flag) {
		this.flag = flag;
	}

	public String getAdvconf_state() {
		return advconf_state;
	}

	public void setAdvconf_state(String advconf_state) {
		this.advconf_state = advconf_state;
	}

	public String getAdv_pictemp() {
		return adv_pictemp;
	}

	public void setAdv_pictemp(String adv_pictemp) {
		this.adv_pictemp = adv_pictemp;
	}

	public String getTruck_picreal1() {
		return truck_picreal1;
	}

	public void setTruck_picreal1(String truck_picreal1) {
		this.truck_picreal1 = truck_picreal1;
	}
	
	
	
}
