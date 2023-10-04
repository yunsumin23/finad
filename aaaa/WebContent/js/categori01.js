$(document).ready(function () {
    $(".gnb").hide();
    $(".gnbbox").hide();
    $(".category_text").mouseenter(function () {
        $(".gnb").stop().slideDown();
        $(".gnbbox").stop().slideDown();
    });
    $(".category_div").mouseleave(function () {
        $(".gnb").stop().slideUp();
        $(".gnbbox").stop().slideUp();
    });

    $(".shorts").hide();
    $(".sub").hide();
    $(".price").hide();
    $(".avg").hide();
    $(".offer").hide();
    $(".shorts_div").click(function () {
        $(".shorts").stop().slideToggle();
    });
    $(".sub_div").click(function () {
        $(".sub").stop().slideToggle();
    });
    $(".price_div").click(function () {
        $(".price").stop().slideToggle();
    });
    $(".avg_div").click(function () {
        $(".avg").stop().slideToggle();
    });
    $(".offer_div").click(function () {
        $(".offer").stop().slideToggle();
    });
});

window.onload = function all_check() {
    let che_all = document.querySelector("#check");
    let all01 = document.querySelectorAll(".list_check");
    che_all.onclick = function() {
        if (che_all.checked == true) {
            for (let che_all of all01) {
                che_all.checked = true;
            }
        } else {
            for (let che_all of all01) {
                che_all.checked = false;
            }
        }
    }
}
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