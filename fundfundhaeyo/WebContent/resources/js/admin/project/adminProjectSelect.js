function loadPage(cpage) {
	  $.ajax({
	    url: "admSelectList.pr",
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
			
			const projectDiv = $(".adm-content-center-main-body2 tbody");
			
			projectDiv.empty(); 		// 테이블을 비우기
			
			let tCode;
			
			for(let i = 0; i < list.length; i++){
				var temp;
				switch(list[i].projectStatus){
					case 'Y' : temp = '게시'; break;
					case 'N' : temp = '심사 대기'; break;
					case 'W' : temp = '게시 대기'; break;
					case 'B' : temp = '반려'; break;
					case 'E' : temp = '종료'; break;
				}
				
				tCode += "<tr>"
						     + "<td class=\"center\">" + ((currentPage - 1) * boardLimit + i + 1) + "</td>"
						     + "<td class=\"center\">" + list[i].projectNo + "</td>"
						     + "<td class=\"center\"><img style=\"margin-top: 5px;\" class=\"circleImg\" width=45 height=45 src=\"" + list[i].projectTitleImg + "\"></td>"
						     + "<td class=\"center\">" + list[i].projectSeller + "</td>"
						     + "<td class=\"center\">" + list[i].projectCategoryName + "</td>"
						     + "<td class=\"center\">" + list[i].projectTag + "</td>"
						     + "<td>" + list[i].projectTitle + "</td>"
						     + "<td class=\"center\">" + list[i].projectPrice.toLocaleString() + "원</td>"
						     + "<td class=\"center\">" + list[i].projectFunding.toLocaleString() + " %  </td>"
						     + "<td>" + list[i].projectStart + "</td>"
						     + "<td>" + list[i].projectEnd + "</td>"
						     + "<td class=\"center\">" + temp + "</td>"
						     + "</tr>";
			}
			projectDiv.html(tCode);
			
			// 페이지 엔트리
			$(".adm-content-center-main-body3-col1-startPoint").text((currentPage - 1) * boardLimit + 1); 	// 시작 프로젝트 #			
			$(".adm-content-center-main-body3-col1-endPoint").text((currentPage - 1) * boardLimit + 1 + list.length - 1);			// 끝 프로젝트 #
			$(".adm-content-center-main-body3-col1-totalPoint").text(listCount); 						// 총 프로젝트 수
			
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