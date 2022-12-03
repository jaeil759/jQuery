<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    <%
    	// servlet 에서 저장된 결과값 꺼내기
    	String res = (String)request.getAttribute("");
    if(res !=null){
    %>
    
    {
    	"flag" : "성공, ㅊㅊ"
    
    }
    
    
    
    
    
    
    <% }else{%>
    
	{
		"flag" : "실패,저런~"	
	}    
    
    
    <%
    }
    %>