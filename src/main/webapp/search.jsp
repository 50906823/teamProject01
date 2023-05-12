<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="base.dao.SearchDao"%>
<%@ page import="base.dto.SearchDto"%>
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
				<!-- main에서 받은 값(area, name)을 detail.jsp에도 보내기 -->
				<td><a href="detail.jsp?area=<%=area%>&name=<%=item.getName()%>"><%=item.getName()%></a></td>
				<td><%=item.getAddress()%></td>
				<td><%=item.getTel()%></td>
			</tr>
	<%
		}
	%>
		</tbody>	
	</table>
</body>
</html>