function checkFormCompleteness() {
  var allInputs = $('.allClearInput');
  var allAlerts = $('.allClearAlert');
  var allClear = true;
  
  $.each(allInputs, function(index, input) {
    if($(input).val().length === 0) {
      allClear = false;
      return false;
    }
  });
  
  $.each(allAlerts, function(index, alert) {
    if($(alert).text().length !== 0) {
      allClear = false;
      return false;
    }
  });
  
  if(allClear) {
    $('.enroll_form_submit_btn2').prop('disabled', false);
  } else {
    $('.enroll_form_submit_btn2').prop('disabled', true);
  }
}
$(document).ready(function() {
	$(".allClearInput").on('input', function() {
    checkFormCompleteness();
  });
  /* 아이디 검사 시작 */
  var inputIdBox = $('input[name="userId"]');
  var idBox = $('.idInspection');

  inputIdBox.on('focus', function() {
    inputIdBox.css('border', '1px solid blue');
    inputIdBox.css('color', 'black');
  });
	
  inputIdBox.on('blur', function() {
    var checkId = $(this).val();
    var regExp = /^[a-z][a-z\d]{3,11}$/;

    if (checkId) {
      if (!regExp.test(checkId)) {
        inputIdBox.css('border', '1px solid red');
        inputIdBox.css('color', 'red');
        idBox.text('첫글자는 영문자로, 영문자와 숫자 포함 총 4~12자 입력하세요.');
        return; // 아이디가 유효하지 않으면 서버에 요청하지 않고 함수를 종료
      } else {
        idBox.text('');
        inputIdBox.css('color', 'black');
      }

      $.ajax({
        url: '/fund/idCheck.me', // 아이디 중복 검사 진행
        type: 'GET',
        data: {checkId: checkId},
        success: function(result) {
          if (result == "Y") {
            inputIdBox.css('border', '1px solid red');
            inputIdBox.css('color', 'red');
            idBox.text('아이디가 중복됩니다.');
          } else {
            inputIdBox.css('border', '1px solid blue');
            inputIdBox.css('color', 'black');
            idBox.text('');
          }
        },
        error: function(error) {
          console.log(error);
        }
      });
      
    } else {
      inputIdBox.css('border', '1px solid red');
      idBox.text('아이디를 입력하세요.');
    }
  });
  /* 아이디 검사 끝 */
  
  /* 비밀번호 검사 시작 */
  $("input[name='userPwd']").on('blur', function(){
    var pwdInspection = $(".pwdInspection");
    var inputPwdBox = $(this);
    var password = inputPwdBox.val();
    var passwordValidation = /^[a-z\d!@#$%^&*]{8,15}$/i;

    if(password.length === 0) {
        inputPwdBox.css('border', '1px solid red');
        pwdInspection.text('비밀번호를 입력해주세요.');
    } else if(!passwordValidation.test(password)) {
        inputPwdBox.css('border', '1px solid red');
        pwdInspection.text('영대소문자, 숫자, 특수문자로 8~15자 입력하세요.');
    } else {
        inputPwdBox.css('border', '1px solid blue');
        pwdInspection.text('');
    }
  });
  /* 비밀번호 검사 끝 */
  
  /* 비밀번호 일치 검사 시작 */
  $("input[name='userPwdConfirm']").on('blur', function(){
    var pwdConfirmInspection = $(".pwdConfirmInspection");
    var inputPwdConfirmBox = $(this);
    var passwordConfirm = inputPwdConfirmBox.val();
    var password = $("input[name='userPwd']").val();

    if(passwordConfirm.length === 0) {
        inputPwdConfirmBox.css('border', '1px solid red');
        pwdConfirmInspection.text('비밀번호를 입력해주세요.');
    } else if(password !== passwordConfirm) {
        inputPwdConfirmBox.css('border', '1px solid red');
        pwdConfirmInspection.text('비밀번호가 일치하지 않습니다.');
    } else {
        inputPwdConfirmBox.css('border', '1px solid blue');
        pwdConfirmInspection.text('');
    }
  });
  /* 비밀번호 일치 검사 끝 */
  
  /* 이름 검사 시작 */
  $("input[name='userName']").on('blur', function(){
    var nameInspection = $(".nameInspection");
    var inputNameBox = $(this);
    var userName = inputNameBox.val();
    var nameValidation = /^[가-힣]{2,}$/;

    if(userName.length === 0) {
        inputNameBox.css('border', '1px solid red');
        nameInspection.text('이름을 입력해주세요.');
    } else if(!nameValidation.test(userName)) {
        inputNameBox.css('border', '1px solid red');
        nameInspection.text('한글로 2글자 이상 입력해주세요.');
    } else {
        inputNameBox.css('border', '1px solid blue');
        nameInspection.text('');
    }
  });
  /* 이름 검사 끝 */
  
  /* 주민등록번호 검사 시작 */
  $("input[name='userSsn']").on('blur', function(){
    var ssnInspection = $(".ssnInspection");
    var inputSsnBox = $(this);
    var userSsn = inputSsnBox.val();
    var ssnValidation = /^\d{2}(0[1-9]|1[0-2])(0[1-9]|[1-2][0-9]|3[0-1])-[1-4]\d{6}$/;

    if(userSsn.length === 0) {
        inputSsnBox.css('border', '1px solid red');
        ssnInspection.text('주민등록번호를 입력해주세요.');
    } else if(!ssnValidation.test(userSsn)) {
        inputSsnBox.css('border', '1px solid red');
        ssnInspection.text("'-'포함 올바른 주민등록번호를 입력해주세요.");
    } else {
        inputSsnBox.css('border', '1px solid blue');
        ssnInspection.text('');
    }
  });
  /* 주민등록번호 검사 끝 */
  
  /* 닉네임 검사 시작 */
  $("input[name='nickname']").on('blur', function(){
    var nicknameInspection = $(".nicknameInspection");
    var inputNicknameBox = $(this);
    var nickname = inputNicknameBox.val();
    var nicknameValidation = /^[가-힣]{1,10}$/;

    if(nickname.length === 0) {
        inputNicknameBox.css('border', '1px solid red');
        nicknameInspection.text('닉네임을 입력해주세요.');
    } else if(!nicknameValidation.test(nickname)) {
        inputNicknameBox.css('border', '1px solid red');
        nicknameInspection.text('한글로 2글자 이상, 10글자 이하로 입력해주세요.');
    } else {
        inputNicknameBox.css('border', '1px solid blue');
        nicknameInspection.text('');
    }
  });
  /* 닉네임 검사 끝 */
  
  /* 전화번호 검사 시작 */
  $("input[name='phone']").on('blur', function(){
    var phoneInspection = $(".phoneInspection");
    var inputPhoneBox = $(this);
    var phone = inputPhoneBox.val();
    var phoneValidation = /^010-\d{4}-\d{4}$/;

    if(phone.length === 0) {
        inputPhoneBox.css('border', '1px solid red');
        phoneInspection.text('전화번호를 입력해주세요.');
    } else if(!phoneValidation.test(phone)) {
        inputPhoneBox.css('border', '1px solid red');
        phoneInspection.text("'-'포함 올바른 전화번호 형식을 입력해주세요.");
    } else {
        inputPhoneBox.css('border', '1px solid blue');
        phoneInspection.text('');
    }
  });
  /* 전화번호 검사 끝 */
  
  /* 주소 검사 시작 */
  $("input[name='address']").on('blur', function() {
    var address = $(this).val();
    var addressRegEx = /^[가-힣0-9\s][가-힣0-9-\s]*[가-힣0-9\s]$/;

    if(address.trim().length === 0) {
        $(this).css('border', '1px solid red');
        $(".addressInspection").text('주소를 입력해주세요.');
    } else if(address.length > 40 || !addressRegEx.test(address) || address.length < 10) {
        $(this).css('border', '1px solid red');
        $(".addressInspection").text('유효한 주소를 입력해주세요.');
    } else {
        $(this).css('border', '1px solid blue');
        $(".addressInspection").text('');
    }
  });
  /* 주소 검사 끝 */
  
  /* 이메일 검사 시작 */
  $(".domain-list").on('change', function(){
    setDomain($(this).val());
    checkEmail();
});

$("input[name='emailHead'], input[name='emailBody']").on('blur', function() {
    var domainTxt = $("input[name='emailBody']").val();
    var domainList = $(".domain-list option").map(function(){ return $(this).val(); }).get();
    if(domainList.includes(domainTxt)) {
        setDomain(domainTxt);
    }
    checkEmail();
});

function setDomain(domainVal) {
   if(domainVal !== "type") {
        $("input[name='emailBody']").val(domainVal);
        $("input[name='emailBody']").prop('readonly', true);
        $("input[name='emailBody']").css('background-color', 'lightgray');
   } else {
        $("input[name='emailBody']").val("");
        $("input[name='emailBody']").prop('readonly', false);
        $("input[name='emailBody']").css('background-color', 'white');
        checkEmail();
   }
}

function checkEmail() {
  var emailHead = $("input[name='emailHead']");
  var emailBody = $("input[name='emailBody']");
  
  var headRegEx = /^[a-z\d]{1,15}$/;
  var bodyRegEx = /^[a-z]+[.]+[a-z]+$/;
  
  if(emailHead.val().length === 0){
    emailHead.css('border', '1px solid red');
    $(".emailInspection").text('이메일을 입력해주세요.');
  } else {
    if(!headRegEx.test(emailHead.val())) {
      emailHead.css('border', '1px solid red');
      $(".emailInspection").text('유효한 이메일을 입력해주세요. ex)kh1st@kh.io');
    } else {
      emailHead.css('border', '1px solid blue');
      if(bodyRegEx.test(emailBody.val())) {
        $(".emailInspection").text('');
      }
    }
  }

  if(emailBody.val().length === 0){
    emailBody.css('border', '1px solid red');
    if(emailHead.val().length === 0 || !headRegEx.test(emailHead.val())) {
      $(".emailInspection").text('이메일을 입력해주세요.');
    }
  } else {
    if(!bodyRegEx.test(emailBody.val())) {
      emailBody.css('border', '1px solid red');
      $(".emailInspection").text('유효한 이메일을 입력해주세요. ex)kh1st@kh.io');
    } else {
      emailBody.css('border', '1px solid blue');
      if(headRegEx.test(emailHead.val())) {
        $(".emailInspection").text('');
      }
    }
  }
  
  checkFormCompleteness();
	}
   /* 이메일 검사 끝 */


});