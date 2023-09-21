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
    ClassicEditor.create( document.querySelector( '#editor' ), {
        language: "ko"
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

function check_name() {
    var name = document.forms["form"]["input_name"].value;
    var text = document.forms["form"]["input_text"].value;

    if(name === ""){
    	alert("제목을 입력해주세요.");
    	return false;
    }
    if(text === ""){
    	alert("내용을 입력해주세요.");
    	return false;
    }
    return true;
}