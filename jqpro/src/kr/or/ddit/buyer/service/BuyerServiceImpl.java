package kr.or.ddit.buyer.service;

import java.util.List;

import kr.or.ddit.buyer.dao.BuyerDaoImpl;
import kr.or.ddit.buyer.dao.IBuyerDao;
import kr.or.ddit.buyer.vo.BuyerVO;


/*
 * 자신의 객체를 생성해서 리턴
 * dao객체가 필요 
 */

public class BuyerServiceImpl implements IBuyerService {
	
	private static IBuyerService service;
	private IBuyerDao dao;
	
	private BuyerServiceImpl() {
		dao = BuyerDaoImpl.getDao();
	}
	public static IBuyerService getService() {
		if(service == null) service = new BuyerServiceImpl();
		
		return service;
		
	}
	@Override
	public List<BuyerVO> getBuyerNames() {
		List<BuyerVO> list = null;
		list = dao.getBuyerNames();
		
		return list;
	}

	@Override
	public BuyerVO getDetail(String id) {
		BuyerVO vo = null;
		vo = dao.getDetail(id);
		return vo;
	}

}
