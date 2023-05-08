<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw==" crossorigin="anonymous" referrerpolicy="no-referrer" />

<style>

.mainContainer{
	width: 100%;
	height: 1000px;
	background-size: cover;
	background-image: url('메인배경_1.png');
}
.box-search {
  width: 500px; height: 50px;
  border: 1px solid black; border-radius: 30px;
  margin: 0 auto;
  display: flex;
  justify-content: space-evenly;
  align-items: center;
}
.blank{
	width: 100%;
	height: 300px;
}
.box-search > i { cursor: pointer; }
.input-search {
  width: 400px; height: 80%;
  font-size: 1rem;
  padding-left: 10px;
  border-style: none;
  background-color: #ffffff00;
}


</style>


</head>
<body>
	<!-- <h1>메인 페이지</h1>
	<h2>사이트 이름 (확정?!!!) 여행갈거조</h2>
	<h2>사이트 이름 후보 여행갔조 여행가조 놀러가조 같이가조 가시조 제대로모십조</h2> -->
	<%@ include file = "navBar.jsp" %>
	<%@ include file = "menuBar.jsp" %>

<div class="mainContainer">

	<div class="blank"></div>
	<div class="box-search">
		<input class="input-search" type="text" placeholder="검색어를 입력하세요!"><i class="fa-brands fa-sistrix"></i>
	</div>

</div>
		

</body>
</html>