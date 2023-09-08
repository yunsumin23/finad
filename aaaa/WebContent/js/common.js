$(document).ready(function() {
    $(".gnb").hide();
    $(".gnbbox").hide();
    $(".category_text").mouseenter(function() {
        $(".gnb").stop().slideDown();
        $(".gnbbox").stop().slideDown();
    });
    $(".category_div").mouseleave(function() {
        $(".gnb").stop().slideUp();
        $(".gnbbox").stop().slideUp();
    });
});

function zoomIn(event) {
    event.target.style.transform = "scale(1.2)";
    event.target.style.zIndex = "1";
    event.target.style.transition = "all 0.5s";
}

function zoomOut(event) {
    event.target.style.transform = "scale(1)";
    event.target.style.zIndex = 0;
    event.target.style.transition = "all 0.5s"
}

function login(){
  var id = document.querySelector('#id');
  var pw = document.querySelector('#pw');

  if(id.value == ""|| pw.value == ""){
    alert("아이디 혹은 비밀번호가 일치하지 않습니다.")
  }
  else{
    location.href = 'main.html';
  }
}
function back(){
  history.go(-1);
}
function create_id(){
  var id = document.querySelector('#id');
  var pw = document.querySelector('#pw');
  var r_pw = document.querySelector('#r_pw');

  if(id.value !== r_pw.value){
    alert("비밀번호를 확인해주세요.")
  }
  else{
    location.href = 'loginex.html';
  }
}