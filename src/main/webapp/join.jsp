<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입 페이지</title>
<link
    href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css"
    rel="stylesheet"
    integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ"
    crossorigin="anonymous">
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

.join-page {
/*     display: flex;
    justify-content: center;
    align-items: center; */
    min-height: 100vh;
/*     background-color: #f0f0f0; */
    background-image: url('메인배경_1.png'); /* 이미지 파일 경로를 지정해주세요 */
    /* background-repeat: no-repeat; */ /* 이미지 반복 방지 */
    /* background-position: center; */ /* 이미지 중앙 정렬 */
    background-size: cover; /* 이미지 크기 조절 */
}

.signup-wrapper {
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

.signup-wrapper h2 {
    text-align: center;
    margin-bottom: 1rem;
}

input[type="text"],
input[type="password"],
input[type="email"] {
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

.user-gender-wrapper {
    display: flex;
    align-items: center;
    margin-bottom: 1rem;
}

input[type="radio"] {
    margin-left: 0.5rem;
}
</style>
</head>
<body>
<div class="join-page">
<jsp:include page="navBar.jsp" /> <!-- navBar.jsp 추가 -->
    <div class="signup-wrapper">
        <h2>회원가입</h2>
        <form method="post" action="joinAction.jsp">
            <input type="text" id="userID" name="userID" placeholder="아이디 입력 *">
            <input type="password" id="userPassword" name="userPassword" placeholder="비밀번호 입력 *">
            <input type="text" id="userName" name="userName" placeholder="이름 입력 *">
            <div class="user-gender-wrapper">
                <label>성별</label>
                <input type="radio" name="userGender" value="m" checked>남자
                <input type="radio" name="userGender" value="w">여자
            </div>
            <input type="email" id="userEmail" name="userEmail" placeholder="이메일 입력 *">
            <input type="text" id="userPhone" name="userPhone" placeholder="전화번호 입력 *">
            <input type="submit" value="SIGN UP">
        </form>
    </div>
      <%@ include file = "BGM.jsp" %> 
       <%@ include file = "footer.jsp" %>
</div>

</body>
</html>
