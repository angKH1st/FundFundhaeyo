jQuery.noConflict();
jQuery(document).ready(function(){
    if (window.jQuery) {  
        alert("jQuery가 정상적으로 로드되었습니다.");
    } else {
        alert("jQuery가 로드되지 않았습니다. 확인해주세요.");
    }
});