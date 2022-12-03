package kr.or.ddit.member.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.or.ddit.member.service.IMemberService;
import kr.or.ddit.member.service.MemberServiceImpl;

/**
 * Servlet implementation class IdCheck
 */
@WebServlet("/IdCheck.do")
public class IdCheck extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public IdCheck() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 0. 클라이언트 전송시 id값을 받는다.
		String userId = request.getParameter("id");
		
		// 1. service객체 얻기
		IMemberService service = MemberServiceImpl.getService();
		
		// 2. 메소드 호출 - 결과값 받기
		String result = service.idSearch(userId);
		// a001을 입력 - 결과 a001
		// korea를 입력 - 결과 null
		
		// 3. request에 저장
		request.setAttribute("result", result);
		
		// view페이지 이동
		request.getRequestDispatcher("1004/idcheck.jsp").forward(request, response);
		
	}

}
