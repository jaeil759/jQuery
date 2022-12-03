<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
//클라이언트 요청시 전송 데이타 받기 
  String userId = request.getParameter("id");
  String userPass = request.getParameter("pass");
  
     //db를 이용하여  crud 처리 
    //처리결과값을 출력  - 텍스트 기반으 json object데이타를 생성 - client로 전달   
 %>
 
 {
    "tel"  : "010-1234-5678",
    "email"  : "abc12345@ddit.or.kr",
    "addr"   : "대전 중구"
   
 }
 
 
 
 