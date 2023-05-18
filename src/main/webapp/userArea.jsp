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
<title>자유 게시판</title>
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
	width: 100%; height: 650px;
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
	
    int pageSize = 10; // 한 페이지에 출력할 항목 수
    int totalItems = areaInfoList.size(); // 전체 항목 수
    int totalPages = (totalItems + pageSize - 1) / pageSize; // 전체 페이지 수
    
    int currentPage = 1; // 현재 페이지 번호
    if (request.getParameter("page") != null) {
        currentPage = Integer.parseInt(request.getParameter("page"));
    }
    
    int startIndex = (currentPage - 1) * pageSize; // 페이지의 시작 인덱스
    int endIndex = Math.min(startIndex + pageSize, totalItems); // 페이지의 끝 인덱스 (마지막 페이지에서는 전체 항목 수를 초과하지 않도록 조정)
    
    List<AreaDto> currentList = areaInfoList.subList(startIndex, endIndex); // 현재 페이지에 출력할 부분 리스트
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
							<col style="width: 30%;">
							<col style="width: 40%;">
						</colgroup>
						<thead>
							<tr>
								<th style="position: sticky; top: 0; background-color: #f1f1f1;">이름</th>
								<th style="position: sticky; top: 0; background-color: #f1f1f1;">주소</th>
								<th style="position: sticky; top: 0; background-color: #f1f1f1;">설명</th>
							</tr>
						</thead>
						<tbody
							style="border-color: lightgray; vertical-align: middle; overflow-y: auto;">
						<% for (AreaDto item : currentList) { %>
                            <tr>
                                <td><%= item.getArea_name() %></td>
                                <td><%= item.getArea_address() %></td>
                                <td><%= item.getArea_explanation() %></td>
                            </tr>
                        <% } %>
						</tbody>
					</table>
				</div>

            <%-- 페이지네이션 링크 --%>
			<div class="paging">
                <% if (currentPage > 1) { %>
                    <a href="?page=1" style="width: 40px; height: 40px; text-align: center;">≪</a>
                    <a href="?page=<%= currentPage - 1 %>" style="width: 40px; height: 40px; text-align: center;">&lt;</a>
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

					for (int i = 1; i <= totalPages; i++) {  %>
						<% if (i == currentPage) { %>
							<a href="?page=<%=i%>" class="active"><%=i%></a>
						<% } else { %>
							<a href="?page=<%=i%>"><%=i%></a>
						<% } %>
					<% } %>

					<% if (currentPage < totalPages) { %>
                    <a href="?page=<%=currentPage + 1%>" style="width: 40px; height: 40px; text-align: center;">&gt;</a>
                    <a href="?page=<%= totalPages %>" style="width: 40px; height: 40px; text-align: center;">≫</a>
                <% } %>
            </div>
        </div>
    </div>
    <%@ include file="footer.jsp"%>
</div>
</body>
</html>