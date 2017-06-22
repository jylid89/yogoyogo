package yogo.foodtruck.dto;

public class FoodtruckVO {
	
	/* 푸드트럭 번호 */
	private String truck_num;
	
	/* 회원 아이디 */
	private String mem_id;
	
	/* 푸드트럭 이름 */
	private String truck_name;
	
	/* 푸드트럭 장소 */
	private String truck_loc;
	
	/* 사진 첫번째 경로 */
	private String truck_pictemp1;
	
	/* 사진 실제경로 */
	private String truck_picreal1;
	
	/* 사진 두번째 경로 */
	private String truck_pic2;
	
	/* 사진 두번째 실제 경로*/
	private String truck_picreal2;
	
	/* 푸드트럭 위치 */
	private String truck_map;
	
	/* 푸드트럭 케이터링 여부 */
	private String truck_catestate;
	
	/* 푸드트럭 등록일 */
	private String truck_date;
	
	/* 푸드트럭 주소 */
	private String truck_addr;
	
	
	public FoodtruckVO() {}

	public FoodtruckVO(String truck_num, String mem_id, String truck_name, String truck_loc, String truck_pictemp1,
			String truck_picreal1, String truck_pic2, String truck_picreal2, String truck_map, String truck_catestate,
			String truck_date) {
		super();
		this.truck_num = truck_num;
		this.mem_id = mem_id;
		this.truck_name = truck_name;
		this.truck_loc = truck_loc;
		this.truck_pictemp1 = truck_pictemp1;
		this.truck_picreal1 = truck_picreal1;
		this.truck_pic2 = truck_pic2;
		this.truck_picreal2 = truck_picreal2;
		this.truck_map = truck_map;
		this.truck_catestate = truck_catestate;
		this.truck_date = truck_date;
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

	public String getTruck_name() {
		return truck_name;
	}

	public void setTruck_name(String truck_name) {
		this.truck_name = truck_name;
	}

	public String getTruck_loc() {
		return truck_loc;
	}

	public void setTruck_loc(String truck_loc) {
		this.truck_loc = truck_loc;
	}

	public String getTruck_pictemp1() {
		return truck_pictemp1;
	}

	public void setTruck_pictemp1(String truck_pictemp1) {
		this.truck_pictemp1 = truck_pictemp1;
	}

	public String getTruck_picreal1() {
		return truck_picreal1;
	}

	public void setTruck_picreal1(String truck_picreal1) {
		this.truck_picreal1 = truck_picreal1;
	}

	public String getTruck_pic2() {
		return truck_pic2;
	}

	public void setTruck_pic2(String truck_pic2) {
		this.truck_pic2 = truck_pic2;
	}

	public String getTruck_picreal2() {
		return truck_picreal2;
	}

	public void setTruck_picreal2(String truck_picreal2) {
		this.truck_picreal2 = truck_picreal2;
	}

	public String getTruck_map() {
		return truck_map;
	}

	public void setTruck_map(String truck_map) {
		this.truck_map = truck_map;
	}

	public String getTruck_catestate() {
		return truck_catestate;
	}

	public void setTruck_catestate(String truck_catestate) {
		this.truck_catestate = truck_catestate;
	}

	public String getTruck_date() {
		return truck_date;
	}

	public void setTruck_date(String truck_date) {
		this.truck_date = truck_date;
	}

	public String getTruck_addr() {
		return truck_addr;
	}

	public void setTruck_addr(String truck_addr) {
		this.truck_addr = truck_addr;
	}
	
}
