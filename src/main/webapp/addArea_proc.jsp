<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="base.dao.AreaDao"%>
<%@ page import="base.dto.AreaDto"%>
<%@ page import="java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		request.setCharacterEncoding("UTF-8");
		
		String name = request.getParameter("name");
		String address = request.getParameter("address");
		String explanation = request.getParameter("explanation");
		
		AreaDao areaDao = new AreaDao();
		
		int result = areaDao.insertAreaInfo(name, address, explanation);
		
		if(result == 1){
		//추가성공
	%>
		<script>
			alert('제보 성공');
		</script>
	<%
		} else {
		//추가실패
	%>
		<script>
			alert('제보 실패');
			location.href = './addArea.jsp'; 
		</script>
	<%
		}
	%>
	<script> location.href = './userArea.jsp'; </script>
</body>
</html>