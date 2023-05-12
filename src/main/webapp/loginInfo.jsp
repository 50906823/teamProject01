<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="base.dao.JoinDao"%>
<%@ page import="java.io.PrintWriter"%>
<% request.setCharacterEncoding("UTF-8"); %>
<jsp:useBean id="user" class="base.dto.JoinDto" scope="page" />
<jsp:setProperty name="user" property="userID" param="userID" />
<jsp:setProperty name="user" property="userPassword" param="userPassword" />
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset= UTF-8">
<title>LoginInfo</title>
</head>
<body>
<%
    String userID = null;
    String userName = null;
    String kakaoNickname = null;
    if (session.getAttribute("userID") != null) {
        userID = (String) session.getAttribute("userID");
        userName = (String) session.getAttribute("userName");
    }
    if (session.getAttribute("kakaoNickname") != null) {
        kakaoNickname = (String) session.getAttribute("kakaoNickname");
    }
%>

<%
    if(userID == null && kakaoNickname == null) {
    } else {
        String welcomeName = userID != null ? userID : kakaoNickname;
%>
<ul class="nav">
    <li class="nav-item"><span>&nbsp;&nbsp;<%= welcomeName %>님 환영합니다!</span></li>
</ul>

<%
    }
%>

</body>
</html>