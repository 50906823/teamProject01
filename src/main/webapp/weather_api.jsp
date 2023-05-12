<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="KO">
<head>
  <meta charset="UTF-8">
  <script src="http://code.jquery.com/jquery-1.7.min.js"></script>
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Document</title>
</head>
<script>
  /*
  $.getJSON('파일경로', function(data){
    //data로 할일..
  });
  */
  // getJSON 함수에 apiUrl 변수를 이용하여 요청 URL을 생성하도록 수정
  var city = prompt("도시명을 입력하세요.", "서울");

if (city.toLowerCase() === "서울") {
  var cityId = "1835848"; // 서울의 도시키
} else if (city.toLowerCase() === "부산") {
  var cityId = "1838524"; // 부산의 도시키
} else if (city.toLowerCase() === "대구") {
  var cityId = "1835327"; // 대구의 도시키
} else if (city.toLowerCase() === "인천") {
  var cityId = "1843561"; // 인천의 도시키
} else if (city.toLowerCase() === "광주") {
  var cityId = "1841811"; // 광주의 도시키
} else if (city.toLowerCase() === "대전") {
  var cityId = "1835224"; // 대전의 도시키
} else if (city.toLowerCase() === "울산") {
  var cityId = "1833747"; // 울산의 도시키
} else if (city.toLowerCase() === "세종") {
  var cityId = "1842616"; // 세종의 도시키
} else if (city.toLowerCase() === "제주") {
  var cityId = "1846266"; // 제주의 도시키
} else {
  alert("오류!");
}

var apiUrl = "http://api.openweathermap.org/data/2.5/forecast?id=" + cityId + "&appid=41ecd1c23b0f1a112643d899fee45436&units=metric";

  $.getJSON(apiUrl, function(data){
    //data로 할일..
    alert(data.city.name);
    var $minTemp = data.list[0].main.temp_min;
    var $maxTemp = data.list[0].main.temp_max;
    var $cTemp = data.list[0].main.temp;
    var $cDate = data.list[0].dt_txt;

    //A.appendTo(B) B요소의 내용의 뒤에 A를 추가
    //A.append(B) A요소의 내용의 뒤에 B를 추가
    //A.prependTo(B) B요소의 내용의 앞에 A를 추가
    //A.prepend(B) A요소의 내용의 앞에 B를 추가

    $('.clowtemp').append($minTemp);
    $('.ctemp').append($cTemp);
    $('.chightemp').append($maxTemp);
    $('h2').prepend($cDate);
  });
</script>

<body>
<%
request.setCharacterEncoding("UTF-8");
%>
  
  <h1>weather api</h1>
  <h2> - 날씨 예보</h2>
  <div class="ctemp">현재 온도 : </div>
  <div class="clowtemp">최저 온도 : </div>
  <div class="chightemp">최고 온도 : </div>
  <div class="cicon">아이콘 : </div>


</body>
</html>
