$(document).ready(function () {
    $(".gnb").hide();
    $(".gnbbox").hide();
    $(".img_info02").hide();
    $(".category_text").mouseenter(function () {
        $(".gnb").stop().slideDown();
        $(".gnbbox").stop().slideDown();
    });
    $(".category_div").mouseleave(function () {
        $(".gnb").stop().slideUp();
        $(".gnbbox").stop().slideUp();
    });
    $(".img_info_main").mouseenter(function () {
        $(".img_info02").stop().slideDown();
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

function logout() {
	$.get("header_logout.jsp", function(data) {
	    // 로그아웃 성공 시 실행할 코드
	    alert("로그아웃되었습니다.");
	    window.location.href = "login.jsp"; // 로그인 페이지로 리디렉션
	  });
}