package kr.or.ddit.prod.dao;

import java.util.List;

import com.ibatis.sqlmap.client.SqlMapClient;

import kr.or.ddit.prod.vo.ProdVO;

public class ProdDaoImpl implements IProdDao {
	private SqlMapClient client;
	private static IProdDao dao;
	@Override
	public List<ProdVO> selectProdNames(String lprod_gu) {
		List<ProdVO> list = null;
		list = client.queryForList("prod");
		return null;
	}

	@Override
	public ProdVO prodIdByDetail(String prod_id) {
		// TODO Auto-generated method stub
		return null;
	}

}
