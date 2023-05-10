<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>메인 페이지</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw==" crossorigin="anonymous" referrerpolicy="no-referrer" />

<style>
* { margin: 0; padding: 0; box-sizing: border-box; }

.container {
	width: 100%;
	height: 1000px;
/* 	background-size: cover;
	background-image: url('메인배경_1.png'); */
}

p {
  font-size: 3rem;
  font-weight: bold;
  color: #7BB661;
  padding: 1rem;
  border-radius: 5px;
  text-align: center;
}

.box-search {
  width: 500px; height: 50px;
  border: 1px solid black; border-radius: 5px;
  margin: 0px 10px;
  display: flex;
  justify-content: space-evenly;
  align-items: center;
}
.input-search {
  width: 400px; height: 80%;
  font-size: 1rem;
  padding-left: 10px;
  border-style: none;
  background-color: #ffffff00;
}
.input-search:focus {
  outline: none;
  border: none;
}

#searchBtn {
  background-color: #AFD485;
  color: #ffffff;
  border: none;
  border-radius: 5px;
  font-size: 1rem;
  font-weight: bolder;
  padding: 10px;
  cursor: pointer;
}
#searchBtn:hover {
  background-color: #7BB661;
}

</style>
</head>
<body>
	<%@ include file = "navBar.jsp" %>
	<%@ include file = "menuBar.jsp" %>
	<div class="container">
	<p>놀러가조</p>
		<form id="searchForm" action="search.jsp" method="post" style="display: flex; align-items: center; width: 700px; margin: 0 auto;">
			<select id="inputArea" name="area" class="form-select" aria-label="Default select example" style="width: 170px; margin-right: 10px;">
			    <option value="none">==지역 선택==</option>
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
			<div class="box-search" style="flex: 1;">
				<input class="input-search" type="text" id="inputSearch" name="search" placeholder="검색어를 입력하세요.">
			</div>
			<button id="searchBtn" type="button" style="margin-left: 10px;">검색</button>
	    </form>
	</div>


	<script>
		document.getElementById('searchBtn').addEventListener('click', ()=>{
			
			let form = document.getElementById('searchForm');
			let inputSearch = document.getElementById('inputSearch');
			let inputArea = document.getElementById('inputArea');
			
			if(inputSearch.value == ""){
				alert('검색어를 입력해 주세요.');
				inputSearch.focus();
			} else if(inputArea.value == "none") {
				alert('지역을 선택해 주세요.');
			} else {
				form.submit();
			}
		});
			
	</script>
	
</body>
</html>