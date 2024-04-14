//전역변수 선언
let mili = 0;
let sec = 0;
let min = 0;
let hours = 0;
let timer;

//타이머 시작
function start() {
  clearInterval(timer);
  startWatch();
}

//일시정지
function pause() {
  clearInterval(timer);
}

//record 버튼을 누를때마다 타이머 시간을 기록 (동적생성)
function record() {
  let curtime = hours + " : " + min + " : " + sec + ". " + mili;
  $("<div>").addClass("record").text(curtime).appendTo(".button");
}

//타이머 리셋
function reset() {
  $(".hours").text("00");
  $(".minutes").text("00");
  $(".seconds").text("00");
  $(".miliSeconds").text("00");
  clearInterval(timer);
}

//reset 버튼을 누르면 동적생성한 record 기록을 삭제
$(document).on("click", ".remove", function () {
  $(".button").find(".record").remove();
});

//타이머 함수
function startWatch() {
  timer = setInterval(function () {
    mili++;
    miliText = "0" + mili;

    if (mili < 10) {
      $(".miliSeconds").text(miliText);
    } else {
      $(".miliSeconds").text(mili);
    }

    if (mili == 100) {
      $(".miliSeconds").text("00");
      mili = 0;
      sec++;
      secText = "0" + sec;
      if (sec < 10) {
        $(".seconds").text(secText);
      } else {
        $(".seconds").text(sec);
      }

      if (sec == 60) {
        $(".seconds").text("00");
        sec = 0;
        min++;
        minText = "0" + min;
        if (min < 10) {
          $(".minutes").text(minText);
        } else {
          $(".minutes").text(min);
        }

        if (min == 60) {
          $(".minutes").text("00");
          min = 0;
          hours++;
          hoursText = "0" + hours;
          if (hours < 10) {
            $(".hours").text(hoursText);
          } else {
            $(".hours").text(hours);
          }
        }
      }
    }
  }, 10);
}
