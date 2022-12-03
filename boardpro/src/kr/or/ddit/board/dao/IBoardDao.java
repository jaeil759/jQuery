package kr.or.ddit.board.dao;

import java.util.List;
import java.util.Map;

import kr.or.ddit.board.vo.BoardVO;

public interface IBoardDao {
	public List<BoardVO> listByPage(Map<String, Object>map);
	
	// 전체 글갯수 가져오기
		public int totalCount(Map<String, Object> map);
}
	

