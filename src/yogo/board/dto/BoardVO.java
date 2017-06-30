package yogo.board.dto;

import org.springframework.web.multipart.MultipartFile;

public class BoardVO {

	/* 게시판 글 번호 */
	private String board_num;
	/* 고객 아이디 */
	private String mem_id;
	/* 게시판 구분 */
	private String board_state;
	/* 게시판 제목 */
	private String board_title;
	/* 게시판 내용 */
	private String board_content;
	/* 게시판 일자 */
	private String board_time;
	/* 게시판 조회수 */
	private String board_count;
	/* 게시판 진짜 사진 경로 */
	private String board_picreal;
	/* 게시판 가짜 사진 경로 */
	private  MultipartFile board_pictemp;
	/* 고객 닉네임  */
	private String mem_nick;
	
	
	public String getMem_nick() {
		return mem_nick;
	}
	public void setMem_nick(String mem_nick) {
		this.mem_nick = mem_nick;
	}
	/* 게터세터 */
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
	public MultipartFile getBoard_pictemp() {
		return board_pictemp;
	}
	public void setBoard_pictemp(MultipartFile board_pictemp) {
		this.board_pictemp = board_pictemp;
	}
	
}
