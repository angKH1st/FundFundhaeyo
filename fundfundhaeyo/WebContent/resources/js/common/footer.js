function moveToCompanyIntroduction() {
	location.href = "/fund/introduction.cp";
}

function moveToHelpCenter() {
	location.href = "/fund/announcement.hp?cpage=1";
}

function openModal(modalId) {
	const modal = document.querySelector(modalId);
	modal.style.display = "flex";
}

function closeModal(modalId) {
	const modal = document.querySelector(modalId);
	modal.style.display = "none";
}

const btnOpenModal1 = document.querySelector('#btn-open-modal1');
const btnOpenModal2 = document.querySelector('#btn-open-modal2');
const btnOpenModal3 = document.querySelector('#btn-open-modal3');

btnOpenModal1.addEventListener("click", () => openModal('#modal1'));
btnOpenModal2.addEventListener("click", () => openModal('#modal2'));
btnOpenModal3.addEventListener("click", () => openModal('#modal3'));

$(document).ready(function() {
	/* Top 버튼 특정 스크롤높이에서만 보이기 / 숨기기 */
	$(window).scroll(function() {
		if ($(this).scrollTop() > 100) {
			$('#top-btn').fadeIn();
		} else {
			$('#top-btn').fadeOut();
		}
	});

	/* Top 버튼 클릭시 페이지 상단으로 이동 */
	$('#top-btn').click(function() {
		$('html, body').animate({ scrollTop: 0 }, 800);
		return false;
	});
})