<%@page import="kr.or.ddit.lprod.vo.LprodVO"%>
<%@page import="java.util.List"%>
<%@page import="kr.or.ddit.ibatis.config.SqlMapclientFactory"%>
<%@page import="com.ibatis.sqlmap.client.SqlMapClient"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    
    	<%
    	//클라이언트 요청시 전송 데이타 받기 

    	//db를 이용하여  crud 처리 

    	// SqlMapClient객체를 얻어온다
    		SqlMapClient client = SqlMapclientFactory.getSqlMapClient();
    	// sql문 실행
    		List<LprodVO> list = client.queryForList("lprod.lprodList");
    	//처리결과값을 출력  - json object 배열데이타를 생성 - client로 전달 
    		
    	%>
    	[
    	
    	<% for(int i = 0; i < list.size(); i++){
    		LprodVO vo = list.get(i);
    		if(i > 0) out.print(",");
    	
    	%>
    	{
    		"id" : "<%= vo.getLprod_id() %>",
    		"nm" : "<%= vo.getLprod_nm() %>",
    		"gu" : "<%= vo.getLprod_gu() %>"
    	
    	}
    	<% } %>
    	
    	
    	
    	
    	
    	
    	
    	]