<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="base.dao.SearchDao"%>
<%@ page import="base.dto.SearchDto"%>
<%@ page import="java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>단일 상세 페이지</title>
<style>
* { margin: 0; padding: 0; box-sizing: border-box; }
</style>
</head>
<body>
	<%@ include file = "header.jsp" %>
	<%@ include file = "menuBar.jsp" %>
	
	<%
		request.setCharacterEncoding("UTF-8");
		
		/* 값 가져오기 */
		String area = request.getParameter("area");
		String name = request.getParameter("name");
	  
		/* DAO 객체 생성 */
	    SearchDao searchDao = new SearchDao();
	    /* DAO 메소드 사용 */
	    SearchDto searchDto = searchDao.selectSearchInfoByName(area, name);
  	%>
  	
	<div class="container" style="width: 800px">
		<br>
		<h2><%= name %> 상세 정보</h2>
		<br>
		<%
			if(searchDto != null) {
		%>
			<p style="margin-bottom: 0; font-weight: bold; font-size: 1.1rem;">명칭</p>
			<p><%=searchDto.getName()%></p>
			
				<!-- 값이 null인 컬럼은 출력되지 않게 하기 -->
				<% if(searchDto.getPostNum() != null) { %>
					<p style="margin-bottom: 0; font-weight: bold; font-size: 1.1rem;">우편번호</p>
					<p><%=searchDto.getPostNum()%></p>
				<% } %>
				<% if(searchDto.getAddress() != null) { %>
					<p style="margin-bottom: 0; font-weight: bold; font-size: 1.1rem;">주소</p>
					<p><%=searchDto.getAddress()%></p>
				<% } %>
				<% if(searchDto.getOutline() != null) { %>
					<p style="margin-bottom: 0; font-weight: bold; font-size: 1.1rem;">개요</p>
					<p><%=searchDto.getOutline()%></p>
				<% } %>
				<% if(searchDto.getTel() != null) { %>
					<p style="margin-bottom: 0; font-weight: bold; font-size: 1.1rem;">문의 및 안내</p>
					<p><%=searchDto.getTel()%></p>
				<% } %>
				<% if(searchDto.getOpening() != null) { %>
					<p style="margin-bottom: 0; font-weight: bold; font-size: 1.1rem;">개장일</p>
					<p><%=searchDto.getOpening()%></p>
				<% } %>
				<% if(searchDto.getDayOff() != null) { %>
					<p style="margin-bottom: 0; font-weight: bold; font-size: 1.1rem;">쉬는날</p>
					<p><%=searchDto.getDayOff()%></p>
				<% } %>
				<% if(searchDto.getExperienceInfo() != null) { %>
					<p style="margin-bottom: 0; font-weight: bold; font-size: 1.1rem;">체험안내</p>
					<p><%=searchDto.getExperienceInfo()%></p>
				<% } %>
				<% if(searchDto.getExperienceAge() != null) { %>
					<p style="margin-bottom: 0; font-weight: bold; font-size: 1.1rem;">체험가능연령</p>
					<p><%=searchDto.getExperienceAge()%></p>
				<% } %>
				<% if(searchDto.getLimitPeople() != null) { %>
					<p style="margin-bottom: 0; font-weight: bold; font-size: 1.1rem;">수용인원</p>
					<p><%=searchDto.getLimitPeople()%></p>
				<% } %>
				<% if(searchDto.getPeriod() != null) { %>
					<p style="margin-bottom: 0; font-weight: bold; font-size: 1.1rem;">이용시기</p>
					<p><%=searchDto.getPeriod()%></p>
				<% } %>
				<% if(searchDto.getHours() != null) { %>
					<p style="margin-bottom: 0; font-weight: bold; font-size: 1.1rem;">이용시간</p>
					<p><%=searchDto.getHours()%></p>
				<% } %>
				<% if(searchDto.getParking() != null) { %>
					<p style="margin-bottom: 0; font-weight: bold; font-size: 1.1rem;">주차시설</p>
					<p><%=searchDto.getParking()%></p>
				<% } %>
				<% if(searchDto.getRentalStroller() != null) { %>
					<p style="margin-bottom: 0; font-weight: bold; font-size: 1.1rem;">유모차 대여 여부</p>
					<p><%=searchDto.getRentalStroller()%></p>
				<% } %>
				<% if(searchDto.getWithPet() != null) { %>
					<p style="margin-bottom: 0; font-weight: bold; font-size: 1.1rem;">애완동물 동반가능 여부</p>
					<p><%=searchDto.getWithPet()%></p>
				<% } %>
				<% if(searchDto.getDetailInfo() != null) { %>
					<p style="margin-bottom: 0; font-weight: bold; font-size: 1.1rem;">상세정보</p>
					<p><%=searchDto.getDetailInfo()%></p>
				<% } %>
		<%
			} else {
		%>
				<h2>상세 정보가 없는 관광지입니다.</h2>
		<%
			}
		%>
	</div>
</body>
</html>