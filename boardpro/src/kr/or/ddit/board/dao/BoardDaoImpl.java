package kr.or.ddit.board.dao;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import com.ibatis.sqlmap.client.SqlMapClient;

import kr.or.ddit.board.vo.BoardVO;
import kr.or.ddit.ibatis.config.SqlMapclientFactory;

public class BoardDaoImpl implements IBoardDao {

	private SqlMapClient client;
	private static IBoardDao dao;
	
	private BoardDaoImpl() {
		client = SqlMapclientFactory.getSqlMapClient();
	}
	public static IBoardDao getDao() {
		if(dao == null) dao = new BoardDaoImpl();
		return dao;
	}
	
	
	@Override
	public List<BoardVO> listByPage(Map<String, Object> map) {
		List<BoardVO> list = null;
		try {
			list = client.queryForList("board.listByPage", map);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return list;
	}
	@Override
	public int totalCount(Map<String, Object> map) {
		int count = 0;
		try {
			count = (int) client.queryForObject("board.totalCount", map);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
				
		return count;
	}

}
