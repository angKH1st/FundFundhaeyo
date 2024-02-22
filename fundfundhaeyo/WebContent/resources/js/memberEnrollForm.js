$(document).ready(function() {
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
        url: '/fund/memberIdCheck.me', // 아이디 중복 검사 진행
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
	
  /* ----------------- 이메일 주소 박스 ----------------- */
  // 도메인 직접 입력 or domain option 선택
  const domainListEl = document.querySelector('.domain-list');
  const domainInputEl = document.querySelector('.domain-txt');
  // select 옵션 변경 시
  domainListEl.addEventListener('change', (event) => {
    // option에 있는 도메인 선택 시
    if(event.target.value !== "type") {
      // 선택한 도메인을 input에 입력하고 readOnly
      domainInputEl.value = event.target.value;
      domainInputEl.readOnly = true;
    } else { // 직접 입력 시
      // input 내용 초기화 & 입력 가능하도록 변경
      domainInputEl.value = "";
      domainInputEl.readOnly = false;
    }
  });
  
});