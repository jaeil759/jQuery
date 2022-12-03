package kr.or.ddit.board.service;

import java.util.List;
import java.util.Map;

import kr.or.ddit.board.vo.BoardVO;
import kr.or.ddit.board.vo.PageVO;

public interface IBoardService {
	public List<BoardVO> listByPage(Map<String, Object>map);
	
	// 페이지 정보 추출 - start, end, starPage, endPage, totalPage
	public PageVO pageInfo(int page, String type, String word);
	
	// 전체 글갯수 가져오기
	public int totalCount(Map<String, Object> map);
	
	
	
	
}
	