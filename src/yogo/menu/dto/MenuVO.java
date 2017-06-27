package yogo.menu.dto;

public class MenuVO {
	/* 메뉴번호 */
	private String menu_num;
	/* 푸드트럭번호 */
	private String truck_num;
	/* 메뉴이름 */
	private String menu_name;
	/* 메뉴설명 */
	private String menu_content;
	/* 사진임시경로 */
	private String menu_pictemp;
	/* 사진실제경로 */
	private String menu_picreal;
	/* 가격 */
	private String menu_price;	
	/* 카테고리 */
	private String menu_cate;
	/* 푸드트럭 명*/
	private String truck_name;
	/* 푸드트럭 주소*/
	private String truck_addr;
	
	public String getMenu_num() {
		return menu_num;
	}
	public void setMenu_num(String menu_num) {
		this.menu_num = menu_num;
	}
	public String getTruck_num() {
		return truck_num;
	}
	public void setTruck_num(String truck_num) {
		this.truck_num = truck_num;
	}
	public String getMenu_name() {
		return menu_name;
	}
	public void setMenu_name(String menu_name) {
		this.menu_name = menu_name;
	}
	public String getMenu_content() {
		return menu_content;
	}
	public void setMenu_content(String menu_content) {
		this.menu_content = menu_content;
	}
	public String getMenu_pictemp() {
		return menu_pictemp;
	}
	public void setMenu_pictemp(String menu_pictemp) {
		this.menu_pictemp = menu_pictemp;
	}
	public String getMenu_picreal() {
		return menu_picreal;
	}
	public void setMenu_picreal(String menu_picreal) {
		this.menu_picreal = menu_picreal;
	}
	public String getMenu_price() {
		return menu_price;
	}
	public void setMenu_price(String menu_price) {
		this.menu_price = menu_price;
	}
	public String getMenu_cate() {
		return menu_cate;
	}
	public void setMenu_cate(String menu_cate) {
		this.menu_cate = menu_cate;
	}
	public String getTruck_name() {
		return truck_name;
	}
	public void setTruck_name(String truck_name) {
		this.truck_name = truck_name;
	}
	public String getTruck_addr() {
		return truck_addr;
	}
	public void setTruck_addr(String truck_addr) {
		this.truck_addr = truck_addr;
	}	
}
