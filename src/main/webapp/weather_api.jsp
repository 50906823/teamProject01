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


<%
request.setCharacterEncoding("UTF-8");

String area=request.getParameter("area");

String cityId = "";
if (area.equals("seoul")) {
    cityId = "1835848";
} else if (area.equals("busan")) {
    cityId = "1838524";
} else if (area.equals("daegu")) {
    cityId = "1835327";
} else if (area.equals("incheon")) {
    cityId = "1843561";
} else if (area.equals("gwangju")) {
    cityId = "1841811";
} else if (area.equals("daejeon")) {
    cityId = "1835224";
} else if (area.equals("ulsan")) {
    cityId = "1833747";
} else if (area.equals("sejong")) {
    cityId = "1842616";
} else if (area.equals("jeju")) {
    cityId = "1846266";
} else {
    out.println("<script>alert('잘못된 입력입니다.');history.go(-1);</script>");
}
String apiUrl = "http://api.openweathermap.org/data/2.5/forecast?id=835848&appid=41ecd1c23b0f1a112643d899fee45436&units=metric";

%>
<script>
$.getJSON('http://api.openweathermap.org/data/2.5/forecast?id=cityId&appid=41ecd1c23b0f1a112643d899fee45436&units=metric', function(data){
    alert(data.city.name);

    var $minTemp = data.list[0].main.temp_min;
    var $maxTemp = data.list[0].main.temp_max;
    var $cTemp = data.list[0].main.temp;
    var $cDate = data.list[0].dt_txt;

    $('.clowtemp').append($minTemp);
    $('.ctemp').append($cTemp);
    $('.chightemp').append($maxTemp);
    $('h2').prepend($cDate);
});
</script>

<body>
  <h1>weather api</h1>
  <!-- <h2> - <%=area %> 날씨 예보</h2> -->
  <div class="ctemp">현재 온도 : </div>
  <div class="clowtemp">최저 온도 : </div>
  <div class="chightemp">최고 온도 : </div>
  <div class="cicon">아이콘 : </div>
</body>

