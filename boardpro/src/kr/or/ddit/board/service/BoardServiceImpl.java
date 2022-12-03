package kr.or.ddit.board.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import kr.or.ddit.board.dao.BoardDaoImpl;
import kr.or.ddit.board.dao.IBoardDao;
import kr.or.ddit.board.vo.BoardVO;
import kr.or.ddit.board.vo.PageVO;

public class BoardServiceImpl implements IBoardService {

	private IBoardDao dao;
	private static IBoardService service;
	
	private BoardServiceImpl() {
		dao = BoardDaoImpl.getDao();
	}
	
	public static IBoardService getInstance() {
		if(service ==null) service = new BoardServiceImpl();
		return service;
	}
	
	
	@Override
	public List<BoardVO> listByPage(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return dao.listByPage(map);
	}

	@Override
	public PageVO pageInfo(int page, String type, String word) {
		// 전체 글개수 구하기
		Map<String, Object> map = new HashMap<String, Object>();
	      map.put("stype", type);
	      map.put("sword", word);
	      int count = this.totalCount(map);
	      System.out.println("count ==" + count);
	      
	      int totalPage = (int)Math.ceil((double)count / PageVO.getPerList());
	      System.out.println("totalpage == " + totalPage);
	      
		int start = (page - 1) * PageVO.getPerList() + 1;
		int end = start + PageVO.getPerList() -1;
		if(end > count) end = count;
		
		// 시작페이지 끝페이지 1 2 / 3 4 / 5 6/ 7 8
		int startpage = ((page-1) / PageVO.getPerPage() * PageVO.getPerPage()) + 1;
		int endpage = startpage + PageVO.getPerPage()-1;
		if(endpage > totalPage) endpage = totalPage;
		
		System.out.println("start=" + start);
		System.out.println("end = " + end);
		
		
		PageVO vo = new PageVO();
		vo.setStart(start);
		vo.setEnd(end);
		vo.setStartPage(startpage);
		vo.setEndPage(endpage);
		vo.setTotalPage(totalPage);
		return vo;
	}

	@Override
	public int totalCount(Map<String, Object> map) {
		return dao.totalCount(map);
	}

	

}
