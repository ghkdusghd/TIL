let screen = document.getElementById("screen");
let buttonNum = document.querySelectorAll(".number");
let buttonSign = document.querySelectorAll(".jsSign");
let buttonAC = document.querySelector(".AC");
let cal = "";

//AC 버튼 (클릭하면 초기화한다)
buttonAC.onclick = function () {
  screen.innerHTML = "0";
  cal = "";
};

//기호 버튼
for (let i = 0; i < buttonSign.length; i++) {
  buttonSign[i].onclick = function () {
    //클릭한 기호를 화면에 표시
    let sign = this.innerHTML;
    screen.innerHTML = screen.innerHTML + sign;
    //계산을 위한 연산자는 따로 저장
    let signAry = ["*(0.01)", "/", "-", "*", "+", "."];
    cal = cal + signAry[i];
  };
}

//숫자 버튼
for (let i = 0; i < buttonNum.length; i++) {
  buttonNum[i].onclick = function () {
    //클릭한 숫자를 화면에 표시
    let number = this.innerHTML;
    if (screen.innerHTML == 0) {
      screen.innerHTML = number;
    } else if (screen.innerHTML != 0) {
      screen.innerHTML = screen.innerHTML + number;
    }
    //계산을 위한 숫자는 따로 저장
    cal = cal + number;
  };
}

// 등호(=) 누르면 계산되는 함수
function calculate() {
  screen.innerHTML = eval(cal);
  cal = "";
}
