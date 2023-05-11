<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ"
	crossorigin="anonymous">
<style>
.nav {
	align-items: baseline;
}
</style>
</head>
<body>
	<%
		String userID = null;
		if (session.getAttribute("userID") != null) {
			userID = (String) session.getAttribute("userID");
		}
	%>

	<%
		if(userID == null) {
	%>
	<ul class="nav">
		<li class="nav-item"><span>전국의 관광지를 소개해드립니다!</span></li>
		<li class="nav-item"><a class="nav-link active"
			aria-current="page" href="login.jsp" style="color: black">로그인</a></li>
		<li class="nav-item"><a class="nav-link" href="join.jsp"
			style="color: black">회원가입</a></li>
		<li class="nav-item"><a class="nav-link" href="#"
			style="color: black">Link</a></li>
	</ul>

	<%
		} else {
	%>
	<ul class="nav">
		<li class="nav-item"><span>전국의 관광지를 소개해드립니다!</span></li>
		<li class="nav-item"><a class="nav-link active"
			aria-current="page" href="logoutAction.jsp" style="color: black">로그아웃</a>
		<li class="nav-item"><a class="nav-link" href="#"
			style="color: black">Link</a></li>
	</ul>

	<%
		}
	%>
	
</body>
</html>