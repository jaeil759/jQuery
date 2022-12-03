<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	<style>
		h1{
			color : red;
		}
		table{
			border : 3px solid orange;
		}
		td{
			width : 200px;
			height : 50px;
			text-align : center;
		}
	</style>
</head>
<body>
	<h1> JSP : Java Server Page</h1>
	<p>서버 내에서 실행되는 back-end 프로그램이다.</p>
	<p>html코드와 java코드를 병행하여 작성한다.</p>
	<p>java코드를 작성할 때는 &lt;% %>사이에 기술한다</p>
	<p>java변수를 출력 할 때는 &lt;%= 변수명 %> 형식으로 작성한다.</p>
	<p>클라이언트 전송시 전달 데이터를 받아서 처리한다.</p>
	<p>request 내장객체를 이용하여 받는다.</p>
	
	<%
	
	String userId = request.getParameter("id");
	String userPass = request.getParameter("pass");
	// db검색
	// 결과생성
	// select....
	%>
	<table border = "1">
		<tr>
			<td>아이디</td>
			<td><%= userId %></td>
		</tr>
	</table>	
	<table border = "1">
		<tr>
			<td>비밀번호</td>
			<td><%= userPass %></td>
		</tr>
	</table>	
	
	
	
</body>
</html>