$(document).ready(function() {
	let type = $("#type").val();
	$.ajax({
		url: '/fund/memberList.no',
		type: 'GET',
		data: {
			type: type
		},
		success: function(list) {
			let noticesArea = $(".notices_notices_area");
            $.each(list, function(index, item) {
                let notice = `
                    <div class="notices_obj">
                        <div class="notices_area_left fl"></div>
                        <div class="notices_area_blank fl"></div>
                        <div class="notices_area_right fl">
                            <div class="notices_area_right_row1">
                                <div class="notices_area_right_row1_title fl">${item.noticeTitle}</div>
                                <div class="notices_area_right_row1_blank fl"></div>
                                <div class="notices_area_right_row1_date fl">${item.noticeCreateDate}</div>
                            </div>
                            <div class="notices_area_right_row2">${item.noticeContent}</div>
                        </div>
                    </div>
                `;
                noticesArea.append(notice);
            });
		}
	});
})
