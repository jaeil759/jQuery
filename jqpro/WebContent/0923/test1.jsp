<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>
div{
   height : 50px;
   margin : 10px;
   padding : 10px;
   border : 1px solid gold;
}
span{
    display : inline-block;
}
.title{
    width : 100px;
    background : yellow;
}
</style>
</head>
<body>

<%
     String userName = request.getParameter("name");
	String userId = request.getParameter("id");
	
	//db를 이용한 crud처리를 수행 
	//수행한 결과값을 출력한다 
%>

  span class="title">아이디</span> <span><%=  userId %></span></div>
<div> <span class="title">이름</span> <span><%=  userName %></span></div>
  <div> <
</body>
</html>







