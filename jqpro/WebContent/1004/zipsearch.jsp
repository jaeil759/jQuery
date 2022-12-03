<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
  <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
  <style>
  	tr:hover{
  		background : lime;
  	}
  </style>
<script>
	$(function(){
		//동검색후 결과에서 한 행을 선택하면
		$(document).on('click','tr.ziptr',function(){
			zip = $('td',this).eq(0).text();
			addr = $('td', this).eq(1).text();
			console.log(zip, addr);
			
			$('#uzip', opener.document).val(zip);
			$('#uadd1',opener.document).val(addr);
			window.close();
		})
		
		
		$('#dongbtn').on('click',function(){
			
		
		dongvalue = $('#dong').val().trim();
		if(dongvalue.length < 1){
			alert("입력하세요");
			return false;
		}
		 $.ajax({
         url :'<%= request.getContextPath()%>/ZipSearch.do', 
         type : 'post',
         data : { "dongvalue" : dongvalue},
         success : function(res) {
        	 code = "<table border='1'>";
             code += "<tr><td>우편번호</td><td>주소</td><td>번지</td></tr>";
             $.each(res, function(i, v ) {
                
                // {zipcode: "152-783", sido: "서울", gugun: "구로구", dong: "오류1동 동부골든아파트"}
//                 code += `<tr><td>${v.zipcode}</td><td>${v.sido} ${v.gugun} ${v.dong}</td>`
//                    + `<td>${v.bunji}</td></tr>`;
                code += "<tr><td>" + v.zipcode + "</td><td>" + v.sido + " " + v.gugun + " " +  v.dong + "</td>"
                   + "<td>" + v.bunji +"</td></tr>";
             })
             code += "</table>";
             
             $('#searchres').html(code); 
         },
         error : function(xhr) {
            alert(xhr.status);
         }, 
         dataType : 'json'
      });
	 });
 });
</script>


</head>

<body>
	<div>
		동입력<input type = "text" id = "dong">
			<input type = "button" value = "확인">
			
			<br><br>
			<div id = "searchres"></div>
	</div>
	
	
 
	
</body>
</html>