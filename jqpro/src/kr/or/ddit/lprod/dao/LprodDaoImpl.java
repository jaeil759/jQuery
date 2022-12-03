package kr.or.ddit.lprod.dao;

import java.sql.SQLException;
import java.util.List;

import com.ibatis.sqlmap.client.SqlMapClient;

import kr.or.ddit.ibatis.config.SqlMapclientFactory;
import kr.or.ddit.lprod.vo.LprodVO;

public class LprodDaoImpl implements ILprodDao {

	private SqlMapClient client;
	private static ILprodDao dao;
	//sqlMapClient 객체
	
	//자신의 객체
	
	//생성자
	private LprodDaoImpl() {
		//sqlMapClient 객체 가져오기
		client = SqlMapclientFactory.getSqlMapClient();
	}
	// 자신의 객체를 생성하여 리턴
	public static ILprodDao getDao() {
		if(dao==null)dao = new LprodDaoImpl();
		return dao;
	}
	
	
	@Override
	public List<LprodVO> lprodList() {
		List<LprodVO> list = null;
		try {
			list = client.queryForList("lprod.lprodList");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return list;
	}

}
