<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
        <form method="post" action="Main.html" id="login-form">
            <input type="text" name="userName" placeholder="아이디 입력 *">
            <br>
            <input type="password" name="userPassword" placeholder="비밀번호 입력 *">
            <br>
            <label for="remember-check">
                <input type="checkbox" id="remember-check">아이디 저장하기
            </label>
            <input type="submit" value="LOGIN">
        </form>
    </div>

</body>

</html>