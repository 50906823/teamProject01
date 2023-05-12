<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="base.dao.SearchDao"%>
<%@ page import="base.dto.SearchDto"%>
<%@ page import="java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>단일 상세 페이지</title>
</head>
<body>
	<%@ include file = "header.jsp" %>
	<%@ include file = "menuBar.jsp" %>
	
	<%
	request.setCharacterEncoding("UTF-8");

	String name = request.getParameter("name");
  
    SearchDao searchDao = new SearchDao();
  
    SearchDto searchDto = searchDao.selectSearchInfoByName(name);
  	
  %>

 <h1><%= name %> 상세 정보</h1>
  <table>
    <tr>
      <th>이름</th>
      <th>주소</th>
      <th>전화번호</th>
    </tr>
    <tr>
      <td><%=searchDto.getName()%></td>
      <td><%=searchDto.getAddress()%></td>
      <td><%=searchDto.getTel()%></td>
    </tr>
  </table>
  
  <a href="search.jsp">돌아가기</a>

</body>
</html>