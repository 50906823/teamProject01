<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.List"%>
<%@ page import="base.dto.JoinDto"%>
<%@ page import="base.dao.JoinDao"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원관리 페이지</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ"
	crossorigin="anonymous">
</head>
<body>

	<jsp:include page="navBar.jsp" />
	<!-- navBar.jsp 추가 -->

	<div class="container">
		<h1 class="mt-3">회원 관리</h1>
		<table class="table table-bordered mt-3">
			<thead>
				<tr>
					<th scope="col">ID</th>
					<th scope="col">이름</th>
					<th scope="col">이메일</th>
					<th scope="col">전화번호</th>
					<th scope="col">삭제</th>
				</tr>
			</thead>
			<tbody>
				<%
                JoinDao userDao = new JoinDao();
                List<JoinDto> userList = userDao.getUserList();
                for (JoinDto user : userList) {
                %>
				<tr>
					<td><%= user.getUserID() %></td>
					<td><%= user.getUserName() %></td>
					<td><%= user.getUserEmail() %></td>
					<td><%= user.getUserPhone() %></td>
					<td><a href="deleteUser.jsp?userID=<%= user.getUserID() %>"
						class="btn btn-danger">삭제</a></td>
				</tr>
				<% } %>
			</tbody>
		</table>
		  <%@ include file = "BGM.jsp" %> 
       <%@ include file = "footer.jsp" %>
	</div>
</body>
</html>
