package kr.or.ddit.member.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.or.ddit.member.service.IMemberService;
import kr.or.ddit.member.service.MemberServiceImpl;
import kr.or.ddit.member.vo.MemberVO;

/**
 * Servlet implementation class Insert
 */
@WebServlet("/Insert.do")
public class Insert extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public Insert() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		String id = request.getParameter("mem_id");
		String name = request.getParameter("mem_name");
		String pass = request.getParameter("mem_pass");
		String bir = request.getParameter("mem_bir");
		String mail = request.getParameter("mem_mail");
		String hp = request.getParameter("mem_hp");
		String zip = request.getParameter("mem_zip");
		String add1 = request.getParameter("mem_add1");
		String add2 = request.getParameter("mem_add2");
		
		MemberVO vo = new MemberVO();
		vo.setMem_id(id);
		vo.setMem_name(name);
		vo.setMem_pass(pass);
		vo.setMem_bir(bir);
		vo.setMem_mail(mail);
		vo.setMem_hp(hp);
		vo.setMem_zip(zip);
		vo.setMem_add1(add1);
		vo.setMem_add2(add2);
		
		IMemberService service = MemberServiceImpl.getService();
		String resid = service.insertMember(vo);
		
		request.setAttribute("resok", resid);
		request.getRequestDispatcher("1004/result.jsp").forward(request, response);
		
		
		
	}
	
	

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
