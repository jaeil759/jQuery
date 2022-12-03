package kr.or.ddit.buyer.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.or.ddit.buyer.service.BuyerServiceImpl;
import kr.or.ddit.buyer.service.IBuyerService;
import kr.or.ddit.buyer.vo.BuyerVO;

/**
 * Servlet implementation class BuyerDetail
 */
@WebServlet("/BuyerDetail.do")
public class BuyerDetail extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//0. 클라이언트 요청시 전송되는 값을 받는다.
		String buyId = request.getParameter("id");
		//1. service객체를 얻는다
		IBuyerService service = BuyerServiceImpl.getService();
		
		//2. Service메소드 호출 - 결과값 받기
		BuyerVO vo = service.getDetail(buyId);
		
		//3. request에 저장
		request.setAttribute("aaa", vo);

		//4. jsp로 forward
		// json데이터를 생성 하여 클라이언트로 응답하기 위함
		RequestDispatcher disp = request.getRequestDispatcher("0928/buyerDetail.jsp");
		
		// html데이터를 생성 클라이언트 응답
//		RequestDispatcher disp = request.getRequestDispatcher("0929/buyerDetail.jsp");
		disp.forward(request,response);
	
	}

}
