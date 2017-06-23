package yogo.adver.dto;

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
	
	/* 트럭번호 */
	private String truck_num;
	
	/* 승인번호 */
	private String advconf_num;

	/* 회원 아이디 */
	private String mem_id;
	
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
	
	
}
