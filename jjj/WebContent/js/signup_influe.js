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
		if (id.trim() === "") {
			$("#result").html("아이디를 입력해주세요.");
			$("#result").css("color", "red");
			$("#result").css("font-size", "15px");
		} else if (id.length < 6 || id.length > 16) {
			$("#result").html("아이디는 6글자에서 16글자 사이로 입력해주세요.");
			$("#result").css("color", "red");
			$("#result").css("font-size", "15px");
		} else if (!/^[a-zA-Z0-9]+$/.test(id)) {
			$("#result").html("아이디는 영문 대소문자와 숫자만 입력 가능합니다.");
			$("#result").css("color", "red");
			$("#result").css("font-size", "15px");
		} else {
			$.ajax({
				type : "POST",
				url : "./influ_check.jsp",
				data : {
					id : id
				},
				success : function(jj) {
					var data = jj.trim();
					console.log(data);
					if (data === "true") {
						$("#result").html("사용가능한 아이디입니다.");
						$("#result").css("color", "blue");
						$("#result").css("font-size", "15px");
					} else if (data === "false") {
						$("#result").html("중복된 아이디입니다. 다시 수정해주세요");
						$("#result").css("color", "red");
						$("#result").css("font-size", "15px");
					}
				}
			});
		}
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

function addr_btn() {
    new daum.Postcode({
        oncomplete: function(data) {
            // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

            // 각 주소의 노출 규칙에 따라 주소를 조합한다.
            // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
            var addr = ''; // 주소 변수
            var extraAddr = ''; // 참고항목 변수

            //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
            if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                addr = data.roadAddress;
            } else { // 사용자가 지번 주소를 선택했을 경우(J)
                addr = data.jibunAddress;
            }

            // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
            if(data.userSelectedType === 'R'){
                // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                    extraAddr += data.bname;
                }
                // 건물명이 있고, 공동주택일 경우 추가한다.
                if(data.buildingName !== '' && data.apartment === 'Y'){
                    extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                }
                // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                if(extraAddr !== ''){
                    extraAddr = ' (' + extraAddr + ')';
                }
                // 조합된 참고항목을 해당 필드에 넣는다.
                document.getElementById("sample6_extraAddress").value = extraAddr;
            
            } else {
                document.getElementById("sample6_extraAddress").value = '';
            }

            // 우편번호와 주소 정보를 해당 필드에 넣는다.
            document.getElementById('sample6_postcode').value = data.zonecode;
            document.getElementById("sample6_address").value = addr;
            // 커서를 상세주소 필드로 이동한다.
            document.getElementById("sample6_detailAddress").focus();
        }
    }).open();
}
function checkPW() {
	var pw = document.forms["form"]["pw"].value;
	var pwcheck = document.forms["form"]["pwcheck"].value; // === 연산자는 값 뿐만 아니라
															// 데이터 형식까지
	var check_pw = document.getElementById('check_pw');

	if (pw.length < 8 || pw.length > 32) {
		check_pw.innerHTML = '비밀번호는 8글자 이상, 32글자 이하만 이용 가능합니다.';
		check_pw.style.color = 'red';
		check_pw.style.fontSize = '15px';
		return;
	}
	if (pw === pwcheck) { // 엄격하게 비교하므로 예기치 않은 형변환을 방지하고 정확한 비교를 수행합니다.
		check_pw.innerHTML = '비밀번호가 일치합니다.';
		check_pw.style.color = 'blue';
		check_pw.style.fontSize = '15px';
	} else {
		check_pw.innerHTML = '비밀번호가 일치하지 않습니다.';
		check_pw.style.color = 'red';
		check_pw.style.fontSize = '15px';
		return;
	}
	if(pw.length < 1 && pwcheck.length < 1) {
		check_pw.innerHTML = '비밀번호 또는 비밀번호 확인을 입력해주세요.';
		check_pw.style.color = 'red';
		check_pw.style.fontSize = '15px';
		return;
	}
}
function checkName() {
	var name = document.forms["form"]["name"].value;
	var check_name = document.getElementById('check_name');
	if (name.length < 1) {
		check_name.innerHTML = '이름을 입력해주세요.';
		check_name.style.color = 'red';
		return;
	} else {
		check_name.innerHTML = '';
	}
	console.log(name);
	console.log(check_name);
}
function checkSex() {
	var genderOptions = document.getElementsByName("gender");
	var genderSelected = false;
	var check_sex = document.getElementById('check_sex');

	for (var i = 0; i < genderOptions.length; i++) {
		if (genderOptions[i].checked) {
			genderSelected = true;
			break;
		}
	}

	if (!genderSelected) {
		check_sex.innerHTML = "성별을 선택해주세요.";
		return;
	} else {
		check_sex.innerHTML = "";
	}
}
function checkNickName() {
	var nickname = document.forms["form"]["nickname"].value;
	var check_nickname = document.getElementById('check_nickname');
	if (name.length < 1) {
		check_name.innerHTML = '활동명을 입력해주세요.';
		check_name.style.color = 'red';
		return;
	} else {
		check_name.innerHTML = '';
	}
}
function checkAddr() {
	var addr1 = document.getElementsByName('post')[0].value;
	var addr2 = document.getElementsByName('addr')[0].value;
	var addr3 = document.getElementsByName('addr_more')[0].value;
	var check_addr = document.getElementById('check_addr');
	if (addr1.length < 1 || addr2.length < 1 || addr3.length < 1) {
		check_addr.innerHTML = '주소를 입력해주세요.';
		return;
	} else {
		check_addr.innerHTML = '';
	}
}
function checkPhone() {
	var phone = document.getElementsByName('input_phone')[0].value;
	var check_phone = document.getElementById('check_phone');
	if (phone.length < 1) {
		check_phone.innerHTML = '전화번호를 입력해주세요.';
		return;
	} else {
		check_phone.innerHTML = '';
	}
}
function checkEmail() {
	var email = document.getElementsByName('email')[0].value;
	var check_email = document.getElementById('check_email');
	if (email.length < 1) {
		check_email.innerHTML = '이메일을 입력해주세요.';
		return;
	} else {
		check_email.innerHTML = '';
	}
}
function checkForm() {
	var id = document.forms["form"]["id"].value;
	var pw = document.forms["form"]["pw"].value;
	var pwcheck = document.forms["form"]["pwcheck"].value;
	var name = document.forms["form"]["name"].value;
	var gender = document.forms["form"]["gender"].value;
	var nickname = document.forms["form"]["nickname"].value;
	var post = document.forms["form"]["post"].value;
	var addr = document.forms["form"]["addr"].value;
	var addr_more = document.forms["form"]["addr_more"].value;
	var reference = document.forms["form"]["reference"].value;
	var phone = document.forms["form"]["input_phone"].value;
	var email = document.forms["form"]["email"].value;
	if (id === "") {
		alert("아이디를 입력해주세요.");
		return false;
	}
	if (pw === "") {
		alert("비밀번호를 입력해주세요.");
		return false;
	}
	if (pwcheck === "") {
		alert("비밀번호 확인을 입력해주세요.");
		return false;
	}
	if (name === "") {
		alert("이름을 입력해주세요.");
		return false;
	}
	if (gender === "") {
		alert("성별을 선택해주세요.");
		return false;
	}
	if (post === "" || addr === "" || addr_more === "" || reference === "") {
		alert("주소를 입력해주세요.");
		return false;
	}
	if (phone === "") {
		alert("휴대폰 번호를 입력해주세요.");
		return false;
	}
	if (email === "") {
		alert("이메일을 입력해주세요.");
		return false;
	}

	// 모든 조건을 통과하면 폼을 제출
	return true;
}