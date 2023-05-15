<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>지역제보 페이지</title>
</head>
<body>	
	<%@ include file = "navBar.jsp" %>
	<%@ include file = "menuBar.jsp" %>
	
	<form name='areaAddForm' action='addArea_proc.jsp' method="post">
		<div class="mb-3">
		  <label for="formGroupExampleInput1" class="form-label">제보 장소 번호</label>
		  <input type="text" class="form-control" id="inputNum"
		  		name="num" placeholder="제보 장소 번호 입력">
		</div>
		<div class="mb-3">
		  <label for="formGroupExampleInput2" class="form-label">제보 장소 이름</label>
		  <input type="text" class="form-control" id="inputName"
		  		name="name" placeholder="제보 장소 이름 입력">
		</div>
		<button id="insertBtn" type="button" class="btn btn-primary">추가</button>
	</form>
	
	<script>
			document.getElementById('insertBtn').addEventListener('click', ()=>{
			
			let form = document.areaAddForm;
			
			let inputNum = document.getElementById('inputNum');
			let inputName = document.getElementById('inputName');
			
			if(inputNum.value == "" || inputName.value == ""){
				alert('입력하지 않은 란이 있습니다.');
				inputName.focus();
			} else {
				if(confirm('추가하시겠습니까?')){
					form.submit();
				}
			}
		});
	</script>
</body>
</html>