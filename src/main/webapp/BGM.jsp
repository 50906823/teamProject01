<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>BGM</title>

<style>

.bgm{
width: 50%;
position: absolute;
bottom: 0px;
}
audio {
width: 200px;
height: 45px;
position: absolute;
bottom: 6px;
}

.hiddenButton {

  position: absolute;
  bottom: 5px;
}
</style>

<script>
  function togglePlay() {
      const audio = document.getElementById('bgm');

      if (audio.paused) {
          audio.play();
      } else {
          audio.pause();
      }
  }

  function initializeAudio() {
      const audio = document.getElementById('bgm');
      const storedTime = localStorage.getItem('playTime');

      if (storedTime) {
          audio.currentTime = parseFloat(storedTime);
      }

      audio.play();

      window.addEventListener('beforeunload', () => {
          localStorage.setItem('playTime', audio.currentTime);
      });
  }

  window.addEventListener('load', initializeAudio);
  
  
  
</script>

</head>
<body>
    

  <audio id="bgm" src="배경음악저용량.mp3" loop></audio>
  <button class="hiddenButton" onclick="togglePlay()">재생/일시정지</button>



</body>
</html>

