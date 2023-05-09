<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>메인 페이지</title>
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
	<%@ include file = "navBar.jsp" %>
	<%@ include file = "menuBar.jsp" %>

<div class="mainContainer">

	<div class="blank"></div>
	
    <form id="searchForm" action="search.jsp" method="post">
    	  <select id="inputArea" name="area" >
		    <option value="none">=== 지역 선택 ===</option>
		    <option value="seoul">서울</option>
		    <option value="busan">부산</option>
		    <option value="daegu">대구</option>
		    <option value="incheon">인천</option>
		    <option value="gwangju">광주</option>
		    <option value="daejeon">대전</option>
		    <option value="ulsan">울산</option>
		    <option value="sejong">세종</option>
		    <option value="gyeongi">경기</option>
		    <option value="gangwon">강원</option>
		    <option value="chungbuk">충북</option>
		    <option value="chungnam">충남</option>
		    <option value="gyeongbuk">경북</option>
		    <option value="gyeongnam">경남</option>
		    <option value="jeonbuk">전북</option>
		    <option value="jeonnam">전남</option>
		    <option value="jeju">제주</option>
  		</select>
        <input type="text" id="inputSearch" name="search" placeholder="검색어를 입력하세요!">
        <button id="searchBtn" type="button">검색</button>
    </form>

</div>


	<script>
			document.getElementById('searchBtn').addEventListener('click', ()=>{
			
			let form = document.getElementById('searchForm');
			
			let inputSearch = document.getElementById('inputSearch');
			if(inputSearch.value == ""){
				alert('검색어를 입력해 주세요.');
				inputSearch.focus();
			} else {
					form.submit();
			}
		});
			
	</script>
	
</body>
</html>