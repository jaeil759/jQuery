package kr.or.ddit.member.dao;

import java.sql.SQLException;
import java.util.List;

import com.ibatis.sqlmap.client.SqlMapClient;

import kr.or.ddit.ibatis.config.SqlMapclientFactory;
import kr.or.ddit.member.vo.MemberVO;
import kr.or.ddit.member.vo.ZipVO;

public class MemberDaoImpl implements IMemberDao {
	private SqlMapClient smc;
	private static IMemberDao dao;
	private MemberDaoImpl() {
		smc = SqlMapclientFactory.getSqlMapClient();
		
	}
	public static IMemberDao getDao() {
		if(dao == null) dao = new MemberDaoImpl();
		return dao;
	}
	@Override
	public String idSearch(String userId) {
		String id = null;
		try {
			id = (String) smc.queryForObject("member.idSearch", userId);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return id;
	}

	@Override
	public String insertMember(MemberVO vo) {
		String insert = null;
		try {
			insert = (String) smc.insert("member.insertMember", vo);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return insert;
	}

	@Override
	public List<ZipVO> selectZipcode(String dong) {
		List<ZipVO> list = null;
		try {
			list = smc.queryForList("member.selectZipcode", dong);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}

}
