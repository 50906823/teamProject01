<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>네이버로그인</title>
</head>
<body>
	<%
	try {
		String naverNickname = request.getParameter("nickname");
		if (naverNickname != null && !naverNickname.isEmpty()) {

			session.setAttribute("naverNickname", naverNickname);
		}
		response.sendRedirect("main.jsp");
	} catch (Exception e) {
		out.println("Error: " + e.getMessage());
	}
	%>
</body>
</html>
