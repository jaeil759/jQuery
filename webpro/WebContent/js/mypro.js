/**
 * 
 */

/*function pro(){
	아래나 위나 똑같다.
}*/
var vres = ""; // 전역변수로 선언
window.onload = function(){
	 vres = document.getElementById('result1');
}
proc = function(){
	today = new Date();
	
	// id = result1인 요소를 검색

	
	// 출력내용
	var str = today + "<br>";
	str += today.toLocaleString() + "<br>";
	
	vres.innerHTML = str;
}

change = function(){
	// 0~255 사이의 색상값을 랜덤으로 발생
	cr = parseInt(Math.random()*256); //맨앞에 var 가 생략되어있음 -> var cr = ParseInt(Math.random)()*256); 
	cg = parseInt(Math.random()*256); 
	cb = parseInt(Math.random()*256); 
	console.log(cr,cg,cb);
	//vres.style.backgroundColor = "rgb(" + cr + "," + cg + "," + cb + ")";
	
	// 16진수를 이용
	cr16 = cr.toString(16);
	cg16 = cg.toString(16); 
	cb16 = cb.toString(16); 
	vres.style.backgroundColor = "#" + cr16 + cg16 + cb16;
	console.log(cr16,cg16,cb16);
//	vres.style.backgroundColor = "red";
//	vres.style.backgroundColor = "#fdadf1";
//	vres.style.backgroundColor = "rgb(100%,45%,89%)";
	
	
}
