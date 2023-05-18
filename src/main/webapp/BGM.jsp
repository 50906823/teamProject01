<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>BGM</title>

<style>

audio {
    width: 300px;
    height: 26px;
    position: absolute;
    bottom: 5px;
    left: 0px;
}
</style>

<script>
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

  window.addEventListener('DOMContentLoaded', initializeAudio);
</script>

</head>
<body>

  <audio id="bgm" src="배경음악저용량.mp3" loop autoplay controls></audio>

</body>
</html>
