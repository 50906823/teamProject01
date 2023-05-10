<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입페이지</title>
</head>

<style>
    .signup-wrapper {
        width: 500px;
        height: 350px;
        position: absolute;
        left: 400px;
        top: 100px;
        box-sizing: border-box;
    }

    .signup-wrapper>h2 {
        font-size: 24px;
        color: black;
        margin-bottom: 20px;
    }

    #signup-form>input {
        width: 100%;
        height: 48px;
        padding: 0 10px;
        box-sizing: border-box;
        margin-bottom: 16px;
        border-radius: 6px;
        background-color: white;
    }

    #signup-form>input::placeholder {
        color: gray;
    }

    #signup-form>input[type="submit"] {
        color: black;
        font-size: 22px;
        background-color: yellow;
        margin-top: 20px;
    }

    #signup-form>input[type="checkbox"] {
        display: none;
    }

    #signup-form>label {
        color: black;
    }

    #signup-form input[type="checkbox"]+label {
        cursor: pointer;
        padding-left: 26px;
        background-repeat: no-repeat;
        background-size: contain;
    }

    #signup-form input[type="checkbox"]:checked+label {
        background-repeat: no-repeat;
        background-size: contain;
    }
</style>

<body>
    <div class="signup-wrapper">
        <h2>회원가입</h2>
        <form method="post" action="joinAction.jsp">
            <input type="text" id="userID" name="userID" placeholder="아이디 입력 *">
            <br>
            <input type="password" id="userPassword" name="userPassword" placeholder="비밀번호 입력 *">
            <br>
            <input type="text" id="userName" name="userName" placeholder="이름 입력 *">
            <br>
            <input type="radio" name="userGender" value="m" checked>남자
            <input type="radio" name="userGender" value="w">여자
            <br>
            <input type="text" id="userEmail" name="userEmail" placeholder="이메일 입력 *">
            <br>
            <input type="text" id="userPhone" name="userPhone" placeholder="전화번호 입력 *">
            <br>
            <input type="submit" value="SIGN UP">
        </form>
    </div>

</body>

</html>