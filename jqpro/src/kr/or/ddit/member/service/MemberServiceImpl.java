package kr.or.ddit.member.service;

import java.util.List;

import kr.or.ddit.member.dao.IMemberDao;
import kr.or.ddit.member.dao.MemberDaoImpl;
import kr.or.ddit.member.vo.MemberVO;
import kr.or.ddit.member.vo.ZipVO;

public class MemberServiceImpl implements IMemberService {
	
	private IMemberDao dao;
	private static IMemberService service;
	private MemberServiceImpl() {
		dao = MemberDaoImpl.getDao();
	}
	
	public static IMemberService getService() {
		if(service == null) service = new MemberServiceImpl();
		return service;
	}
	@Override
	public String idSearch(String userId) {
		return dao.idSearch(userId);
	}

	@Override
	public String insertMember(MemberVO vo) {
		return dao.insertMember(vo);
	}

	@Override
	public List<ZipVO> selectZipcode(String dong) {
		return dao.selectZipcode(dong);
	}

}
