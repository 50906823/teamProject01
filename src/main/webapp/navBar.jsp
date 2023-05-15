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
	align-items: baseline;
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
		<li class="nav-item"><span>전국의 관광지를
				소개해드립니다!&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></li>
		<% if (welcomeName == null) { %>
		<li class="nav-item"><a class="nav-link active"
			aria-current="page" href="login.jsp" style="color: black">로그인</a></li>
		<li class="nav-item"><a class="nav-link" href="join.jsp"
			style="color: black">회원가입</a></li>
		<% } else { %>
		<li class="nav-item"><span><%= welcomeName %>님 환영합니다!</span></li>
		<% if (welcomeName.equals("admin")) { %>
		<li class="nav-item"><a class="nav-link active"
			aria-current="page" href="adminMembers.jsp" style="color: black">회원관리</a></li>
		<% } %>
		<li class="nav-item"><a class="nav-link active"
			aria-current="page" onclick="kakaoLogout()" href="logoutAction.jsp"
			style="color: black">로그아웃</a></li>
		<% } %>
		<li class="nav-item"><a class="nav-link" href="#"
			style="color: black">Link</a></li>
	</ul>

	<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
	
	<script>
  // 카카오 SDK 초기화
  Kakao.init('c5768091dc20d0d6b6bd572539d84ff0'); // 여기에 앱 키를 입력하세요

  function kakaoLogout() {
    if (Kakao.Auth.getAccessToken()) {
      Kakao.Auth.logout(function () {
        // 로그아웃 성공 후 서버에서 로그아웃 처리
        location.href = 'logoutAction.jsp';
      });
    } else {
      // 카카오 로그인이 되어있지 않은 경우 서버에서 로그아웃 처리
      location.href = 'logoutAction.jsp';
    }
  }
</script>

</body>

</html>
