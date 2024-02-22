$(document).ready(function() {
  var inputIdBox = $('input[name="userId"]');
  var idBox = $('.enroll_input_frame_row1_col2');

  inputIdBox.on('focus', function() {
    inputIdBox.css('border', '1px solid blue');
  });
	
	
  // ----------------- 이메일 주소 박스 -----------------
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