<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="javax.servlet.http.HttpSession" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
<script>
</script>
</head>
<body>
<%
    String naverNickname = request.getParameter("nickname");
    try {
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
