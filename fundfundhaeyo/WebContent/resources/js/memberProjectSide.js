$(document).ready(function() {
	var projectIds = [];
	for(let i = 0; i < $("#count").val(); i++){
		projectIds.push($("#p" + i).val());
	}
	
	$.ajax({
		url: '/fund/selectRecent.pr',
		type: 'GET',
		data: {
			projectIds: projectIds
		},
		traditional: true,
		success: function(list){
			let value = "";
			if(list.length !== 0){
				
			for(let i = 0; i < list.length; i++){
				value += `<div class="member_pr_recent" onclick="moveToDetail(${list[i].projectNo});">
	                		  <div class="pr_img centerXY fl"><img class="br10" width=65 height=65 src="${list[i].projectTitleImg}"></div>
	                		  <div class="pr_blank fl"></div>
	                		  <div class="pr_content fl">
	                			  <div class="pr_content_title pca">${list[i].projectCategoryName}</div>
	                		  	  <div class="pr_content_overview">${list[i].projectOverview}</div>
	                		  </div>
	                	  </div>`
			}
			}else {
				value = `<div class="centerXY" style="padding-top: 170px;">최근 본 프로젝트가 없습니다.</div>`
			}
			$(".member_pr_form").html(value);
		}
	})
})

function moveToDetail(no){
	location.href="/fund/detail.pr?pno=" + no;
}