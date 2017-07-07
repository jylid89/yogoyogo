package yogo.pos.dto;

public class PosVO {

	/* 푸드트럭번호 */
	private String truck_num;
	/* 메뉴이름 */
	private String menu_name;
	/* 가격 */
	private String menu_price;
	/* 메뉴 사진*/
	private String menu_picreal;
	/* 푸드트럭 명*/
	private String truck_name;
	/* 포스 번호 */
	private String pos_num;
	/* 포스 일자*/
	private String pos_date;
	/* 포스 총 금액*/
	private int pos_totprice;
	/* 포스 주문번호*/
	private String pos_order;
	
	public String getMenu_picreal() {
		return menu_picreal;
	}
	public void setMenu_picreal(String menu_picreal) {
		this.menu_picreal = menu_picreal;
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
	public String getMenu_price() {
		return menu_price;
	}
	public void setMenu_price(String menu_price) {
		this.menu_price = menu_price;
	}
	public String getTruck_name() {
		return truck_name;
	}
	public void setTruck_name(String truck_name) {
		this.truck_name = truck_name;
	}
	public String getPos_num() {
		return pos_num;
	}
	public void setPos_num(String pos_num) {
		this.pos_num = pos_num;
	}
	public String getPos_date() {
		return pos_date;
	}
	public void setPos_date(String pos_date) {
		this.pos_date = pos_date;
	}
	
	
	public int getPos_totprice() {
		return pos_totprice;
	}
	public void setPos_totprice(int pos_totprice) {
		this.pos_totprice = pos_totprice;
	}
	public String getPos_order() {
		return pos_order;
	}
	public void setPos_order(String pos_order) {
		this.pos_order = pos_order;
	}
	
	
}
