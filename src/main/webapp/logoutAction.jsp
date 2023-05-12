<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset= UTF-8">
<title>로그아웃</title>
</head>
<body>
<%
 
  if (session != null) {
    session.invalidate();
  }
  response.sendRedirect("main.jsp");
%>
</body>
</html>