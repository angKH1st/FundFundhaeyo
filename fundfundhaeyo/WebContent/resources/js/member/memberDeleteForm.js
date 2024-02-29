$(document).ready(function(){
    $(".delete-btn").on('click', function(e){
        e.preventDefault();

        var userPwd = $("input[name='userPwd']").val();
        var pwdCheck = $("input[name='userPwdCheck']").val();
		var userId = $("input[name='userId']").val();

        if(userPwd != pwdCheck){
            alert("비밀번호가 일치하지 않습니다.");
            return;
        }else{
	        $.ajax({
	            url: 'delete.me',
	            type: 'POST',
	            data: {
	                userId: userId,
	                userPwd: userPwd
	            },
	            success: function(result) {
					console.log(result);
	                if(result > 0) {
	                    alert("회원탈퇴가 성공적으로 이루어졌습니다.");
	                    window.location.href = '/fund';
	                } else {
	                    alert("회원탈퇴에 실패하였습니다.");
	                }
	            },
	            error: function(err) {
	                console.log(err);
	                alert("오류가 발생했습니다. 다시 시도해주세요.");
	            }
	        });
		}
    });
});