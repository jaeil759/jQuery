<%@page import="kr.or.ddit.buyer.vo.BuyerVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   
    
    <% 

       // Servlet에서 저장된 결과값 꺼내기
         // 결과값과 같은 자료형을 형변환 필수
       List<BuyerVO> list = (List<BuyerVO>) request.getAttribute("listvalue");   
    %>
    
    
    
    
    [
    
    <%
       for(int i = 0; i < list.size(); i++) {
          BuyerVO vo = list.get(i);
          if(i > 0) out.print(",");
    %>   
       
       {
          "id" : "<%= vo.getBuyer_id() %>",
          "name" : "<%= vo.getBuyer_name() %>"   
       }
       
    <% 
       } 
    %>

      
    ]
    
    
    
    
