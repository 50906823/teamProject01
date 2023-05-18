<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입 약관 페이지</title>
<link
    href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css"
    rel="stylesheet"
    integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ"
    crossorigin="anonymous">
<style>
.terms-page {
/*     display: flex;
    justify-content: center;
    align-items: center; */
    min-height: 100vh;
/*     background-color: #f0f0f0; */
    background-image: url('메인배경_1.png');
/*     background-repeat: no-repeat; */
/*     background-position: center; */
    background-size: cover;
}

.terms-wrapper {
    background-color: white;
    padding: 2rem;
    border-radius: 1rem;
    width: 400px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    display: flex;
    flex-direction: column;
    height: 600px;
    
	position: absolute;
    top: 20%;
    left: 50%;
    transform: translate(-50%);
}

.terms-content {
    overflow-y: auto;
    flex-grow: 1;
}

.terms-wrapper h2 {
    text-align: center;
    margin-bottom: 1rem;
}

input[type="submit"] {
    display: block;
    width: 100%;
    background-color: #007bff;
    border: none;
    color: white;
    padding: 0.5rem;
    cursor: pointer;
    font-weight: bold;
    border-radius: 0.25rem;
    margin-top: 1rem;
}

input[type="submit"]:hover {
    background-color: #0056b3;
}

/* 스크롤바 커스텀 */
.terms-content::-webkit-scrollbar {
    width: 8px;  /* 스크롤바의 너비 */
}
.terms-content::-webkit-scrollbar-thumb {
    height: 30%; /* 스크롤바의 길이 */
    background: #00000098; /* 스크롤바의 색상 */
    border-radius: 10px;
}
/* 스크롤바 뒷 배경 색상 */
.terms-content::-webkit-scrollbar-track {
    background: rgba(0, 0, 0, 0);
}

p {
 margin-right: 10px;
}
</style>
</head>
<body>


<div class="terms-page">
<jsp:include page="navBar.jsp" />
    <div class="terms-wrapper">
        <h2>회원가입 약관</h2>
        <div class="terms-content">
            <p>
                <b>제 1 조 (목적)</b><br><br>
                본 약관은 <b>놀러가조</b>가 운영하는 웹 사이트 (http://localhost:8080/WebTeamProject_01)의 제반 서비스의 이용조건 및 절차에 관한 사항 및 기타 필요한 사항을 규정함을 목적으로 한다. 
                <br><br><b>제 2 조 (용어의 정의)</b><br><br>
                본 약관에서 사용하는 용어는 다음과 같이 정의한다. ①회원 : 기본 회원 정보를 입력하였고, 회사와 서비스 이용계약을 체결하여 아이디를 부여받은 개인 ②아이디(ID) : 회원식별과 회원의 서비스 이용을 위해 회원이 선정하고 회사가 승인하는 문자와 숫자의 조합 ③비밀번호(Password) : 회원이 통신상의 자신의 비밀을 보호하기 위해 선정한 문자와 숫자의 조합 ④해지 : 회사 또는 회원에 의한 이용계약의 종료 
                <br><br><b>제 3 조 (약관의 공시 및 효력과 변경)</b><br><br>
                ①본 약관은 회원가입 화면에 게시하여 공시하며 회사는 사정변경 및 영업상 중요한 사유가 있을 경우 약관을 변경할 수 있으며 변경된 약관은 공지사항을 통해 공시한다 ②본 약관 및 차후 회사사정에 따라 변경된 약관은 이용자에게 공시함으로써 효력을 발생한다. 
                <br><br><b>제 4 조 (약관 외 준칙)</b><br><br>
                본 약관에 명시되지 않은 사항이 전기통신기본법, 전기통신사업법, 정보통신촉진법, ‘전자상거래등에서의 소비자 보호에 관한 법률’, ‘약관의 규제에관한법률’, ‘전자거래기본법’, ‘전자서명법’, ‘정보통신망 이용촉진등에 관한 법률’, ‘소비자보호법’ 등 기타 관계 법령에 규정되어 있을 경우에는 그 규정을 따르도록 한다.
              </p>
        </div>
        <form method="post" action="join.jsp">
            <input type="submit" value="동의하고 회원가입">
        </form>
    </div>
</div>

</body>
</html>