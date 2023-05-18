<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@ page import="base.dto.JoinDto"%>
<%@ page import="base.dao.JoinDao"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		request.setCharacterEncoding("UTF-8"); // 한글 정상 인식을 위해
		
		String userID = request.getParameter("userID");
		String userName = request.getParameter("userName");
		String userPassword = request.getParameter("userPassword");
		String userGender = request.getParameter("userGender");
		String userPhone = request.getParameter("userPhone");
		String userEmail = request.getParameter("userEmail");
		
		JoinDto joinDto = new JoinDto();
		joinDto.setUserID(userID);
		joinDto.setUserName(userName);
		joinDto.setUserPassword(userPassword);
		joinDto.setUserGender(userGender);
		joinDto.setUserPhone(userPhone);
		joinDto.setUserEmail(userEmail);
		
		JoinDao joinDao = new JoinDao();
		int result = joinDao.updateMemberInfo(joinDto);
		
		if(result == 1) {
	%>
	<script>
		alert('수정 성공');
		location.href = './adminMembers.jsp?userID=<%=userID%>';
	</script>
	<%
		} else {
	%>
	<script>
		alert('수정 실패');
		location.href = './memberInfoDetail.jsp?userID=<%=userID%>';
	</script>
	<%
		}
	%>
</body>

</html>