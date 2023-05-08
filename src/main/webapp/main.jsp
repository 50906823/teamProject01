<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>


<style>
.logo{
	width: 100px;
	height: 100px;
	background-color:#AFD485 ;
}


.search input{
width: 300px;
weight: 200px;}

.search button{
width: 100px;
weight: 100px;
}



</style>


</head>
<body>
	<!-- <h1>메인 페이지</h1>
	<h2>사이트 이름 (확정?!!!) 여행갈거조</h2>
	<h2>사이트 이름 후보 여행갔조 여행가조 놀러가조 같이가조 가시조 제대로모십조</h2> -->
	<%@ include file = "menuBar.jsp" %>
<div class="mainContainer">
<div class = "logo"> <a href="main.jsp">로고</a> </div>
	<div class="search">
		<form action="search.jsp" method="get">
  <input type="text" name="q" placeholder="검색어를 입력하세요">
  <button type="submit">검색</button>
</form>
	</div>
	
</div>
		

</body>
</html>