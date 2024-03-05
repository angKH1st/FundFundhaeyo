$(document).ready(function() {
    var checkboxes = document.querySelectorAll('input[type="checkbox"]');
    var allCheck = document.getElementById('checkbox');
    var requiredCheckboxes = [document.getElementById('checkbox1'), document.getElementById('checkbox2')];
    var nextButton = document.querySelector('.enroll_agreement_form_row6_row2_btn2');

    /* 초기 상태에서 '다음' 버튼 비활성화 */
    nextButton.disabled = true;
    nextButton.style.backgroundColor = 'gray';

    allCheck.addEventListener('change', function(e) {
        var isChecked = e.target.checked;
        checkboxes.forEach(function(checkbox) {
            checkbox.checked = isChecked;
        });
        /* 전체 동의 체크박스 상태에 따라 다음 버튼 활성화 업데이트 */
        nextButton.disabled = !isChecked;
        nextButton.style.backgroundColor = isChecked ? 'lightskyblue' : 'gray';
    });

    checkboxes.forEach(function(checkbox) {
        checkbox.addEventListener('change', function() {
            var allChecked = true;
            checkboxes.forEach(function(checkbox) {
                if (checkbox !== allCheck && !checkbox.checked) {
                    allChecked = false;
                }
            });

            /* 필수 체크박스 상태 확인 */
            var requiredAllChecked = true;
            requiredCheckboxes.forEach(function(requiredCheckbox) {
                if (!requiredCheckbox.checked) requiredAllChecked = false;
            });

            /* 모든 체크박스와 필수 체크박스 상태에 따라 전체 동의 체크박스와 다음 버튼 상태 업데이트 */
            allCheck.checked = allChecked;
            nextButton.disabled = !requiredAllChecked;
            nextButton.style.backgroundColor = requiredAllChecked ? 'lightskyblue' : 'gray';
        });
    });
    
    /* 마케팅 처리 */
    document.getElementById('agreementForm').addEventListener('submit', function(e) {
        e.preventDefault();
        var isChecked = document.getElementById('checkbox3').checked;
        if(isChecked) {
            this.action += "?marketing=Y";
        } else {
            this.action += "?marketing=N";
        }
        this.submit();
    });
});