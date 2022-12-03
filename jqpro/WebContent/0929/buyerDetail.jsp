<%@page import="kr.or.ddit.buyer.vo.BuyerVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

	<%
		BuyerVO bv = (BuyerVO) request.getAttribute("aaa");
	
	%>
	
	<table>
	
	
	<tr>
	<td>BUYER_ID</td>
	<td><%= bv.getBuyer_id() %></td>
	</tr>
	
	<tr>
	<td>BUYER_NAME</td>
	<td><%= bv.getBuyer_name() %></td>
	</tr>
	
	<tr>
	<td>BUYER_LGU</td>
	<td><%= bv.getBuyer_lgu() %></td>
	</tr>
	
	<tr>
	<td>BUYER_MAIL</td>
	<td><%= bv.getBuyer_mail() %></td>
	</tr>
	
	<tr>
	<td>BUYER_BANK</td>
	<td><%= bv.getBuyer_bank() %></td>
	</tr>
	
	<tr>
	<td>BUYER_BANKNAME</td>
	<td><%= bv.getBuyer_bankname() %></td>
	</tr>
	
	
	
	
	
	
	
	
	
	
	</table>