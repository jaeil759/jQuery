package kr.or.ddit.board.controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sun.xml.internal.fastinfoset.vocab.SerializerVocabulary;

import kr.or.ddit.board.service.BoardServiceImpl;
import kr.or.ddit.board.service.IBoardService;
import kr.or.ddit.board.vo.BoardVO;
import kr.or.ddit.board.vo.PageVO;

/**
 * Servlet implementation class ListPage
 */
@WebServlet("/ListPage.do")
public class ListPage extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		// 0. 클라이언트 요청시 전송되는 데이터를 받는다 - 페이지번호, 검색기준컬럼(writer,subject,content), 검색값 : 홍길동, 1글자, 5글자
		String spage = request.getParameter("page");
		
		int cpage = Integer.parseInt(spage);
		
		// 최초로 실행 stype과 sword의 값이 존재하지 않는다.
		String stype = request.getParameter("stype");
		String sword = request.getParameter("sword");
		
		IBoardService service = BoardServiceImpl.getInstance();
		// start, end값을 계산 - page번호가 기준
		
		PageVO vo = service.pageInfo(cpage, stype, sword);
		
		Map<String, Object>map = new HashMap<String, Object>();
		map.put("start", vo.getStart());
		map.put("end", vo.getEnd());
		map.put("stype", stype);
		map.put("sword", sword);
		
		
		
		
		
		// 1. service객체 얻어오기
		
		// 2. service메소드 호출 - 결과값 받기
		List<BoardVO> list = service.listByPage(map);
		// 3. request에 결과값 저장하기
		request.setAttribute("list", list);
	      request.setAttribute("sPage", vo.getStartPage());
	      request.setAttribute("ePage", vo.getEndPage());
	      request.setAttribute("tPage", vo.getTotalPage());
		// 4. view페이지로 이동
		request.getRequestDispatcher("View/list.jsp").forward(request, response);
		
		
	}
	

}
