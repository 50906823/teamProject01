<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="base.dao.SearchDao"%>
<%@ page import="base.dto.SearchDto"%>
<%@ page import="java.util.*"%>
<%@ page import="java.net.URLEncoder" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>제보하기 페이지</title>
<style>
* { margin: 0; padding: 0; box-sizing: border-box;
    font-family: 'KyoboHand';
 }

@font-face {
    font-family: 'KyoboHand';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_20-04@1.0/KyoboHand.woff') format('woff');
    font-weight: normal;
    font-style: normal;
}

.mainContainer {
   height: 913px;
   background-size: cover;
   background-image: url('메인배경_1.png');
   position: relative;
}
.subContainer {
	width: 1200px; height: 755px;
	padding: 10px;
	border-radius: 5px;
	position: absolute;
    top: 120px;
    left: 50%;
    transform: translate(-50%);
    background-color: #ffffff60; /* 불투명한 배경 색상 */
    z-index: 1; /* 메인 컨테이너 내부에서 가장 위에 배치하기 위해 z-index 설정 */
} 

p {
	margin-bottom: 0;
	font-size: 1.3rem;
	font-weight: bold;
}

#inputName, #inputAddress, #inputExplanation {
	background-color: white;
}
#inputName, #inputAddress, #inputExplanation, #addBtn {
	font-size: 1.2rem;
}

/* 스크롤바 커스텀 */
.searchList::-webkit-scrollbar {
    width: 8px;  /* 스크롤바의 너비 */
}
.searchList::-webkit-scrollbar-thumb {
    height: 30%; /* 스크롤바의 길이 */
    background: #00000098; /* 스크롤바의 색상 */
    border-radius: 10px;
}
/* 스크롤바 뒷 배경 색상 */
.container::-webkit-scrollbar-track {
    background: rgba(0, 0, 0, 0);
}
</style>
<title>지역제보 페이지</title>
<link rel="shortcut icon" type="image/x-icon" href="메인_새창_아이콘.JPG">
</head>
<body>
<body>
	<div class="mainContainer" style="width: 1280px">
		<%@ include file="header.jsp"%>
		<%@ include file="menuBar.jsp"%>
		<div class="subContainer">
		
			<div class="container" style="width: 70%">
				<form name='areaAddForm' action='' method="post">
					<div class="col-md-6">
						<label for="inputName" class="form-label"><br><br><p style="margin-bottom: 0;">이름</p></label> <input
							type="text" name="name" class="form-control" id="inputName"
							placeholder="제보하실 장소의 이름을 입력해 주세요.">
					</div>
					<div class="col-12">
						<label for="inputAddress" class="form-label"><br><p style="margin-bottom: 0;">주소</p></label> <input
							type="text" name="address" class="form-control" id="inputAddress"
							placeholder="제보하실 장소의 주소를 입력해 주세요.">
					</div>
					<div class="col-12">
						<label for="inputExplanation" class="form-label"><br><p style="margin-bottom: 0;">설명</p></label> <!-- <input
							type="text" name="explanation" class="form-control" id="inputExplanation"
							style="height: 100px;" placeholder="제보하실 장소의 설명을 입력해 주세요."> -->
							<textarea name="explanation" class="form-control" id="inputExplanation"
							    style="height: 200px; padding: 10px; vertical-align: top; text-align: left;"
							    placeholder="제보하실 장소의 설명을 입력해 주세요."></textarea>
					</div>
					<br>
					<div class="col-12">
						<button type="submit" Id="addBtn" class="btn btn-primary">제보하기</button>
					</div>
				</form>
			</div>
			
		</div>
		<%@ include file="footer.jsp"%>
	</div>

	<script>
			document.getElementById('addBtn').addEventListener('click', ()=>{
			
			let form = document.areaAddForm;
			
			let inputName = document.getElementById('inputName');
			let inputAddress = document.getElementById('inputAddress');
			let inputExplanation = document.getElementById('inputExplanation');
			
			if(inputName.value == "" || inputAddress.value == "" || inputExplanation.value == ""){
				alert('입력하지 않은 란이 있습니다.');
			} else {
				if(confirm('추가하시겠습니까?')){
					form.action = 'addArea_proc.jsp';
					form.submit();
				}
			}
		});
	</script>
</body>
</html>