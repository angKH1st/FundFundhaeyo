function loadPage(cpage) {
	  $.ajax({
	    url: "admSelectList.me",
	    type: "GET",
	    data: {cpage:cpage},
	    success: function(map){
			const pi = map.pi; 		// 응답으로 받은 JSON 객체에서 pi를 추출
			
			var listCount = pi.listCount;
			var currentPage = pi.currentPage; 
			var pageLimit = pi.pageLimit;
			var boardLimit = pi.boardLimit;
			
			var maxPage = pi.maxPage;
			var startPage = pi.startPage;
			var endPage = pi.endPage;
			
			const $pageDiv = $(".adm-content-center-main-body3-col3");
			
			$pageDiv.empty(); // 페이지 번호 버튼 비우기
			
			if(currentPage != 1){
			  $pageDiv.append("<button class=\"page-num page-button\" data-page=\"" + (currentPage-1) + "\">←</button>");
			}else{
			  $pageDiv.append("<button class=\"page-num page-button\" data-page=\"" + (currentPage-1) + "\" disabled>←</button>");
			}
	        
	        for(let p = startPage; p <= endPage; p++){
			  if(p == currentPage){
			    $pageDiv.append("<button class=\"page-button\" disabled>" + p + "</button>");
			  }else{
			    $pageDiv.append("<button class=\"page-num page-button\" data-page=\"" + p + "\">" + p + "</button>");
			  }
			}

	        if(currentPage != maxPage){
			  $pageDiv.append("<button class=\"page-num page-button\" data-page=\"" + (currentPage+1) + "\">→</button>");
			}else{
			  $pageDiv.append("<button class=\"page-num page-button\" data-page=\"" + (currentPage+1) + "\" disabled>→</button>");
			}
			
			const list = map.list; 	// 응답으로 받은 JSON 객체에서 list를 추출
			
			const memberDiv = $(".adm-content-center-main-body2 tbody");
			
			memberDiv.empty(); 		// 테이블을 비우기
			
			for(let i = 0; i < list.length; i++){
				var temp;
				switch(list[i].userStatus){
					case 'Y' : temp = '사용중'; break;
					case 'N' : temp = '탈퇴'; break;
					case 'B' : temp = '차단'; break;
					case 'A' : temp = '관리자'; break;
				}
				
				memberDiv.append("<tr>"
						     + "<td class=\"center\">" + ((currentPage - 1) * boardLimit + i + 1) + "</td>"
						     + "<td class=\"center\">" + list[i].userNo + "</td>"
						     + "<td class=\"center\"><img width=30 src=\"" + list[i].userImg + "\"></td>"
						     + "<td class=\"center\">" + list[i].userName + "</td>"
						     + "<td class=\"center\">" + list[i].userId + "</td>"
						     + "<td>" + list[i].userNickname + "</td>"
						     + "<td>" + list[i].userEmail + "</td>"
						     + "<td>" + list[i].userProfile + "</td>"
						     + "<td class=\"center\">" + list[i].userEnrollDate + "</td>"
						     + "<td class=\"center\">" + list[i].userGrade + "</td>"
						     + "<td class=\"center\">" + temp + "</td>"
						     + "<td class=\"center\">" + 
						     	"<a href=\"admMoveToUpdate.me?searchId=" + list[i].userId + "\"><i class=\"hoverA2 fa-regular fa-pen-to-square fa-lg\"></i></a>" 
					     	 + "</td>"
						     + "</tr>");
			}
			
			// 페이지 엔트리
			$(".adm-content-center-main-body3-col1-startPoint").text((currentPage - 1) * boardLimit + 1); 	// 시작 회원 #			
			$(".adm-content-center-main-body3-col1-endPoint").text((currentPage - 1) * boardLimit + 1 + list.length - 1);			// 끝 회원 #
			$(".adm-content-center-main-body3-col1-totalPoint").text(listCount + 1); 						// 총 회원 수
			
			cpage = currentPage;
	    },
	    error: function(error){
	      console.log("AJAX request failed: ", error);
	    }
	  });
   }

window.onload = function(){
	loadPage(1);
}

$(document).on("click", ".page-num", function(e){
	e.preventDefault();
	var cpage = $(this).data("page");
	loadPage(cpage);
});

