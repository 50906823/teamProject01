<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
* { margin: 0; padding: 0; box-sizing: border-box; }

#menuBar {
  width: 100%; height: 40px;
  background-color: #AFD485;
  display: flex;
  justify-content: center;
  align-items: center;
}
#menuBar > ul {
  height: 100%;
}
.button-menuBar {
  height: 100%;
  width: 122px;
  font-size: 1rem;
  font-weight: bold;
  border-style: none;
  background-color: #ffffff00;
  padding: 0px 15px;
  cursor: pointer;
}
.li-line {
  width: 1px; height: 80%;
  background-color: #ffffff;
  margin: auto;
}
.li-line-bottom {
  width: 90%; height: 1px;
  background-color: gray;
  margin: 5px auto;
}

.menuBar-hidden {
  width: 122px;
  background-color: #FFFFFF;
  font-weight: bold;
  border: 3px solid black;
  border-top: none;
  display: none; position: absolute;
  border-bottom-right-radius: 10px;
  border-bottom-left-radius: 10px;
  box-shadow: 0px 5px 5px 0px rgba(0, 0, 0, 0.3);
}
.li-menuBar:hover .menuBar-hidden {
  display: block;
}
.menuBar-hidden > p {
  padding: 10px;
  background-color: #FFFFFF;
  border-bottom-right-radius: 7px;
  border-bottom-left-radius: 7px;
}
.menuBar-hidden > p:hover {
  background-color: rgb(230, 230, 230);
  cursor: pointer;
}

ul { list-style: none; display: flex; }
a { color: black; text-decoration: none; }
i { margin: 5px; padding: 5px; font-size: 1.7rem; }
</style>
</head>
<body>
<div id="menuBar">
<ul>
  <li class="li-menuBar">
    <a href="#"><button class="button-menuBar">전체</button></a>
    <!-- <div class="menuBar-hidden">
      <p>공지사항1</p>
      <div class="li-line-bottom"></div>
      <p>공지사항1</p>
    </div> -->
  </li>
  <div class="li-line"></div>
  <li class="li-menuBar">
  <a href="#"><button class="button-menuBar">지도</button></a>
  <div class="menuBar-hidden">
    <p><a href="#">조직도</a></p>
    <div class="li-line-bottom"></div>
    <p><a href="#">사원 정보</a></p>
    <div class="li-line-bottom"></div>
    <p><a href="#">증명서</a></p>
  </div>
</li>
<div class="li-line"></div>
<li class="li-menuBar">
  <a href="#"><button class="button-menuBar">이미지</button></a>
  <div class="menuBar-hidden">
    <p><a href="#">급여계산</a></p>
    <div class="li-line-bottom"></div>
    <p><a href="#">급여명세서</a></p>
  </div>
</li>
<div class="li-line"></div>
<li class="li-menuBar">
  <a href="#"><button class="button-menuBar">추천 관광지</button></a>
  <div class="menuBar-hidden">
    <p><a href="#">근태 현황</a></p>
    <div class="li-line-bottom"></div>
    <p><a href="#">근태 신청</a></p>
  </div>
</li>
<div class="li-line"></div>
<li class="li-menuBar">
  <a href="mail.html"><button class="button-menuBar">등등</button></a>
  <div class="menuBar-hidden">
    <p><a href="#">전체 메일</a></p>
    <div class="li-line-bottom"></div>
      <p><a href="#">받은메일함</a></p>
      <div class="li-line-bottom"></div>
      <p><a href="#">보낸메일함</a></p>
      <div class="li-line-bottom"></div>
      <p><a href="#">임시보관함</a></p>
      <div class="li-line-bottom"></div>
      <p><a href="#">내게쓴메일함</a></p>
      <div class="li-line-bottom"></div>
      <p><a href="#">주소록</a></p>
      <div class="li-line-bottom"></div>
      <p><a href="#">휴지통</a></p>
    </div>
  </li>
  <div class="li-line"></div>
  <li class="li-menuBar">
    <a href="#"><button class="button-menuBar">메뉴바</button></a>
    <!-- <div class="menuBar-hidden">
      <p>일정 추가</p>
      <div class="li-line-bottom"></div>
      <p>일정 공유</p>
    </div> -->
  </li>
  <div class="li-line"></div>
  <li class="li-menuBar">
    <a href="#"><button class="button-menuBar">로그인</button></a>
    <div class="menuBar-hidden">
      <p><a href="#">결재사항</a></p>
      <div class="li-line-bottom"></div>
      <p><a href="#">결재작성</a></p>
    </div>
  </li>
    <div class="li-line"></div>
    <li class="li-menuBar">
      <a href="#"><button class="button-menuBar">회원가입</button></a>
      <div class="menuBar-hidden">
        <p><a href="#">게시판</a></p>
        <div class="li-line-bottom"></div>
        <p><a href="#">자료실</a></p>
      </div>
  </li>
</ul>
</div>
</body>
</html>