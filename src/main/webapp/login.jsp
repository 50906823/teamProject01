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
	color: black;
	font-size: 22px;
	background-color: yellow;
	margin-top: 20px;
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
</style>

<body>
	<div class="login-wrapper">
		<h2>로그인</h2>
		<div class="col-lg-4"></div>
		<div class="col-lg-4">
			<div class="jumbotron" style="padding-top: 20px;">
				<form method="post" action="loginAction.jsp" id="login-form">
					<input type="text" class="form-control" id="manager_id" name="userID" 
						maxlength="20" placeholder="아이디 입력 *">
					<br> 
					<input type="password" class="form-control" name="userPassword"
						maxlength="20" placeholder="비밀번호 입력 *"> <br> <label
						for="remember-check"> <input type="checkbox"
						id="remember-check" style="position: relative; left: 0;"/>아이디 저장하기
					</label> <input type="submit" class="btn btn-primary form-control"
						value="LOGIN">
				</form>
			</div>
		</div>
		<div class="col-lg-4"></div>
	</div>
	
	
	
	<ul>
	<li onclick="kakaoLogin();">
      <a href="javascript:void(0)">
          <span>카카오 로그인</span>
      </a>
	</li>
	<li onclick="kakaoLogout();">
      <a href="javascript:void(0)">
          <span>카카오 로그아웃</span>
      </a>
	</li>
</ul>
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
        	  console.log(response)
        	  window.location.href = 'loginAction.jsp'; // 로그인 성공 시 main.jsp로 이동
          },
          fail: function (error) {
            console.log(error)
          },
        })
      },
      fail: function (error) {
        console.log(error)
      },
    })
  }
//카카오로그아웃  
function kakaoLogout() {
    if (Kakao.Auth.getAccessToken()) {
      Kakao.API.request({
        url: '/v1/user/unlink',
        success: function (response) {
        	console.log(response)
        },
        fail: function (error) {
          console.log(error)
        },
      })
      Kakao.Auth.setAccessToken(undefined)
    }
  }  
</script>

<script>

//쿠키값 set
function setCookie(cookieName, value, exdays){
    let exdate = new Date();
    exdate.setDate(exdate.getDate() + exdays);
    let cookieValue = escape(value) + ((exdays == null) ? "" : "; expires=" + exdate.toGMTString());
    document.cookie = cookieName + "=" + cookieValue;
}

//쿠키값 delete
function deleteCookie(cookieName){
    let expireDate = new Date();
    expireDate.setDate(expireDate.getDate() -1);
    document.cookie = cookieName + "= " + "; expires=" + expireDate.toGMTString();
}

//쿠키값 get
function getCookie(cookieName){
    cookieName = cookieName + "=";
    let cookieData = document.cookie;
    let start = cookieData.indexOf(cookieName);
    let cookieValue = '';
    if(start != -1){
        start += cookieName.length;
        let end = cookieData.indexOf(';', start);
        if(end == -1)end = cookieData.length;
        cookieValue = cookieData.substring(start, end);
    }
    return unescape(cookieValue); //unescape로 디코딩 후 값 리턴
}
$(function(){
    //id 저장 체크박스 기능 추가
    var userInputId = getCookie("userInputId");//저장된 쿠기값 가져오기
    $("#manager_id").val(userInputId); 

    if($("#manager_id").val() != ""){ // 그 전에 ID를 저장해서 처음 페이지 로딩
        $("#useCookie").attr("checked", true); // ID 저장하기를 체크 상태로 두기.
    }

    $("#remember-check").change(function(){ // 체크박스에 변화가 발생시
        if($("#remember-check").is(":checked")){ // ID 저장하기 체크했을 때,
            var userInputId = $("#manager_id").val();
            setCookie("userInputId", userInputId, 7); // 7일 동안 쿠키 보관
        }else{ // ID 저장하기 체크 해제 시,
            deleteCookie("userInputId");
        }
    });

    // ID 저장하기를 체크한 상태에서 ID를 입력하는 경우, 이럴 때도 쿠키 저장.
    $("#manager_id").keyup(function(){ // ID 입력 칸에 ID를 입력할 때,
        if($("#remember-check").is(":checked")){ // ID 저장하기를 체크한 상태라면,
            var userInputId = $("#manager_id").val();
            setCookie("userInputId", userInputId, 7); // 7일 동안 쿠키 보관
        }
    });
});	
</script>
	
	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="js/bootstrap.js"></script>
</body>

</html>