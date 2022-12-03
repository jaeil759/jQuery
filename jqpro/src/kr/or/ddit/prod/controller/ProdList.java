package kr.or.ddit.prod.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.or.ddit.prod.service.IProdService;

/**
 * Servlet implementation class ProdList
 */
@WebServlet("/ProdList.do")
public class ProdList extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
    public ProdList() {
        super();
        // TODO Auto-generated constructor stub
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//ProdDetail
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// ProdList
		
		// 0. 클라이언트 요청시 전송되는 값을 받는다
		String lgu = request.getParameter("gu");
		
		// 1. service객체 얻기
		IProdService service = ProdService
		// 2. service메소드 호출 - 결과값 받기
		
		// 3. request에 결과값 저장하기
		
		// 4. view페이지로 이동 -0930/prodList.jsp
	}

}
