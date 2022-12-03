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
		width : 150px;
		height : 50px;
		text-align : center;
	}
	.title{
		background-color : lightgreen;
	}
</style>
</head>
<body>
	
	<h1>JSP : Java Server Page</h1>
	<p>클라이언트 제출 전송시 전달 데이터를 받아서 처리한다.</p>
	
	<%
	request.setCharacterEncoding("UTF-8");
	String userId = request.getParameter("id");
	String userName = request.getParameter("name");
	String userMail = request.getParameter("email");
	String userTel = request.getParameter("tel");
	String userAge = request.getParameter("age");
	
	//db 연결 처리 - 결과를 얻는다
	
	
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
			<td class="title">나이</td>
			<td><%= userAge %></td>
		</tr>
	</table>
</body>
</html>