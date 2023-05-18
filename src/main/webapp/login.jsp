<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<title>로그인 페이지</title>
<style>
@font-face {
    font-family: 'KyoboHand';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_20-04@1.0/KyoboHand.woff') format('woff');
    font-weight: normal;
    font-style: normal;
}
*{
	font-family: 'KyoboHand';
}

.login-page {
/* 	display: flex;
	justify-content: center;
	align-items: center; */
	min-height: 100vh;
/* 	background-color: #f0f0f0; */
	background-image: url('메인배경_1.png'); /* 이미지 파일 경로를 지정해주세요 */
	/* background-repeat: no-repeat; */ /* 이미지 반복 방지 */
	/* background-position: center; */ /* 이미지 중앙 정렬 */
	background-size: cover; /* 이미지 크기 조절 */
}

.login-wrapper {
	background-color: white;
	padding: 2rem;
	border-radius: 1rem;
	width: 400px;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
	
	position: absolute;
    top: 20%;
    left: 50%;
    transform: translate(-50%);
}

.login-wrapper h2 {
	text-align: center;
	margin-bottom: 1rem;
}

input[type="text"], input[type="password"] {
	display: block;
	width: 100%;
	margin-bottom: 1rem;
	padding: 0.5rem;
}

input[type="submit"] {
	display: block;
	width: 100%;
	background-color: #007bff;
	border: none;
	color: white;
	padding: 0.5rem;
	cursor: pointer;
	font-weight: bold;
	border-radius: 0.25rem;
}

input[type="submit"]:hover {
	background-color: #0056b3;
}

ul {
	list-style-type: none;
	padding: 0;
}

.kakao-buttons {
	position: relative; /* position 속성을 relative로 설정. */
	top: 20px; /* top 속성을 이용해 버튼을 아래로 20px 이동. */
	left: 35px; /* left 속성을 이용해 버튼을 오른쪽으로 50px 이동. */
}

.naver-buttons {
	position: relative; /* position 속성을 relative로 설정. */
	top: 15px; /* top 속성을 이용해 버튼을 아래로 20px 이동. */
	left: 35px; /* left 속성을 이용해 버튼을 오른쪽으로 50px 이동. */
}
</style>
<body>


	<div class="login-page">
	<jsp:include page="navBar.jsp" />
	<!-- navBar.jsp 추가 -->
		<div class="login-wrapper">
			<h2>로그인</h2>
			<form method="post" action="loginAction.jsp" id="login-form">
				<input type="text" class="form-control" id="manager_id"
					name="userID" maxlength="20" placeholder="아이디 입력 *"> <input
					type="password" class="form-control" name="userPassword"
					maxlength="20" placeholder="비밀번호 입력 *"> <label
					for="remember-check"> <input type="checkbox"
					id="remember-check" style="position: relative; left: 0;" /> 로그인 상태
					유지
				</label> <input type="submit" class="btn btn-primary form-control"
					value="LOGIN">
				<div class="social-buttons">
					<br>
					<div class="kakao-buttons">
						<ul>
							<li onclick="kakaoLogin();"><a href="javascript:void(0)">
									<img src="카카오_로그인.png" alt="카카오 로그인"
									style="width: 200px; height: 50px;">
							</a></li>
						</ul>
					</div>
					<div class="naver-buttons">
						<ul>
							<li>
								<!-- 아래와같이 아이디를 꼭 써준다. --> <a href="#"
								onclick="naverLogin.authorize()" style="cursor: pointer;"> <img
									src="네이버_로그인.png" alt="네이버 로그인"
									style="width: 200px; height: 50px;">
							</a>
						</ul>
					</div>
				</div>
			</form>
		</div>
		  <%@ include file = "BGM.jsp" %> 
       <%@ include file = "footer.jsp" %>
	</div>

	<!-- 카카오 스크립트 -->
	<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
	<script>
Kakao.init('c5768091dc20d0d6b6bd572539d84ff0'); //발급받은 키 중 javascript키를 사용해준다.
console.log(Kakao.isInitialized()); // sdk초기화여부판단

//카카오로그인
function kakaoLogin() {
  Kakao.Auth.login({
    success: function (response) {
      Kakao.API.request({
        url: '/v2/user/me',
        success: function (response) {
          console.log(response);
          // 사용자의 닉네임을 가져옵니다.
          const nickname = response.properties.nickname;

          // 서버에 요청하여 세션에 저장하는 코드를 추가합니다. (예: 로그인 처리)
          // 이 부분은 서버에서 처리해야하므로, 별도의 서버 스크립트를 작성해야 합니다.
          $.ajax({
        	  type: "POST",
        	  url: "kakaoLogin.jsp",
        	  data: { nickname: nickname },
        	  success: function (response) {
        	    // 로그인에 성공한 경우 메인 페이지로 이동
        	    window.location.href = "main.jsp";
        	  },
        	  error: function (request, status, error) {
        	    console.log("code:" + request.status + "\n" + "message:" + request.responseText + "\n" + "error:" + error);
        	  },
        	});

        },
        fail: function (error) {
          console.log(error);
        },
      });
    },
    fail: function (error) {
      console.log(error);
    },
  });
}

//카카오로그아웃  
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


	<!-- 네이버 스크립트 -->
	<script
		src="https://static.nid.naver.com/js/naveridlogin_js_sdk_2.0.2.js"
		charset="utf-8"></script>

	<script>
var naverLogin = new naver.LoginWithNaverId(
    {
        clientId: "39I2hbPLaBqwis5MtIxf",
        callbackUrl: "http://localhost:8080/WebTeamProject_01/login.jsp",
        isPopup: false,
        callbackHandle: true
    }
);  

naverLogin.init();

window.addEventListener('load', function () {
    naverLogin.getLoginStatus(function (status) {
        if (status) {
            var email = naverLogin.user.getEmail();
            console.log(naverLogin.user); 
            
            if (email === undefined || email === null) {
                alert("이메일은 필수정보입니다. 정보제공을 동의해주세요.");
                naverLogin.reprompt();
                return;
            }
            
            if(email !== undefined && email !== null) {
                var naverNickname = naverLogin.user.name;
                var xhttp = new XMLHttpRequest();
                xhttp.onload = function() {
                    if (this.status === 200) {
                        console.log("naverLogin.jsp response:", this.responseText);
                        location.href = "main.jsp";
                    } else {
                        console.error("Error: naverLogin.jsp returned status", this.status);
                    }
                };
                xhttp.open("POST", "naverLogin.jsp", true);
                xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
                xhttp.send("naverNickname=" + naverNickname);
            }

			} else {
				console.log("callback 처리에 실패하였습니다.");
			}
		});
	});
</script>

	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="js/bootstrap.js"></script>

</body>
</html>