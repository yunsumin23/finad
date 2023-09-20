$(document).ready(function () {
    $(".gnb").hide();
    $(".gnbbox").hide();
    $(".img_info02").hide();
    $(".info_ul").hide();
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
    $("#showInfo").click(function() {
    	 $(".info_ul").show();
    	 $(this).hide();
	});
    $('.count-num').each(function() { 
    	  var $this = $(this),
    	      countTo = $this.attr('data-count');
// $this = 첫번째~세번째 .count-num
// countTo = 첫번째~세번째 .count-num의 data-count 속성의 값(user1.getThravgSub(),
// getThravgViewer(),getThravgHit()
    	  $({ countNum: $this.text()}).animate({
    	    countNum: countTo 
// this.text() = 0 countTo = user1.getThravgSub(),
// getThravgViewer(),getThravgHit()
    	  },
    	  {
    	    duration: 2000, 
    	    easing:'linear',
    	    step: function() {
    	      $this.text(Math.floor(this.countNum));
    	    },
    	    complete: function() { 
    	    	$this.text(this.countNum.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ','));
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


function myChartFunction() {
//	var manRatio = <%= user1.getMan_ratio() %>;
//	var womanRatio = <%= user1.getWoman_ratio() %>;
//	var tenAge = <%= user1.getTenAge() %>;
//	var tweAge = <%= user1.getTweAge() %>;
//	var thrAge = <%= user1.getThrAge() %>;
//	var forAge = <%= user1.getForAge() %>;
//	var fifAge = <%= user1.getFifAge() %>;
	
	var genderData = {
			// 시청자 성비 데이터 (가로 막대 그래프용)
			  labels: ['남성', '여성'],
			  datasets: [{
			    data: [manRatio, womanRatio],
			    backgroundColor: ['blue', 'pink']
			  }]
			};

			// 시청자 연령대 데이터 (파이 차트용)
	var ageData = {
			  labels: ['10대', '20대', '30대', '40대', '50대 이상'],
			  datasets: [{
			    data: [
			    	tenAge,
			    	tweAge,
			    	thrAge,
			    	forAge,
			    	fifAge
			    ],
			    backgroundColor: ['#FF5733', '#FFC300', '#36A2EB', '#4BC0C0', '#9966FF']
			  }]
			};
			// 가로 막대 그래프 그리기
			var genderCtx = document.getElementById('gender_type').getContext('2d');
			var genderChart = new Chart(genderCtx, {
			  type: 'horizontalBar',
			  data: genderData,
			  options: {
			    responsive: false,
			    scales: {
			      xAxes: [{
			        ticks: {
			          beginAtZero: true,
			          max: 100
			        }
			      }]
			    }
			  }
			});

			// 파이 차트 그리기
			var ageCtx = document.getElementById('sub_age').getContext('2d');
			var ageChart = new Chart(ageCtx, {
			  type: 'pie',
			  data: ageData,
			  options: {
			    responsive: false
			  }
			});
}



