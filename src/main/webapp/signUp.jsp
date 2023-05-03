<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>

<style>
    .signup-wrapper {
        width: 400px;
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
        <form method="post" action="Main.html" id="signup-form">
            <input type="text" name="userName" placeholder="아이디 입력 *">
            <br>
            <input type="password" name="userPassword" placeholder="비밀번호 입력 *">
            <br>
            <input type="password" name="userPassword" placeholder="비밀번호 재확인 *">
            <br><br><br>
            <b>이름</b>
            <input type="text" name="userName_1" placeholder="입력 *">

            <div class="field gender">
                <br>
                <b>성별</b>
                <div>
                    <label><input type="radio" name="gender">남자</label>
                    <label><input type="radio" name="gender">여자</label>
                </div>
            </div>

            <input type="submit" value="SIGN UP">
        </form>
    </div>

</body>

</html>