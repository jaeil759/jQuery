<%@page import="com.ibatis.sqlmap.client.SqlMapClient"%>
<%@page import="kr.or.ddit.member.vo.MemberVO"%>
<%@page import="java.util.List"%>
<%@page import="kr.or.ddit.ibatis.config.SqlMapclientFactory"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
//클라이언트 요청시 전송 데이타 받기 

//db를 이용하여  crud 처리 

// SqlMapClient객체를 얻어온다
	SqlMapClient client = SqlMapclientFactory.getSqlMapClient();
// sql문 실행
	List<MemberVO> list = client.queryForList("member.memberList");
//처리결과값을 출력  - json object 배열데이타를 생성 - client로 전달 
%>
[
	
<% 	for(int i = 0; i <list.size(); i++){
	MemberVO vo = list.get(i);
	if(i > 0) out.print(",");
		
	
	%>	
		{
			"id"   : "<%= vo.getMem_id() %>",
			"name" : "<%= vo.getMem_name() %>",
			"hp"   : "<%= vo.getMem_hp() %>",
			"addr" : "<%= vo.getMem_add1() %>",
			"mail" : "<%= vo.getMem_mail() %>"
		}
	
	
	<% } %>
	
	
]