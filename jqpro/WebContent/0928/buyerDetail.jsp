<%@page import="kr.or.ddit.buyer.vo.BuyerVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

	<%
		BuyerVO bv = (BuyerVO) request.getAttribute("aaa");
	
	%>
	
	{
		"id"    : "<%= bv.getBuyer_id() %>",
		"name"  : "<%= bv.getBuyer_name() %>",
		"bank"  : "<%= bv.getBuyer_bank() %>",
		"bname" : "<%= bv.getBuyer_bankname() %>",
		"bno"   : "<%= bv.getBuyer_bankno() %>",
		"lgu"   : "<%= bv.getBuyer_lgu() %>",
		"mail"  : "<%= bv.getBuyer_mail() %>",
		"add1"  : "<%= bv.getBuyer_add1() %>",
		"add2"  : "<%= bv.getBuyer_add2() %>"
	}
	
	