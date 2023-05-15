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
<style>
	* { margin: 0; padding: 0; box-sizing: border-box; }
	.searchList {
			width: 100%; height: 590px;
		overflow-y : scroll;
	}
	</style>
</head>
<body>
    
	<%@ include file = "header.jsp" %>
	<%@ include file = "menuBar.jsp" %>
	<div class="container" style="width: 1200px">
	<%
	request.setCharacterEncoding("UTF-8");

	/* main에서 받은 값 가져오기 */
	String area = request.getParameter("area");
	String search = request.getParameter("search");

	/* 필요없는 것 같아서 일단 주석처리 해놓음 */
	/* SearchDto searchDto = new SearchDto(); */
	/* 값 저장 */
	/* 		searchDto.setArea(area);
			searchDto.setName(search); */

	/* DAO 객체 생성 */
	SearchDao searchDao = new SearchDao();
	/* DAO 메소드 사용 */
	List<SearchDto> searchInfoList = searchDao.selectSearchInfoList(area, search);
	%>

	<%
	// <!-- S -->

	// <!-- main-select-option에 있는 value 를 cityId로 변환 -->
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
	} else {
		out.println("<script>alert('잘못된 입력입니다.');</script>");
	}
	// <!-- api호출주소 구성하기 위해 cityId값 활용 -->
	String apiUrl = "http://api.openweathermap.org/data/2.5/forecast?id=" + cityId
			+ "&appid=41ecd1c23b0f1a112643d899fee45436&units=metric";
	%>
	<!-- 승연 S -->

	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.7.0/jquery.min.js" integrity="sha512-3gJwYpMe3QewGELv8k/BX9vcqhryRdzRMxVfq6ngyWXwo03GFEzjsUm8Q7RZcHPHksttq7/GFoxjCVUjkjvPdw==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
	<script>
		// apiUrl 내용을 getJSON으로 불러냄.
		$.getJSON( '<%=apiUrl%>' ,
						function(data) {
							var $minTemp = data.list[0].main.temp_min;
							var $maxTemp = data.list[0].main.temp_max;
							var $cTemp = data.list[0].main.temp;
							var $cDate = data.list[0].dt_txt;

							$('.clowtemp').append($minTemp);
							$('.ctemp').append($cTemp);
							$('.chightemp').append($maxTemp);
							$('h2').prepend($cDate);
						});
	</script>


	<!-- 승연 E -->

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
	<!-- <div class="row justify-content-center">
		<div class="col-12 col-md-6">
			<div class="card my-4">
				<div class="card-header">현재 날씨 정보</div>
				<div class="card-body">
					<div class="d-flex justify-content-center align-items-center" id="current-weather">
						<div class="ctemp">현재 온도 :</div><br>
	<div class="clowtemp">최저 온도 :</div>
	<div class="chightemp">최고 온도 :</div>
	<div class="cicon">아이콘 :</div>
					</div>
				</div>
			</div>
		</div>
</div> -->

	<h2>
		-
		<%=area%>
		날씨 예보
	</h2>
	<div class="ctemp">현재 온도 :</div>
	<div class="clowtemp">최저 온도 :</div>
	<div class="chightemp">최고 온도 :</div>
	<div class="cicon">아이콘 :</div>

	<!-- 날씨 E -->
	<table class="table">
		<thead>
			<tr>
				<th>명칭</th>
				<th>주소</th>
				<th>연락처</th>
			</tr>
		</thead>
		<tbody>
			<%
			/* searchDao.selectSearchInfoList(area, search) 출력 */
			for (SearchDto item : searchInfoList) {
			%>

	<%
		/* searchDao.selectSearchInfoList(area, search) 출력 */
		for(SearchDto item : searchInfoList){	
	%>
			<tr>
				<!-- main에서 받은 값(area, name) detail.jsp에도 보내기, URLEncoder (임포트 필요) → [, ] 문자 URL인코딩 / 아스키 코드 -->
				<td><a href="detail.jsp?area=<%=area%>&name=<%=URLEncoder.encode(item.getName(), "UTF-8")%>"><%=item.getName()%></a></td>
				
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
</div>
</body>
</html>