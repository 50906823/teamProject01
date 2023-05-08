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
		request.setCharacterEncoding("UTF-8"); //한글 정상 인식을 위해
		
		String area_num = request.getParameter("num");
		String area_name = request.getParameter("name");
		
		AreaDao areaDao = new AreaDao();
		
		int result = areaDao.insertAreaInfo(area_num, area_name);
		
		if(result == 1){
		//추가성공
	%>
		<script>
			alert('추가성공');
		</script>
	<%
		} else {
	%>
		<script>
				alert('추가실패..');
		</script>
	<%
		}
	%>
	<script> location.href = './addArea.jsp'; </script>
</body>
</html>