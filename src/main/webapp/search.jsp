<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="base.dao.SeoulDao"%>
<%@ page import="base.dto.SeoulDto"%>
<%@ page import="java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상세 검색 페이지</title>
</head>
<body>
	<%@ include file = "header.jsp" %>
	<%@ include file = "menuBar.jsp" %>
	
	<h1>상세 검색 페이지</h1>
	
<!-- 	<h3>시군구 기준 날씨</h3>
	<h3>시군구 내 관광지 리스트</h3> -->
	
	
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
	
	request.setCharacterEncoding("UTF-8"); 
	
    String search = request.getParameter("search");
    
    SeoulDto seoulDto = new SeoulDto();
    
    seoulDto.setSeoul_name(search);
    
    SeoulDao seoulDao = new SeoulDao();
    
    List<SeoulDto> seoulInfoList = seoulDao.selectSeoulInfoList(search);
		
		for(SeoulDto item : seoulInfoList){
	%>
			<tr>
				<td><%=item.getSeoul_name()%></td>
				<td><%=item.getSeoul_address()%></td>
				<td><%=item.getSeoul_tel()%></td>

			</tr>
	<%
		}
	%>
		</tbody>	
	</table>
</body>
</html>