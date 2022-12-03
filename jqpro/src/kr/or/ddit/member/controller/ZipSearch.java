package kr.or.ddit.member.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

import kr.or.ddit.member.service.IMemberService;
import kr.or.ddit.member.service.MemberServiceImpl;
import kr.or.ddit.member.vo.ZipVO;

/**
 * Servlet implementation class ZipSearch
 */
@WebServlet("/ZipSearch.do")
public class ZipSearch extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 0. 클라이언트에서 요청시 전송되는 값을 받는다.
		String dong = request.getParameter("id");
		// 1. service객체 얻기
		IMemberService service = MemberServiceImpl.getService();
		// 2. 서비스 메소드 호출 - 결과값 받기
		List<ZipVO> list = service.selectZipcode(dong);
		// 3. request에 저장
		// json 데이터 생성
	      response.setContentType("application/json; charset=utf-8");      // jsp에서는 쓰지 않아도 됨 
	      PrintWriter out = response.getWriter();                     // jsp에서는 쓰지 않아도 됨
	      
	      Gson gson = new Gson();
	      String result = gson.toJson(list);
	      out.print(result);
	      
//	      // request에 저장하기
//	      request.setAttribute("ziplist", list);
//	      
//	      // view페이지로 넘기기
//	      request.getRequestDispatcher(request.getContextPath() + "/1004/zipResult").forward(request, response);
		
		
		
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
