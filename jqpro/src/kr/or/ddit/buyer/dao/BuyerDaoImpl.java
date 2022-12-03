package kr.or.ddit.buyer.dao;

import java.sql.SQLException;
import java.util.List;

import com.ibatis.sqlmap.client.SqlMapClient;

import kr.or.ddit.buyer.vo.BuyerVO;
import kr.or.ddit.ibatis.config.SqlMapclientFactory;


/*
 * SqlMapClient 가 필요
 * 자신의 객체를 생성해서 return 메소드
 */


public class BuyerDaoImpl implements IBuyerDao{
	private SqlMapClient client;
	private static IBuyerDao dao;
	//생성자
	private BuyerDaoImpl() {
		client = SqlMapclientFactory.getSqlMapClient();
	}
	public static IBuyerDao getDao() {
		if(dao==null)dao = new BuyerDaoImpl();
		return dao;
	}
	@Override
	public List<BuyerVO> getBuyerNames() {
		List<BuyerVO> list = null;
		try {
			list = client.queryForList("buyer.getBuyerNames");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return list;
	}


	@Override
	public BuyerVO getDetail(String id) {
		BuyerVO vo = null;
		try {
			vo = (BuyerVO) client.queryForObject("buyer.getDetail", id);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
				
		return vo;
	}
	
}
