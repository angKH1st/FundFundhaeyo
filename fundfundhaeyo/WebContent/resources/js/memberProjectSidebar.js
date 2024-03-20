function onPageLoad() {
  var url = window.location.href; // http://localhost:8111/fund/detail.pr?pno=
  var pno = getpnoFromURL(url);
  console.log("pno:" + pno);

  if (pno) {
    var recentProducts = getCookie('recent_products');
    var recentpnos = recentProducts ? recentProducts.split('/') : [];
   
    if (!recentpnos.includes(pno)) {
      recentpnos.push(pno);
    }

    // 최대 5개까지 유지
    if (recentpnos.length > 5) {
      recentpnos.shift();
    }

    recentProducts = recentpnos.join('/');

    // 24시간 후의 시간 객체 생성
    var expirationDate = new Date();
    expirationDate.setTime(expirationDate.getTime() + (24 * 60 * 60 * 1000));
    console.log("expirationDate::" + expirationDate);

    // 쿠키에 recent_products 저장 (유효기간: 24시간)
    setCookie('recent_products', recentProducts, expirationDate);
  }
}

// 페이지 로드 이벤트 리스너 등록
window.addEventListener('load', onPageLoad);


function setCookie(cookieName, value, expirationDate) {
  var cookieValue = escape(value) + ((expirationDate == null) ? '' : '; expires=' + expirationDate.toUTCString());
  document.cookie = cookieName + '=' + cookieValue;
}

function getCookie(cookieName) {
  var name = cookieName + '=';
  var decodedCookie = decodeURIComponent(document.cookie);
  var cookieArray = decodedCookie.split(';');

  for (var i = 0; i < cookieArray.length; i++) {
    var cookie = cookieArray[i];
    while (cookie.charAt(0) == ' ') {
      cookie = cookie.substring(1);
    }
    if (cookie.indexOf(name) == 0) {
      return cookie.substring(name.length, cookie.length);
    }
  }
  return '';
}

//url에서 pno를 가져오는 함수
function getpnoFromURL(url) {
  var regex = /[?&]pno=(\d+)/;
  var match = regex.exec(url);
  if (match && match[1]) {
      console.log(match);
    return match[1];
  }
  return null;
}