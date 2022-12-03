package kr.or.ddit.lprod.service;

import java.util.List;

import kr.or.ddit.lprod.dao.ILprodDao;
import kr.or.ddit.lprod.dao.LprodDaoImpl;
import kr.or.ddit.lprod.vo.LprodVO;

public class LprodServiceImpl implements ILprodService {

	// dao객체
	private ILprodDao dao;
	// 자신의 객체
	private static ILprodService service;
	//생성자
	private LprodServiceImpl() {
		//dao 객체 얻어오기
		dao = LprodDaoImpl.getDao();
	}
	
	//자신의 객체를 생성하여 리턴
	public static ILprodService getService() {
		if(service == null) service = new LprodServiceImpl();
		return service;
		
	}
	
	
	
	
	@Override
	public List<LprodVO> lprodList() {
		List<LprodVO> list = null;
		list = dao.lprodList();
		
		return list;
	}

}
