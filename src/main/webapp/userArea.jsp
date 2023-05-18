<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="base.dao.AreaDao"%>
<%@ page import="base.dto.AreaDto"%>
<%@ page import="java.util.*"%>
<%@ page import="java.net.URLEncoder" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
    background-color: #ffffff60; /* 불투명한 배경 색상 */
    z-index: 1; /* 메인 컨테이너 내부에서 가장 위에 배치하기 위해 z-index 설정 */
} 


.userList {
	width: 100%; height: 580px;
	font-size: 1.1rem;
	overflow: auto;
}
/* 스크롤바 커스텀 */
.userList::-webkit-scrollbar {
    width: 8px;  /* 스크롤바의 너비 */
}
.userList::-webkit-scrollbar-thumb {
    height: 30%; /* 스크롤바의 길이 */
    background: #00000098; /* 스크롤바의 색상 */
    border-radius: 10px;
}
/* 스크롤바 뒷 배경 색상 */
.userList::-webkit-scrollbar-track {
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
<body>

	<%
	request.setCharacterEncoding("UTF-8");
	
	AreaDao areaDao = new AreaDao();

	List<AreaDto> areaInfoList = areaDao.selectAreaInfoList();
	
	%>
	
	<div class="mainContainer" style="width: 1280px">
		<%@ include file="header.jsp"%>
		<%@ include file="menuBar.jsp"%>
		<div class="subContainer">
			<div class="container" style="width: 100%">
			  <br>
				<div class="userList">
					<table class="table table-hover">
						<colgroup style="background-color: #ffffffa1">
							<col style="width: 30%;">
							<col style="width: 40%;">
							<col style="width: 30%;">
						</colgroup>
						<thead>
							<tr>
								<th style="position: sticky; top: 0; background-color: #f1f1f1;">이름</th>
								<th style="position: sticky; top: 0; background-color: #f1f1f1;">주소</th>
								<th style="position: sticky; top: 0; background-color: #f1f1f1;">설명</th>
							</tr>
						</thead>
						<tbody
							style="border-color: lightgray; vertical-align: middle; overflow-y: auto; cursor: pointer;">
							
							<%
							/* 페이지네이션 */
							int currentPage = 1; //현재 페이지 번호. 초기값 1
							int itemsPerPage = 12; //한 페이지에 표시할 아이템(리스트) 수
							int totalItems = areaInfoList.size(); //아이템의 총 수
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
							List<AreaDto> currentPageItems = areaInfoList.subList(startIndex, endIndex);

							int startItem = (currentPage - 1) * itemsPerPage;
							int endItem = Math.min(startItem + itemsPerPage, areaInfoList.size());

							/* searchDao.selectSearchInfoList(area, search) 출력 */
							for (int i = startItem; i < endItem; i++) {
								AreaDto item = areaInfoList.get(i);
							%>
							<%-- <tr onclick="location.href='detail.jsp?area=<%=area%>&name=<%=URLEncoder.encode(item.getName(), "UTF-8")%>'"> --%>
							<!-- main에서 받은 값(area, name) detail.jsp에도 보내기, URLEncoder (임포트 필요) → [, ] 문자 URL인코딩 / 아스키 코드 -->
							<tr>

								<td><%=item.getArea_name()%></td>
								<td><%=item.getArea_address()%></td>
								<td><%=item.getArea_explanation()%></td>
							</tr>
							<%
			}
		%>
						</tbody>
					</table>
				</div>

			</div>
			
		</div>
		<%@ include file="footer.jsp"%>
	</div>
</body>
</html>