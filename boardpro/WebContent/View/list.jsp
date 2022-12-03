<%@page import="com.google.gson.JsonElement"%>
<%@page import="com.google.gson.Gson"%>
<%@page import="com.google.gson.JsonObject"%>
<%@page import="kr.or.ddit.board.vo.BoardVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

	<%
	   int startp = (Integer) request.getAttribute("sPage");
	   int endp = (Integer) request.getAttribute("ePage");
	   int totalp = (Integer)request.getAttribute("tPage");
		List<BoardVO> list = (List<BoardVO>) request.getAttribute("list");
		
		JsonObject job = new JsonObject();
		job.addProperty("sp", startp);
		job.addProperty("ep", endp);
		job.addProperty("tp", totalp);
		
		Gson gson = new Gson();
		JsonElement ele = gson.toJsonTree(list);
		
		job.add("datas", ele);
		out.print(job);
		
		
	%>
	
<%--	{
	"sp" : "<%= startp %>",
	"ep" : "<%= endp %>",
	"tp" : "<%= totalp %>",
	"datas" : [
	
	<%
		for(int i = 0; i < list.size(); i++){
		 	BoardVO vo = list.get(i);
		 	if(i > 0) out.print(",");
	%>
		 	{
		 		"num"     : "<%= vo.getNum() %>",
		 		"writer"  : "<%= vo.getWriter() %>",
		 		"subject" : "<%= vo.getSubject() %>",
		 		"hit"     : "<%= vo.getHit() %>"
	
	
		 	}
	<% 	 	
	}
	%>
	
	]
	 
}
--%>