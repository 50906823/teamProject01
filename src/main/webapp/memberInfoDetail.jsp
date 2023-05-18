<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@ page import="base.dto.JoinDto"%>
<%@ page import="base.dao.JoinDao"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 상세정보 페이지</title>
<style>
.container { 
	display: flex;
	flex-direction: column;
    align-items: center;
}
</style>
</head>
<body>
<%@ include file="navBar.jsp" %>
<div class="container">
<h1>회원 상세정보</h1>

<%
	String id = request.getParameter("userID");
	JoinDao joinDao = new JoinDao();
	JoinDto joinDto = joinDao.selectMemberInfoById(id);
%>


<form name="memberDetailForm" action="" method="post">
	<div class="mb-3">
		<label for="formGroupExampleInput" class="form-label" style=" font-size: 1.1rem; font-weight: bold;"><br>ID</label>
		<input class="form-control" id="formGroupExampleInput" name="userID"
			style="width: 500px;" placeholder="Example input placeholder" value="<%=joinDto.getUserID()%>">
	</div>
	<div class="mb-3">
		<label for="formGroupExampleInput2" class="form-label" style=" font-size: 1.1rem; font-weight: bold;">Name</label>
		<input type="text" class="form-control" id="inputName" name="userName"
			style="width: 500px" placeholder="Another input placeholder" value="<%=joinDto.getUserName()%>">
	</div>
	<div class="mb-3">
		<label for="formGroupExampleInput3" class="form-label" style=" font-size: 1.1rem; font-weight: bold;">Password</label>
		<input type="password" class="form-control" id="inputPassword" name="userPassword"
			style="width: 500px" placeholder="Password" value="<%=joinDto.getUserPassword()%>">
	</div>
	<div class="mb-3">
		<label for="formGroupExampleInput4" class="form-label" style=" font-size: 1.1rem; font-weight: bold;">Gender</label>
		<input type="text" class="form-control" id="inputGender" name="userGender"
			style="width: 500px" placeholder="Gender" value="<%=joinDto.getUserGender()%>">
	</div>
	<div class="mb-3">
		<label for="formGroupExampleInput5" class="form-label" style=" font-size: 1.1rem; font-weight: bold;">Phone</label>
		<input type="text" class="form-control" id="inputPhone" name="userPhone"
			style="width: 500px" placeholder="Phone" value="<%=joinDto.getUserPhone()%>">
	</div>
	<div class="mb-3">
		<label for="formGroupExampleInput6" class="form-label" style=" font-size: 1.1rem; font-weight: bold;">Email</label>
		<input type="text" class="form-control" id="inputEmail" name="userEmail"
			style="width: 500px" placeholder="Email" value="<%=joinDto.getUserEmail()%>">
	</div>

	<button id="updateBtn" type="submit" class="btn btn-warning">수정</button>
	<button id="deleteBtn" type="button" class="btn btn-danger">삭제</button>
</form>
	   <%@ include file = "BGM.jsp" %> 
       <%@ include file = "footer.jsp" %>
</div>

<script>
	document.getElementById('deleteBtn').addEventListener('click', () => {
		let form = document.memberDetailForm;
		if (confirm('삭제하시겠습니까?')) {
			form.action = 'deleteUser.jsp';
			form.submit();
		}
	});

	// 수정 버튼 클릭 시 submit 이벤트를 발생시키도록 수정
	document.getElementById('updateBtn').addEventListener('click', () => {
		let form = document.memberDetailForm;
		if (confirm('수정하시겠습니까?')) {
			form.action = 'updateMembers_proc.jsp';
			form.submit();
		}
		
	});
</script>

</body>

</html>