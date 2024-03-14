function back() {
	location.href = "/fund/qna.hp?cpage=1";
}

function deleteQna() {
	if (confirm("정말 삭제하시겠습니까?")) {
		location.href = "/fund/deleteQna.hp?qNo=" + $("#qNo").val();
	}
}