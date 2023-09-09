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
    $("#input_info02").blur(function() {
    	 var id = $("#input_info02").val();
        $.ajax({
        	type : "POST",
            url : "./company_check.jsp",
            data : {
            	id : id
            },
            success : function(jj) {
                var data = jj.trim();
                console.log(data);
                if (data === "true") {
                	$("#result").html("사용가능한 아이디입니다.");
                } else if (data === "false") {
                	$("#result").html("중복된 아이디입니다. 다시 수정해주세요");
                } else if (data === "check") {
                	$("#result").html("아이디를 입력해주세요.");
                }
            }
        }); 
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
