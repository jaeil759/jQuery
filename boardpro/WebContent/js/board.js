/**
 * 
 */


listPageServer = function(vpage){
	
	// 검색기준과 검색어 를 가져온다
	vtype = $('#stype option:selected').val().trim();
	vword = $('#sword').val().trim();
	
         $.ajax({
         
         url : '/boardpro/ListPage.do',
         data : { "page" : vpage , "stype" : vtype, "sword" : vword},
         type : 'post',
         success : function(res) {
            code = "";
            code += `<div class="container">
                    <div class="panel-group" id="accordion">`;
            $.each(res.datas, function(i, v) {
               cont = v.content;   // 엔터기호 포함되어있는 코드
               cont = cont.replaceAll("/\n\r/g", "<br>" )
               code += '<div class="panel panel-default"> ';
               code += '  <div class="panel-heading"> ';
               code += '    <h4 class="panel-title"> ';
               code += '          <a name="list" class="action"  idx="' + v.num +'"  data-toggle="collapse" data-parent="#accordion" href="#collapse' + v.num + '">' + v.subject + '</a>';
               code += '        </h4>';
               code += '      </div>';
               code += '      <div id="collapse' + v.num + '" class="panel-collapse collapse ">';
               code += '        <div class="panel-body pbody">';
               code += '          <p class="p1">';
               code += '               작성자 : <span class="name">' + v.writer + '</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;';
               code += '               이메일:<span class="mail">' + v.mail + '</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;';
               code += '                작성날짜 : <span class="date">' + v.wdate + '</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;';  
               code += '                  조회수: <span class="hit">' + v.hit + '</span> ';
               code += '          </p>';
               code += '          <p class="p2">';
               code += '             <input type="button" idx="' + v.num + '" value="수정"  name="modify" class="action">';
               code += '             <input type="button" idx="' + v.num + '" value="삭제"  name="delete" class="action">';
               code += '          </p>';
               code += '          <p class="p3 bcont">';
               code +=  cont;
               code += '          </p>';
               code += '          <p class="p4">';
               code += '             <textarea rows="3" cols="80"></textarea>';
               code += '             <input type="button" idx="' + v.num + '" value="등록" name="reply" class="action">';
               code += '          </p>';
               code += '     </div>';
               code += '   </div>';
               code += '  </div>';


             
            })
            
            code +=  `</div></div>`;
            $('#result').html(code);
               // 페이지 출력
			pager = "";
			//이전페이지
			if(res.sp > 1){
				pager += '<ul class = "pagination">';
				pager += '<li class = "page-item"><a class="page-link prev" href = "#">previous</a>';
				pager += '</ul>';
			}
			// 페이지 번호
			pager += '<ul class = "pageination pager">';
			for(i = res.sp; i <=res.ep; i++){
				if(currentPage == i){
					pager += '<li class="page-item active"><a class = "page-link" href = "#">' + i +'</a></li>'
				}else{
					pager += '<li class = page-item><a class = "page-link" href = "#">' + i + '</a></li>';  
				}
			}
			pager += "</ul>"
            //다음페이지
			if(res.ep < res.tp){
				pager += '<ul class = "pagination">';
				pager += '<li class = "page-item"><a class="page-link next" href = "#">next</a></li>';
				pager += '</ul>';
			}
			$('#pagenav').html(pager);
         },
         error : function(xhr) {
            alert(xhr.status);
         },
         dataType : 'json'
      })
}