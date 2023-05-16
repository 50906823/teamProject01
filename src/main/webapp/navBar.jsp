<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>navBar</title>
<link
    href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css"
    rel="stylesheet"
    integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ"
    crossorigin="anonymous">
<style>
.nav {
    display: flex;
    justify-content: space-between;
    align-items: baseline;
    background-color: #FFFFFF;
}

.nav-left, .nav-right {
    display: flex;
    align-items: baseline;
    font-weight: bold;
}

.nav-item { 
    margin-right: 0rem;
}

.nav-item:last-child {
    margin-right: 0rem;
}

</style>

</head>
<body>
    <%
        String userID = null;
        String userName = null;
        String kakaoNickname = null;
        String naverNickname = null;

        if (session.getAttribute("userID") != null) {
            userID = (String) session.getAttribute("userID");
            userName = (String) session.getAttribute("userName");
        }
        if (session.getAttribute("kakaoNickname") != null) {
            kakaoNickname = (String) session.getAttribute("kakaoNickname");
        }
        if (session.getAttribute("naverNickname") != null) {
            naverNickname = (String) session.getAttribute("naverNickname");
        }

        String welcomeName = userID != null ? userID : kakaoNickname != null ? kakaoNickname : naverNickname;
    %>

    <ul class="nav">
    <div class="nav-left">
        <li class="nav-item"><a class="nav-link" href="main.jsp" style="color: black"><img src="놀러가조_로고.png" alt="Logo" style="height: 40px; width: 150px;">
        </a></li>
    </div>
    <div class="nav-right">
        <% if (welcomeName == null) { %>
        <li class="nav-item"><a class="nav-link active"
            aria-current="page" href="login.jsp" style="color: black">로그인</a></li>
        <li class="nav-item"><a class="nav-link" href="join.jsp"
            style="color: black">회원가입</a></li>
        <% } else { %>
        <li class="nav-item"><span><%= welcomeName %>님 환영합니다! </span></li>
        <% if (welcomeName.equals("admin")) { %>
        <li class="nav-item"><a class="nav-link active"
            aria-current="page" href="adminMembers.jsp" style="color: black"> 회원관리</a></li>
        <% } %>
        <li class="nav-item"><a class="nav-link active"
            aria-current="page" onclick="kakaoLogout()" href="logoutAction.jsp"
            style="color: black">로그아웃</a></li>
        <% } %>
    </div>
</ul>
    
</body>
</html>
