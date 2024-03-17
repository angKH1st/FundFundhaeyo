$(document).ready(function() {
	selectNotice(0, $('.nBtn0'));
})

function selectNotice(index, clickedElement) {
	$('.nBtn0, .nBtn1, .nBtn2, .nBtn3').removeClass('current');
	$(clickedElement).addClass('current');

	let type = index;
	$.ajax({
		url: '/fund/memberList.no',
		type: 'GET',
		data: {
			type: type
		},
		success: function(list) {
			let notice = "";
			let noticeArea = $(".notices_notices_area");

			if (list.length == 0) {
				notice = `<div class="noNotices centerXY">알림 사항이 없습니다.</div>`
			} else {
				$.each(list, function(index, item) {
					let img = "";
					let width;
					let height;
					let c;
					let ref;
					switch (item.noticeType) {
						case 1: img = "resources/image/notice/announcement.png";
							width = 50;
							height = 50;
							ref = item.noticeAnnouncementNo;
							break;
						case 2: img = item.noticeImg;
							width = 80;
							height = 80;
							c = `class="circleImg"`
							ref = item.noticeProjectNo;
							break;
						case 3: img = "resources/image/notice/qna.png"
							width = 50;
							height = 50;
							ref = item.noticeQnaNo;
							break;
					}
					notice += `
		                <div class="notices_obj" onclick="moveElement(${item.noticeType}, ${ref});">
		                    <div class="notices_area_left centerXY fl"><img ${c} width="${width}" height="${height}" src="${img}"></div>
		                    <div class="notices_area_blank fl"></div>
		                    <div class="notices_area_right fl">
		                        <div class="notices_area_right_row1">
		                            <div class="notices_area_right_row1_title fl"><span>${item.noticeTitle}</span></div>
		                            <div class="notices_area_right_row1_blank fl"></div>
		                            <div class="notices_area_right_row1_date fl">${item.noticeCreateDate}</div>
		                        </div>
		                        <div class="notices_area_right_row2">${item.noticeContent}</div>
		                    </div>
		                </div>
		            `;
				});
			}
			noticeArea.html(notice);
		}
	});
}

function moveElement(index, ref) {
	let type = index;
	let loc;
	switch (type) {
		case 1: loc = "/fund/announcementDetail.hp?aNo=" + ref; break;
		case 2: loc = "/fund/testingProject.me?cpage=1"; break;
		case 3: loc = "/fund/qnaDetail.hp?qNo=" + ref; break;
	}
	location.href = loc;
}