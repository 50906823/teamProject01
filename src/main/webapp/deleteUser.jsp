<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="base.dao.JoinDao"%>
<%@ page import="java.io.PrintWriter"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 삭제</title>
<link rel="shortcut icon" type="image/x-icon" href="메인_새창_아이콘.JPG">
</head>
<body>
	<%
    String userID = request.getParameter("userID");

    JoinDao userDao = new JoinDao();
    int result = userDao.deleteUser(userID);
    
    if(result == 1) {
        out.println("<script>");
        out.println("alert('회원이 삭제되었습니다.');");
        out.println("location.href='adminMembers.jsp';"); // 사용자 목록 페이지로 이동
        out.println("</script>");
    } else {
        out.println("<script>");
        out.println("alert('회원 삭제에 실패하였습니다.');");
        out.println("history.back();");
        out.println("</script>");
    }
    %>
</body>
</html>
