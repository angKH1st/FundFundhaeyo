function moveToDetail(pNo){
	location.href = "/fund/detail.pr?pno=" + pNo;
}

function alertP(index){
	if(index === 1){
		alert('해당 프로젝트는 심사중입니다.');
	}else if(index === 2){
		alert('해당 프로젝트는 반려되었습니다.\n알림 목록을 통해 반려사유를 확인해주세요.');
	}else if(index === 3){
		alert('해당 프로젝트는 게시 대기중입니다.');
	}
}