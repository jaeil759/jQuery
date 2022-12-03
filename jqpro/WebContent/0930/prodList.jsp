<%@page import="com.google.gson.JsonElement"%>
<%@page import="com.google.gson.Gson"%>
<%@page import="com.google.gson.JsonObject"%>
<%@page import="kr.or.ddit.prod.vo.ProdVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    
    
    	<%
    	
    	List<ProdVO> list = (List<ProdVO>)request.getAttribute("gu");
 		   
    	JsonObject obj = new JsonObject();
    	
    	
    	//list값이 null일수도 있고 아닐수도 있다.
    	if(list != null && list.size() >0){
    		//lprod_gu값 과 prod_lgu 값과 같은 값이 있다.
    		obj.addProperty("sw", "ok");
    		
    		
    		Gson gson = new Gson();
    		JsonElement jse = gson.toJsonTree(list);
    		
    		obj.add("data", jse);
    		
    		
    		
    		
    		
    	}else{
    		// 해당 상품이 없다.
    		obj.addProperty("sw", "no");
    	}
    	
    	%>
    	