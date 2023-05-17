<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="base.dao.SearchDao"%>
<%@ page import="base.dto.SearchDto"%>
<%@ page import="java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>메인 페이지</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw==" crossorigin="anonymous" referrerpolicy="no-referrer" />

<!-- 제이쿼리스크립트 -->
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.4.3/jquery.min.js"></script>
<style>

@font-face {
    font-family: 'KCCChassam';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2302@1.0/KCCChassam.woff2') format('woff2');
    font-weight: normal;
    font-style: normal;
}
@font-face {
    font-family: 'KyoboHand';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_20-04@1.0/KyoboHand.woff') format('woff');
    font-weight: normal;
    font-style: normal;
}

* { 
	margin: 0; padding: 0; box-sizing: border-box; 
     font-family: 'KyoboHand';
}

.mainContainer {
  
   height: 913px;
   background-size: cover;
   background-image: url('메인배경_1.png');
	 margin-left: 0;
    margin-right: 0;
  
}

.mainlogo{
	width: 650px;
	height: 500px;
	background-size: cover;
	position: absolute;
	bottom : 350px;
	
}
p {
  color: #7BB661;
  font-size: 3rem;
  font-weight: bold;
  padding: 1rem;
  text-align: center;
}

.box-search {
  width: 600px; height: 50px;
 
  margin: 0px 10px;
  position: absolute;
  left: 375px;
  bottom: 365px;
  justify-content: space-evenly;
  align-items: center;
  z-index: 25;
}
.input-search {
  width: 400px; height: 80%;
  font-size: 1.5rem;
  padding-left: 10px;
  border-style: none;
  background-color: #ffffff00;
}
.input-search:focus {
  outline: none;
  border: none;
}

#searchBtn {
	width : 80px;
	height : 50px;
  /* background-color: #ffffff00; */
  background-color: #f2fe8a;
  /* background-color: #e6cffb;  */
     /* background-color: #AFD485; */
  color: #ffffff;
  border: none;
  border-radius: 5px;
  font-size: 1.4rem;
  color : black;
  border : 1px solid black;
  
  padding: 10px;
  cursor: pointer;
  position: absolute;
  left: 1001px;
  bottom: 368px;
  padding-top : 5px;
  padding-bottom: 6px;
}
#searchBtn:hover {
  background-color: #7BB661;
}

</style>
</head>
<body>
  
   
	
   <div class="mainContainer" style=" width: 1280px;">
	 <%@ include file = "navBar.jsp" %>
   
		

      <!-- 검색form -->
      <form id="searchForm" action="search.jsp" method="post" style=" width: 900px; margin: 0 auto;">
				<div class="searchFlex" style="width: 170px; height: 100%; display: inline-flex;">
         <select id="inputArea" name="area" class="form-select" aria-label="Default select example" style="width: 170px; height: 50px; border : 1px solid black; margin-right: 10px; position: absolute; bottom: 368px; left: 186px; font-size: 1.3rem; background-color: white;">
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
         </select></div>
				 <img class="mainlogo" src="메인_곰돌이04.png" >
         <div class="box-search" style="flex: 1;">
            <input class="input-search" type="text" id="inputSearch" name="search" placeholder="검색어를 입력하세요.">
         </div>
         <button id="searchBtn" type="button" style="margin-left: 11px;">검 색</button>
         
       </form>
       <%@ include file = "ingi_search.jsp" %> 
			 <%@ include file = "menu_main.jsp" %> 
          <%@ include file = "footer.jsp" %> 
   </div>
       
			


   <script>
      /* 검색 조건 */
      document.getElementById('searchBtn').addEventListener('click', ()=>{
         
         let form = document.getElementById('searchForm');
         let inputSearch = document.getElementById('inputSearch');
         let inputArea = document.getElementById('inputArea');
         
          if(inputArea.value == "none") {
            alert('지역을 선택해 주세요.');
            inputArea.focus();
         } else if(inputArea.value != "none") {
            form.submit();
         } else if(inputSearch.value == ""){
            alert('검색어를 입력해 주세요.');
            inputSearch.focus();
         } else {
            form.submit();
         }
      });
   </script>
</body>
</html>