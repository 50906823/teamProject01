<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입페이지</title>
</head>

<body>
	<div class="signup-wrapper">
		<h2>회원가입</h2>
		<form method="post" action="joinAction.jsp">
			<input type="text" id="userID" name="userID" placeholder="아이디 입력 *">
			<br> <input type="password" id="userPassword"
				name="userPassword" placeholder="비밀번호 입력 *"> <br> <input
				type="text" id="userName" name="userName" placeholder="이름 입력 *">
			<br> <input type="radio" name="userGender" value="m" checked>남자
			<input type="radio" name="userGender" value="w">여자 <br>
			<input type="text" id="userEmail" name="userEmail"
				placeholder="이메일 입력 *"> <br> <input type="text"
				id="userPhone" name="userPhone" placeholder="전화번호 입력 *"> <br>
			<input type="submit" value="SIGN UP">
		</form>
	</div>

</body>

</html>