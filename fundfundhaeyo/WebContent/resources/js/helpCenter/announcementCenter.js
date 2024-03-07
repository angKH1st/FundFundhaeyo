$(function() {
	$(".announcement_list_area>tbody>tr").click(function() {
		location.href = '/fund/announcementDetail.hp?aNo=' + $(this).children().eq(0).text();
	});
});

$(document).ready(function() {
    $('.no-border').on('click', function(event) {
        event.preventDefault();
    });
});