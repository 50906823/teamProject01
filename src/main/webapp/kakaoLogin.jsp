<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="javax.servlet.http.HttpSession" %>
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>카카오로그인</title>
</head>
<body>
<%
  try {
      String kakaoNickname = request.getParameter("nickname");
      if (kakaoNickname != null && !kakaoNickname.isEmpty()) {

          session.setAttribute("kakaoNickname", kakaoNickname);
      }
      response.sendRedirect("main.jsp");
  } catch (Exception e) {
      out.println("Error: " + e.getMessage());
  }
%>
</body>
</html>
