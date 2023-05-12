<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="base.dao.JoinDao" %>
<%@ page import="base.dto.JoinDto" %>
<%@ page import="java.io.PrintWriter" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입 결과</title>
</head>
<body>
    <%
    String userID = null;
    if(session.getAttribute("userID") != null) {
        userID = (String) session.getAttribute("userID");
    }
    if (userID != null) {
        PrintWriter script = response.getWriter();
        script.println("<script>");
        script.println("alert('이미 로그인이 되어있습니다.');");
        script.println("location.href = 'main.jsp';"); // 따옴표 누락 수정
        script.println("</script>");
    }
    
    request.setCharacterEncoding("UTF-8");
    JoinDto user = new JoinDto();
    user.setUserID(request.getParameter("userID"));
    user.setUserPassword(request.getParameter("userPassword"));
    user.setUserName(request.getParameter("userName"));
    user.setUserGender(request.getParameter("userGender"));
    user.setUserEmail(request.getParameter("userEmail"));
    user.setUserPhone(request.getParameter("userPhone"));
    
    JoinDao userDao = new JoinDao();
    int result = userDao.join(user);
    
    if(result == 1) {
        out.println("<script>");
        out.println("alert('회원가입이 완료되었습니다.');");
        out.println("location.href='login.jsp';");
        out.println("</script>");
    } else {
        out.println("<script>");
        out.println("alert('회원가입에 실패하였습니다.');");
        out.println("history.back();");
        out.println("</script>");
    }
    %>
</body>
</html>
