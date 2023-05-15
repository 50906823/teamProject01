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
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script type="text/javascript">
$(document).ready(function() {
  const location = "${area}";
  $.ajax({
    method: 'GET',
    url: `http://api.openweathermap.org/data/2.5/weather?q=${location}&appid=41ecd1c23b0f1a112643d899fee45436&units=metric&lang=kr`,
    success: function(data) {
      const currentTemp = data.main.temp;
      const weatherDesc = data.weather[0].description;
      const iconCode = data.weather[0].icon;
      const iconUrl = `http://openweathermap.org/img/w/${iconCode}.png`;
      $('#current-weather').html(`
        <div class="d-flex flex-column justify-content-center align-items-center">
          <img src="${iconUrl}" alt="weather icon">
          <h3>${currentTemp} ℃</h3>
          <p>${weatherDesc}</p>
        </div>
      `);
    },
    error: function() {
      console.log('오류가 발생했습니다. OpenWeatherMap API 호출에 실패하였습니다.');
    }
  });
});
</script>
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
		/* main-select-option에 있는 value 한글화 */
		String areaString = "";
		if (area.equals("seoul")) { areaString = "서울";
			} else if (area.equals("busan")) { areaString = "부산";
			} else if (area.equals("daegu")) { areaString = "대구";
			} else if (area.equals("incheon")) { areaString = "인천";
			} else if (area.equals("gwangju")) { areaString = "광주";
			} else if (area.equals("daejeon")) { areaString = "대전";
			} else if (area.equals("ulsan")) { areaString = "울산";
			} else if (area.equals("sejong")) { areaString = "세종";
			} else if (area.equals("gyeongi")) { areaString = "경기";
			} else if (area.equals("gangwon")) { areaString = "강원";
			} else if (area.equals("chungbuk")) { areaString = "충북";
			} else if (area.equals("chungnam")) { areaString = "충남";
			} else if (area.equals("gyeongbuk")) { areaString = "경북";
			} else if (area.equals("gyeongnam")) { areaString = "경남";
			} else if (area.equals("jeonbuk")) { areaString = "전북";
			} else if (area.equals("jeonnam")) { areaString = "전남";
			} else if (area.equals("jeju")) { areaString = "제주";
			} else { areaString = "지역 선택";
		}
			
		/* if(검색어 입력X(지역만 검색시)){출력 내용}else{출력 내용} */
		if(search == "") {
			out.println("<h3>지역: \"" + areaString + "\" 검색 결과</h3>");
		} else {
			out.println("<h3>지역: \"" + areaString + "\", 검색어: \"" + search + "\" 검색 결과</h3>");
		}
		%>
		
	<div class="row justify-content-center">
	    <div class="col-12 col-md-6">
	      <div class="card my-4">
	        <div class="card-header">현재 날씨 정보</div>
	        <div class="card-body">
	          <div class="d-flex justify-content-center align-items-center" id="current-weather">
	            <p class="text-secondary">날씨 정보를 불러오는 중입니다.</p>
	          </div>
	        </div>
	      </div>
  	  </div>
  </div>
<div class="searchList">
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