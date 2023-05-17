<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Document</title>
<!-- 제이쿼리 스크립트 -->
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.4.3/jquery.min.js"></script>
<style>

@font-face {
    font-family: 'KyoboHand';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_20-04@1.0/KyoboHand.woff') format('woff');
    font-weight: normal;
    font-style: normal;
}



* {
	padding:0px;
	margin:0 auto;
	font-family: 'KyoboHand';
	position:relative;
}
#wrap {
	margin:0px;
	padding:0px;
	width:100%;
	position: absolute;
	bottom: 250px;
	left: 60px;
}
.container {
	width:1000px;
	margin:0 auto;
	position: absolute;
	
}
a,img {
	border:0px;
	text-decoration:none;
}
ul,li {
	list-style:none;
	padding:0;
	margin:0px;
}
h1 {
	color:#525252;
	font-size:40px;
	font-weight:100;
	text-align:center;
	margin:0px;
	margin-top:0;
}
h1 > b {
	font-weight:900;
}

#best_search {
	width:740px;
	height: 20px;
	margin:0 auto;
	padding-top:0;
	text-align:center;
}
#best_search li,dd {
	display:inline-block;
	vertical-align:middle;
}
button {
	width:121px;
	background-color:#0085e2;
	color:#fff;
	border:0px;
	height:63px;
	margin-left:-5px;
	padding:0px;
	font-size:18px;
}
#best_search li p {
	color:#393939;
	font-size:18px;
	font-weight:bold;
	margin:0;
	padding-right:30px;
	padding-top: 0;
	padding-bottom: 30px;
}
dd {
	margin:0px;
}
dd  a.t{
	cursor:pointer;
	margin:0px;
	color:#4b4b4b;
	text-overflow:ellipsis;
	overflow:hidden;
	width:94px;
	white-space:nowrap;
	display:inline-block;
	font-size:17px;
	text-align:left;
	padding-right:13px;
	font-weight:700;
	vertical-align:middle;
}
dd .num {
	background-color:#4b4b4b;
	color:#fff;
	font-size:10px;
	margin-right:10px;
	vertical-align:middle;
	width:18px;
	height:18px;
	float:left;
	line-height:18px;
	text-align:center;
}
.best_add {
	border:1px solid #bebebe;
	color:#4b4b4b;
	background-color : pink;
	padding:0px 10px;
	margin-left:10px;
	position: absolute;
	bottom: 0px;
	
}


</style>

</head>
<body>
  
<div id="wrap">
		<div class="container">
			<ul id="best_search">
				<li><p>인기검색어 :</p></li>
				<li>
					<dl class="time1" style="display:">
						<dd><a class="t" href="#"><div class="num">1</div>자전거</a></dd>
						<dd><a class="t" href="#"><div class="num">2</div>전동킥보드</a></dd>
						<dd><a class="t" href="#"><div class="num">3</div>비키니</a></dd>
						<dd><a class="t" href="#"><div class="num">4</div>모노키니</a></dd>
						<dd><a class="t" href="#"><div class="num">5</div>원터치텐트</a></dd>
					</dl>
					<dl class="time2" style="display:none;">
						<dd><a class="t" href="#"><div class="num">6</div>등산화</a></dd>
						<dd><a class="t" href="#"><div class="num">7</div>풋살화</a></dd>
						<dd><a class="t" href="#"><div class="num">8</div>요가복</a></dd>
						<dd><a class="t" href="#"><div class="num">9</div>텐트</a></dd>
						<dd><a class="t" href="#"><div class="num">10</div>래쉬가드</a></dd>
					</dl>
					<dl class="time3" style="display:none;">
						<dd><a class="t" href="#"><div class="num">11</div>수영복</a></dd>
						<dd><a class="t" href="#"><div class="num">12</div>디스커버리반팔티</a></dd>
						<dd><a class="t" href="#"><div class="num">13</div>축구화</a></dd>
						<dd><a class="t" href="#"><div class="num">14</div>노스페이스바람막이</a></dd>
						<dd><a class="t" href="#"><div class="num">15</div>전기자전거</a></dd>
					</dl>
					<dl class="time4" style="display:none;">
						<dd><a class="t" href="#"><div class="num">16</div>캠핑카</a></dd>
						<dd><a class="t" href="#"><div class="num">17</div>캠핑테이블</a></dd>
						<dd><a class="t" href="#"><div class="num">18</div>여성골프웨어</a></dd>
						<dd><a class="t" href="#"><div class="num">19</div>여성래쉬가드</a></dd>
						<dd><a class="t" href="#"><div class="num">20</div>캠핑의자</a></dd>
					</dl>
				</li>
				<li>
					<a class="best_add ad1" style="cursor:pointer" onClick="javascript:view('0')">></a>
					<a class="best_add ad2" onClick="javascript:view('1')" style="display:none;cursor:pointer" >></a>
					<a class="best_add ad3" onClick="javascript:view('2')" style="display:none;cursor:pointer" >></a>
					<a class="best_add ad4" onClick="javascript:view('3')" style="display:none;cursor:pointer" >></a>
				</li>
			</ul>
		</div>
   </div>


</body>

<script>

function view(arg){
	$(".time1, .time2, .time3, .time4, .ad1, .ad2, .ad3, .ad4").css("display","none");
	if(arg=="0") {
		$(".time2, .ad2").css("display","block");
		viewcount = 1;
	}
	else if(arg=="1") {
		$(".time3, .ad3").css("display","block");
		viewcount = 2;
	}
	else if(arg=="2") {
		$(".time4, .ad4").css("display","block");
		viewcount = 3;
	}
	else if(arg=="3") {
		$(".time1, .ad1").css("display","block");
		viewcount = 0;
	}
}
var viewcount = 0;
var rtcarousel = setInterval(function(){ view(viewcount) },3000);

$("#best_search").mouseenter(function() {
	clearInterval(rtcarousel);
});

$("#best_search").mouseleave(function() {
	rtcarousel = setInterval(function(){ view(viewcount) },3000);
});

</script>

</html>