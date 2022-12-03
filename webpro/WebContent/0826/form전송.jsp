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
	div{
		border : 1px solid orange;
		/* border-top : 4px double blue;
		
		border-width : 10px 30px 50px 100px;
		border-color : red blue green;  */
		
		height : 200px;
		margin : 3px;
		padding : 5px;
		
		overflow : auto; /* hidden scroll */
	}
</style>
</head>
<body>
	<h1>JSP : Java Server Page</h1>
	<%
	
	request.setCharacterEncoding("UTF-8");
	String area = request.getParameter("area");
	// area는 enter(\r\n)기호를 포함하고있다.
	// 출력하는 div요소에는 <br>태그를 이용하여 줄바꿈 처리를 한다.
	area = area.replaceAll("\r", "").replaceAll("\n", "<br>");
	String foods[] = request.getParameterValues("food");
	String str = "";
	for(int i = 0; i < foods.length; i++){
		str += foods[i] + " ";
	}
	%>
	<div>
		<%= area %>
	</div>
	<%= foods %>
</body>
</html>