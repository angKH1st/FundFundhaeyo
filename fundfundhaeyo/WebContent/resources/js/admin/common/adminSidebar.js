$(document).ready(function(){
	$("#sidebarToggle").click(function(){
	    var sidebar = $(".adm-sidebar");
	    var header = $(".adm-header");
	    var content = $(".adm-content");
	    var footer = $(".adm-footer");
	    if (sidebar.css('width') === '70px') {
	        sidebar.css('width', '240px');
	        header.css('left', '240px');
	        header.css('width', 'calc(100% - 240px)');
	        content.css('left', '240px');  /* 사이드바가 열릴 때 .adm-content 영역의 위치를 재설정 */
	        content.css('width', 'calc(100% - 240px)');
	        footer.css('left', '240px');
	        footer.css('width', 'calc(100% - 240px)');
	    } else {
	        sidebar.css('width', '70px');
	        header.css('left', '70px');
	        header.css('width', 'calc(100% - 70px)');
	        content.css('left', '70px');  /* 사이드바가 닫힐 때 .adm-content 영역의 위치를 재설정 */
	        content.css('width', 'calc(100% - 70px)');
	        footer.css('left', '70px');
	        footer.css('width', 'calc(100% - 70px)');
	    }
	});

	$(".adm-sidebar-list > ul > li > a").click(function() {
	    $(this).next().slideToggle('slow');
	    $(this).children("i").toggleClass("fas fa-angle-up fas fa-angle-down");
	});
});
