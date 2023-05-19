<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="base.dao.SearchDao"%>
<%@ page import="base.dto.SearchDto"%>
<%@ page import="java.util.*"%>
<%@ page import="java.net.URLEncoder" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상세 검색 페이지</title>
<link rel="shortcut icon" type="image/x-icon" href="메인_새창_아이콘.JPG">
<style>
* { margin: 0; padding: 0; box-sizing: border-box;
    font-family: 'KyoboHand';
 }

@font-face {
    font-family: 'KyoboHand';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_20-04@1.0/KyoboHand.woff') format('woff');
    font-weight: normal;
    font-style: normal;
}

.mainContainer {
   height: 913px;
   background-size: cover;
   background-image: url('메인배경_1.png');
   position: relative;
}
.subContainer {
	width: 1200px; height: 755px;
	padding: 10px;
	border-radius: 5px;
	position: absolute;
    top: 120px;
    left: 50%;
    transform: translate(-50%);
    background-color: #ffffff60;
    z-index: 1;
} 

.weatherContainer {
	font-size: 1.1rem;
	margin-bottom: 5px;
}
.weatherContainer > span {
	background-color: #ffffff00;
	padding: 0;
}

.searchList {
	width: 100%; height: 580px;
	font-size: 1.1rem;
	overflow: auto;
}
/* 스크롤바 커스텀 */
.searchList::-webkit-scrollbar {
    width: 8px;  /* 스크롤바의 너비 */
}
.searchList::-webkit-scrollbar-thumb {
    height: 30%; /* 스크롤바의 길이 */
    background: #00000098; /* 스크롤바의 색상 */
    border-radius: 10px;
}
/* 스크롤바 뒷 배경 색상 */
.container::-webkit-scrollbar-track {
    background: rgba(0, 0, 0, 0);
}

/* 페이지네이션 */
.paging {
  width: 100%;
  font-weight: bold;
  display: flex;
  justify-content: center;
  margin-top: 10px;
}
.paging a {
  display: inline-block;
  padding: 8px 12px;
  margin: 0 5px;
  border-radius: 5px;
  background-color: #ffffffa1;
  color: #333;
  text-decoration: none;
}
.paging a.active {
  background-color: #00000098;
  color: #fff;
}
</style>
</head>
<body>
    <div class="mainContainer" style="width: 1280px">
    
	<%@ include file = "header.jsp" %>
	<%@ include file = "menuBar.jsp" %>
	
    <div class="subContainer">
    
	<div class="container" style="width: 100%">
	<%
	request.setCharacterEncoding("UTF-8");

	/* main에서 받은 값 가져오기 */
	String area = request.getParameter("area");
	String search = request.getParameter("search");

	/* DAO 객체 생성 */
	SearchDao searchDao = new SearchDao();
	/* DAO 메소드 사용 */
	List<SearchDto> searchInfoList = searchDao.selectSearchInfoList(area, search);
	%>

	<!-- S -->
	<%
	// main-select-option에 있는 value 를 cityId로 변환
	String cityId = "";
	if (area.equals("seoul")) {
		cityId = "1835848";
	} else if (area.equals("busan")) {
		cityId = "1838524";
	} else if (area.equals("daegu")) {
		cityId = "1835327";
	} else if (area.equals("incheon")) {
		cityId = "1843561";
	} else if (area.equals("gwangju")) {
		cityId = "1841811";
	} else if (area.equals("daejeon")) {
		cityId = "1835224";
	} else if (area.equals("ulsan")) {
		cityId = "1833747";
	} else if (area.equals("sejong")) {
		cityId = "1842616";
	} else if (area.equals("jeju")) {
		cityId = "1846266";
	} else if (area.equals("chungnam")) {
		cityId = "1845759";
	} else {
		/* out.println("<script>alert('날씨 서비스가 제공되지 않는 지역입니다.');</script>"); */
		cityId = null;
	}
	// api호출주소 구성하기 위해 cityId값 활용
	String apiUrl = "http://api.openweathermap.org/data/2.5/forecast?id=" + cityId
			+ "&appid=41ecd1c23b0f1a112643d899fee45436&units=metric";
	%>
	
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.7.0/jquery.min.js" integrity="sha512-3gJwYpMe3QewGELv8k/BX9vcqhryRdzRMxVfq6ngyWXwo03GFEzjsUm8Q7RZcHPHksttq7/GFoxjCVUjkjvPdw==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
	<script>
		// apiUrl 내용을 getJSON으로 불러냄.
		$.getJSON( '<%=apiUrl%>' ,
						function(data) {
							var $minTemp = data.list[0].main.temp_min;
							var $maxTemp = data.list[0].main.temp_max;
							var $cTemp = data.list[0].main.temp;
							// var $cDate = data.list[0].dt_txt;

							$('.clowtemp').append($minTemp);
							$('.ctemp').append($cTemp);
							$('.chightemp').append($maxTemp);
							// $('h2').prepend($cDate);
						});
	</script>
	<!-- E -->

	<%
		/* main-select-option에 있는 value 한글화 */
		String areaString = "";
		if (area.equals("seoul")) {
			areaString = "서울";
		} else if (area.equals("busan")) {
			areaString = "부산";
		} else if (area.equals("daegu")) {
			areaString = "대구";
		} else if (area.equals("incheon")) {
			areaString = "인천";
		} else if (area.equals("gwangju")) {
			areaString = "광주";
		} else if (area.equals("daejeon")) {
			areaString = "대전";
		} else if (area.equals("ulsan")) {
			areaString = "울산";
		} else if (area.equals("sejong")) {
			areaString = "세종";
		} else if (area.equals("gyeongi")) {
			areaString = "경기";
		} else if (area.equals("gangwon")) {
			areaString = "강원";
		} else if (area.equals("chungbuk")) {
			areaString = "충북";
		} else if (area.equals("chungnam")) {
			areaString = "충남";
		} else if (area.equals("gyeongbuk")) {
			areaString = "경북";
		} else if (area.equals("gyeongnam")) {
			areaString = "경남";
		} else if (area.equals("jeonbuk")) {
			areaString = "전북";
		} else if (area.equals("jeonnam")) {
			areaString = "전남";
		} else if (area.equals("jeju")) {
			areaString = "제주";
		} else {
			areaString = "지역선택";
		}
		/* if(검색어 입력X(지역만 검색시)){출력 내용}else{출력 내용} */
		if (search == "") {
			out.println("<h3>지역: \"" + areaString + "\" 검색 결과</h3>");
		} else {
			out.println("<h3>지역: \"" + areaString + "\", 검색어: \"" + search + "\" 검색 결과</h3>");
		}
	%>
	
	<!-- 날씨 S -->
	
	<%
		if(cityId != null) {
	%>
		<div class="weatherContainer">
			<span style="font-size:1.3rem; font-weight: bold;">날씨정보</span><br>
			<span class="ctemp">현재 </span><span>℃ | </span>
			<span class="clowtemp">최저 </span><span class="chightemp">℃ | 최고 </span><span>℃</span>
		</div>
	<%
		} else {
	%>
		<div class="weatherContainer">
			<span style="font-size:1.3rem; font-weight: bold;">날씨정보</span><br>
			<span>날씨 서비스가 제공되지 않는 지역입니다.</span>
		</div>
	<%
		}
	%>
	<!-- 날씨 E -->
	
	
	<div class="searchList">
		<table class="table table-hover">
				<colgroup style="background-color: #ffffffa1">
					<col style="width: 30%;">
					<col style="width: 40%;">
					<col style="width: 30%;">
				</colgroup>
				<thead>
				<tr>
					<th style="position: sticky; top: 0; background-color: #f1f1f1;">명칭</th>
					<th style="position: sticky; top: 0; background-color: #f1f1f1;">주소</th>
					<th style="position: sticky; top: 0; background-color: #f1f1f1;">연락처</th>
				</tr>
			</thead>
			<tbody style="border-color: lightgray; vertical-align: middle; overflow-y: auto; cursor: pointer;">
		<%
			/* 페이지네이션 */
			int currentPage = 1; //현재 페이지 번호. 초기값 1
		    int itemsPerPage = 12; //한 페이지에 표시할 아이템(리스트) 수
		    int totalItems = searchInfoList.size(); //아이템의 총 수
		    int totalPages = (int) Math.ceil((double) totalItems / itemsPerPage); //총 페이지 수
		    				//전체 아이템 수와 페이지당 아이템 수를 나눈 뒤, Math.ceil()로 나머지 올림 처리
	
		    /* 현재 페이지 정보를 가져오기 */
		    String pageParam = request.getParameter("page");
		    if (pageParam != null && !pageParam.isEmpty()) {
		        currentPage = Integer.parseInt(pageParam);
		        if (currentPage < 1) {
		            currentPage = 1;
		        } else if (currentPage > totalPages) {
		            currentPage = totalPages;
		        }
		    }

		    /* 현재 페이지에 표시할 아이템의 범위 계산
		       현재 페이지 번호와 페이지당 아이템 수를 사용하여 시작 및 끝 인덱스 계산 */
		    int startIndex = (currentPage - 1) * itemsPerPage;
		    int endIndex = Math.min(startIndex + itemsPerPage, totalItems);
	
		    /* 현재 페이지의 아이템 리스트 가져오기 */
		    List<SearchDto> currentPageItems = searchInfoList.subList(startIndex, endIndex);
			
			int startItem = (currentPage - 1) * itemsPerPage;
	        int endItem = Math.min(startItem + itemsPerPage, searchInfoList.size());
	
			/* searchDao.selectSearchInfoList(area, search) 출력 */
			for(int i = startItem; i < endItem; i++) { 
	        SearchDto item = searchInfoList.get(i);
		%>
			<tr onclick="location.href='detail.jsp?area=<%=area%>&name=<%=URLEncoder.encode(item.getName(), "UTF-8")%>'">
				<!-- main에서 받은 값(area, name) detail.jsp에도 보내기, URLEncoder (임포트 필요) → [, ] 문자 URL인코딩 / 아스키 코드 -->
				<td><%=item.getName()%></td>
					
				<!-- 값이 null인 부분은 '-' 출력 -->
				<% if(item.getAddress() != null) { %>
					<td><%=item.getAddress()%></td>
				<% } else { %>
					<td>-</td>
				<% } %>
				
				<% if(item.getTel() != null) { %>
					<td><%=item.getTel()%></td>
				<% } else { %>
					<td>-</td>
				<% } %>
			</tr>
			<%
			}
		%>
			</tbody>
		</table>
	</div>
	
	<div class="paging">
	    <% if (currentPage > 1) { %>
	    	<!-- 첫 페이지로 이동 -->
	    	<a href="?area=<%= area %>&search=<%= search %>&page=1" style="width: 40px; height: 40px; text-align: center;">≪</a>
	    	<!-- 이전 페이지로 이동 -->
	        <a href="?area=<%= area %>&search=<%= search %>&page=<%= currentPage - 1 %>" style="width: 40px; height: 40px; text-align: center;">&lt;</a>
	    <% } %>
	
	    <% 
	   	   int startPage = Math.max(currentPage - 2, 1); //시작 페이지 계산
	       int endPage = Math.min(startPage + 4, totalPages); //종료 페이지 계산
	       
	       /* endPage와 startPage 사이의 차이가 4보다 작으면
	       	  페이지 버튼이 5개로 고정되도록 시작 페이지를 재조정 */
	       if (endPage - startPage < 4) {
	           startPage = Math.max(endPage - 4, 1);
	       }
	       
	       int fixedPageBtn = 5 - (endPage - startPage + 1); //고정 버튼 개수와 실제 출력 버튼 개수 차이 계산
	       startPage = Math.max(startPage - fixedPageBtn, 1); //시작 페이지 조정
	       
	       /* startPage부터 endPage까지 페이지 버튼 출력 */
	       for (int i = startPage; i <= endPage; i++) { %>
	        <% if (i == currentPage) { %>
	        	<!-- 현재 페이지인 버튼 active 효과 -->
	            <a href="?area=<%= area %>&search=<%= search %>&page=<%= i %>" class="active" style="width: 40px; height: 40px; text-align: center;"><%= i %></a>
	        <% } else { %>
	            <a href="?area=<%= area %>&search=<%= search %>&page=<%= i %>" style="width: 40px; height: 40px; text-align: center;"><%= i %></a>
	        <% } %>
	    <% } %>
	
	    <% if (currentPage < totalPages) { %>
	        <!-- 다음 페이지로 이동 -->
	        <a href="?area=<%= area %>&search=<%= search %>&page=<%= currentPage + 1 %>" style="width: 40px; height: 40px; text-align: center;">&gt;</a>
			<!-- 마지막 페이지로 이동 -->
	        <a href="?area=<%= area %>&search=<%= search %>&page=<%= totalPages %>" style="width: 40px; height: 40px; text-align: center;">≫</a>
	    <% } %>
	</div>
</div>
</div>
<%@ include file = "BGM.jsp" %> 
<%@ include file = "footer.jsp" %> 
</div>
</body>
</html>