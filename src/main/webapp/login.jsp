<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="css/bootstrap.css">
<title>로그인 페이지</title>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
</head>

<style>
.login-wrapper {
	width: 400px;
	height: 350px;
	position: absolute;
	left: 400px;
	top: 300px;
	box-sizing: border-box;
}

.login-wrapper>h2 {
	font-size: 24px;
	color: black;
	margin-bottom: 20px;
}

#login-form>input {
	width: 100%;
	height: 48px;
	padding: 0 10px;
	box-sizing: border-box;
	margin-bottom: 16px;
	border-radius: 6px;
	background-color: white;
}

#login-form>input::placeholder {
	color: gray;
}

#login-form>input[type="submit"] {
	color: white;
	font-size: 22px;
	background-color: #1a73e8; /* 진한 파란색으로 변경 */
	margin-top: 20px;
	border: none; /* 테두리 제거 */
}

#login-form>input[type="checkbox"] {
	display: none;
}

#login-form>label {
	color: black;
}

#login-form input[type="checkbox"]+label {
	cursor: pointer;
	padding-left: 26px;
	background-repeat: no-repeat;
	background-size: contain;
}

#login-form input[type="checkbox"]:checked+label {
	background-repeat: no-repeat;
	background-size: contain;
}

ul {
	list-style-type: none;
	padding: 0;
}

.kakao-buttons {
	position: absolute;
	top: 620px;
	left: 390px;
}

.naver-buttons {
	position: absolute;
	top: 620px;
	left: 610px;
}
</style>

<body>
	<div class="login-wrapper">
		<h2>로그인</h2>
		<div class="col-lg-4"></div>
		<div class="col-lg-4">
			<div class="jumbotron" style="padding-top: 20px;">
				<form method="post" action="loginAction.jsp" id="login-form">
					<input type="text" class="form-control" id="manager_id"
						name="userID" maxlength="20" placeholder="아이디 입력 *"> <br>
					<input type="password" class="form-control" name="userPassword"
						maxlength="20" placeholder="비밀번호 입력 *"> <br> <label
						for="remember-check"> <input type="checkbox"
						id="remember-check" style="position: relative; left: 0;" /> 로그인
						상태 유지
					</label> <input type="submit" class="btn btn-primary form-control"
						value="LOGIN">
				</form>
			</div>
		</div>
		<div class="col-lg-4"></div>
	</div>


	<!-- 카카오로그인 버튼 body-->
	<div class="kakao-buttons">
		<ul>
			<li onclick="kakaoLogin();"><a href="javascript:void(0)"> <img
					src="카카오_로그인.png" alt="카카오 로그인" style="width: 200px; height: 50px;">
			</a></li>
		</ul>
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

	<div class="naver-buttons">
		<ul>
			<li>
				<!-- 아래와같이 아이디를 꼭 써준다. --> <a href="#"
				onclick="naverLogin.authorize()" style="cursor: pointer;"> <img
					src="네이버_로그인.png" alt="네이버 로그인" style="width: 200px; height: 50px;">
			</a>
		</ul>
	</div>

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
            

         // 수정된 코드의 일부
            if(email !== undefined && email !== null) {
                var naverNickname = naverLogin.user.name; // 수정된 코드
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

	var testPopUp;
	function openPopUp() {
		testPopUp = window.open("https://nid.naver.com/nidlogin.logout",
				"_blank",
				"toolbar=yes,scrollbars=yes,resizable=yes,width=1,height=1");
	}
	function closePopUp() {
		testPopUp.close();
	}

	function naverLogout() {
		openPopUp();
		setTimeout(function() {
			closePopUp();
		}, 1000);
	}
</script>

	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="js/bootstrap.js"></script>
</body>

</html>