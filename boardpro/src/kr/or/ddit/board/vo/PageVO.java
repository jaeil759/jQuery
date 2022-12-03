package kr.or.ddit.board.vo;

public class PageVO {
	private int start;	// 현재 페이지 글리스트 내의 시작 번호
	private int end;	// 현재 페이지 글리스트 내의 끝번호
	private int startPage;// 브라우저에 출력되는 시작 페이지
	private int endPage; //브라우저에 출력되는 시작 페이지
	
	private int totalPage; // 전체페이지
	private int count; // 전체 글 개수
	
	private static int perList = 5;	// 한 페이지당 출력되는 글의 갯수
	private static int perPage = 2; // 브라우저에 출력되는 페이지의 개수
	public int getStart() {
		return start;
	}
	public void setStart(int start) {
		this.start = start;
	}
	public int getEnd() {
		return end;
	}
	public void setEnd(int end) {
		this.end = end;
	}
	public int getStartPage() {
		return startPage;
	}
	public void setStartPage(int startPage) {
		this.startPage = startPage;
	}
	public int getEndPage() {
		return endPage;
	}
	public void setEndPage(int endPage) {
		this.endPage = endPage;
	}
	public int getTotalPage() {
		return totalPage;
	}
	public void setTotalPage(int totalPage) {
		this.totalPage = totalPage;
	}
	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}
	public static int getPerList() {
		return perList;
	}
	public static void setPerList(int perList) {
		PageVO.perList = perList;
	}
	public static int getPerPage() {
		return perPage;
	}
	public static void setPerPage(int perPage) {
		PageVO.perPage = perPage;
	}
	
	
}
