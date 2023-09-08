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
document.querySelectorAll('.count').forEach(

    function(item, idx){

        //수량 입력 필드 값 변경

        item.querySelector('input').addEventListener('keyup', function(){

            basket.changePNum(idx+1);

        });

        //수량 증가 화살표 클릭

        item.children[1].addEventListener('click', function(){

            basket.changePNum(idx+1);

        });

        //수량 감소 화살표 클릭

        item.children[2].addEventListener('click', function(){

            basket.changePNum(idx+1);

        });

    }

);

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