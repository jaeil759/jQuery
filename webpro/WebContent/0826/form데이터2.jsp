<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	table{
		border : 2px solid gold;
	}
	td{
		width : 500px;
		height : 50px;
		text-align : center;
	}
	.title{
		background-color : lightgreen;
		width : 120px;
	}
</style>
</head>
<body>
 <%
 	request.setCharacterEncoding("UTF-8");
	String userId = request.getParameter("id");
	String userName = request.getParameter("name");
	String userMail = request.getParameter("email");
	String userTel = request.getParameter("tel");
	String userAddr = request.getParameter("addr");
	
	String []foods = request.getParameterValues("food");
	String file = request.getParameter("file");
	
	String str = "";
	for(int i = 0; i < foods.length; i++){
		str += foods[i] + " ";
	}
	
 %>
 
 
 	<table border = "1">
		<tr>
			<td class="title">아이디</td>
			<td><%= userId %></td>
		</tr>
		<tr>
			<td class="title">이름</td>
			<td><%= userName %></td>
		</tr>
		<tr>
			<td class="title">이메일</td>
			<td><%= userMail %></td>
		</tr>
		<tr>
			<td class="title">전화번호</td>
			<td><%= userTel %></td>
		</tr>
		<tr>
			<td class="title">주소</td>
			<td><%= userAddr %></td>
		</tr>
		<tr>
			<td class="title">좋아하는 음식</td>
			<td><%= str %></td>
		</tr>
		<tr>
			<td class="title">첨부파일</td>
			<td><%= file %></td>
		</tr>
		
	</table>
</body>
</html>