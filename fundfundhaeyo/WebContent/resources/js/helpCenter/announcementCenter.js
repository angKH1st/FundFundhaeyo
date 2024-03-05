$(function() {
	$(".announcement_list_area>tbody>tr").click(function() {
		location.href = '<%= contextPath %>/announcementDetail.hp?aNo=' + $(this).children().eq(0).text();
	});
});

$(document).ready(function() {
    $('.no-border').on('click', function(event) {
        event.preventDefault();
    });
});