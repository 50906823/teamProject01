<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>BGM</title>

<style>
/* 좌측 하단위치에 정렬 */
audio {
    width: 300px;
    height: 26px;
    position: absolute;
    bottom: 5px;
    left: 0px;
}
</style>

<script>
  function initializeAudio() { //페이지가 로드될 때 오디오 컨트롤의 초기 값을 설정하는 함수
    const audio = document.getElementById('bgm');
    const storedTime = localStorage.getItem('playTime');
    //localStorage에 저장한 재생시간 가져옴

    if (storedTime) {
      audio.currentTime = parseFloat(storedTime);
      // 문자열을 숫자로 변환
    }

    audio.play(); //음악재생

    window.addEventListener('beforeunload', () => { //사용자가 페이지 떠날 때 
      localStorage.setItem('playTime', audio.currentTime); //오디오 현재 재생시간을 playTime에 저장
    });
  }

  window.addEventListener('DOMContentLoaded', initializeAudio); //페이지 로드되면 설정된 초기값대로 재생시간 바꾸는 이벤트
</script>

</head>
<body>

  <audio id="bgm" src="배경음악저용량.mp3" loop autoplay controls></audio>
<!-- 오디오파일 반복재생/자동재생/컨트롤바 생성 -->
</body>
</html>
