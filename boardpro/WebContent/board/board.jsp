<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  <script src = "../js/board.js"></script>
<style>
input[name=reply]{
   height : 46px;
   vertical-align: top;   
}
.panel-heading:hover{
   background : skyblue;
}
#stype{
   box-sizing : border-box;
   width : calc(100px - 1%);
   float : left;
}
#sword{
   box-sizing : border-box;
   width : calc(20% - 1%);
   float : left;
}
.navbar{
   margin-left : 50%;
}
h1{
   margin-top : 100px;
   margin-left : 40%
}
.pageination{
	float : left;
}
#pagenav{
	margin-left : 30%;
}
</style>
  <script>
  	$(function(){
  		listPageServer(1);
  		
  		// 검색 버튼이벤트
  		$('#search').on('click', function(){
  			currentPage=1;
  			// page번호, 검색어(sword) 검색기준
  			listPageServer(currentPage);
  		})
  		// 다음페이지 클릭 이벤트
  		$(document).on('click', '.next', function(){
  			vnext = parseInt($('.pager li').last().text().trim()) + 1;
  			listPageServer(currentPage);
  		})
  	})
  </script>
</head>
<body>
<h1>게시판</h1>

	<!-- 글쓰기 버튼 modal-->
	<button type = "button" id = >글쓰기</button>
	<br>



<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
 
 <select class="form-control" id="stype">
    <option value = "">전체</option>
    <option value = "writer">이름</option>
    <option value = "subject">제목</option>
    <option value = "content">내용</option>
  </select>

  <form class="form-inline" action="/action_page.php">
    <input class="form-control mr-sm-2" type="text" id = "sword" placeholder="Search">
    <button id = "search" class="btn btn-success" type="button">Search</button>
  </form>
</nav>
<div id = "result"></div>
	<div id = "pagenav"></div>
    
</body>
</html>
