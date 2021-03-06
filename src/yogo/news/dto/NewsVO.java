package yogo.news.dto;

public class NewsVO {

	/* 뉴스 번호 */
	private String board_num;
	
	/* 아이디 */
	private String mem_id;
	
	/* 상태 */
	private String board_state;
	
	/* 제목 */
	private String board_title;
	
	/* 내용 */
	private String board_content;
	
	/* 작성시간 */
	private String board_time;
	
	/* 조회수 */
	private String board_count;
	
	/* 이미지경로 */
	private String board_picreal;

	public String getBoard_num() {
		return board_num;
	}

	public void setBoard_num(String board_num) {
		this.board_num = board_num;
	}

	public String getMem_id() {
		return mem_id;
	}

	public void setMem_id(String mem_id) {
		this.mem_id = mem_id;
	}

	public String getBoard_state() {
		return board_state;
	}

	public void setBoard_state(String board_state) {
		this.board_state = board_state;
	}

	public String getBoard_title() {
		return board_title;
	}

	public void setBoard_title(String board_title) {
		this.board_title = board_title;
	}

	public String getBoard_content() {
		return board_content;
	}

	public void setBoard_content(String board_content) {
		this.board_content = board_content;
	}

	public String getBoard_time() {
		return board_time;
	}

	public void setBoard_time(String board_time) {
		this.board_time = board_time;
	}

	public String getBoard_count() {
		return board_count;
	}

	public void setBoard_count(String board_count) {
		this.board_count = board_count;
	}

	public String getBoard_picreal() {
		return board_picreal;
	}

	public void setBoard_picreal(String board_picreal) {
		this.board_picreal = board_picreal;
	}
	
	
}


