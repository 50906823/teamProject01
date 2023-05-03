<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<style>
* { margin: 0; padding: 0; box-sizing: border-box; }

#header {
  width: 100%; height: 80px;
  display: flex;
  justify-content: center;
  align-items: center;
}
.logo { width: 120px; height: 60px; } /*로고 생기면 변경하기*/
.box-search {
  width: 500px; height: 50px;
  border: 1px solid black; border-radius: 30px;
  margin: 0px 10px;
  display: flex;
  justify-content: space-evenly;
  align-items: center;
}
.box-search > i { cursor: pointer; }
.input-search {
  width: 400px; height: 80%;
  font-size: 1rem;
  padding-left: 10px;
  border-style: none;
  background-color: #ffffff00;
}
.box-icon {
  padding: 5px 10px;
  display: flex;
  align-items: center;
  justify-content: right;
}
.box-icon > ul > li > i:hover { cursor: pointer; }

.header-hidden {
  width: 150px;
  background-color: #FFFFFF;
  font-weight: bold;
  border: 3px solid black;
  display: none;
  position: absolute;
  border-radius: 10px;
  box-shadow: 0px 5px 5px 0px rgba(0, 0, 0, 0.3);
}
.li-header:hover .header-hidden {
  display: block;
}
.header-hidden > p {
  padding: 10px;
  /* background-color: #FFFFFF; */
  border-radius: 7px;
}
.header-hidden > p:hover {
  background-color: rgb(230, 230, 230);
  cursor: pointer;
}
.header-hidden > .employee-info { padding: 10px; }
.header-hidden > .employee-info > p > .employee-idNumber {
  color: gray;
  font-size: 0.9rem;
  font-weight: normal;
}
.header-hidden > .employee-info > p > .employee-extensionNumber {
  font-weight: normal;
}

ul { list-style: none; display: flex; }
a { color: black; text-decoration: none; }
i { margin: 5px; padding: 5px; font-size: 1.7rem; }
</style>
</head>
<body>
	<div id="header">
	<!-- <a href="main.html"><img class="logo" src="logo_duck.png"></a> -->
	<a href="main.jsp"><sapn>놀러가조</sapn></a>
<div class="box-search">
  <input class="input-search" type="text" placeholder="메뉴를 검색하세요."><i class="fa-brands fa-sistrix"></i>
</div>
<div class="box-icon">
  <ul>
    <li class="li-header">
      <i class="fa-solid fa-user"></i>
      <div class="header-hidden">
        <div class="employee-info">
          <p class="employee-name">유승아 <span class="employee-idNumber">00001</span></p>
          <p class="employee-department">○○부 <span class="employee-extensionNumber">(5252)</span></p>
        </div>
        <div class="li-line-bottom"></div>
        <p><a href="#">출퇴근 확인</a></p>
        <div class="li-line-bottom"></div>
        <p><a href="leftSeat.html">자리비움</a></p>
        <div class="li-line-bottom"></div>
        <p><a href="login.html">로그아웃</a></p>
      </div>
    </li>
    <li class="li-header">
      <i class="fa-solid fa-bars"></i>
      <div class="header-hidden">
        <p><a href="#">고객센터</a></p>
        <div class="li-line-bottom"></div>
        <p><a href="#">FAQ</a></p>
        <div class="li-line-bottom"></div>
        <p><a href="#">상담요청</a></p>
      </div>
    </li>
  </ul>
</div>
	</div>
</body>
</html>