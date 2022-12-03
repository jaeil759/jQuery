package kr.or.ddit.buyer.controller;

import java.io.IOException;
import java.util.List;

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
 * Servlet implementation class BuyerNames
 */
@WebServlet("/BuyerNames.do")
public class BuyerNames extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BuyerNames() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 0. 클라이언트 요청시 전송되는 데이터받기
		
				// 1. service개체 얻기
				IBuyerService service = BuyerServiceImpl.getService();
				// 2. service메소드 호출 - 결과값 받기
				List<BuyerVO> list = service.getBuyerNames();
				// 3. request객체에 결과값을 저장
				request.setAttribute("listvalue", list);
				// 4. 결과값 출력 - view 페이지로 이동
				RequestDispatcher disp = request.getRequestDispatcher("0928/buyerNames.jsp");
				disp.forward(request, response);
				
	}

}
