$(document).ready(function() {
    $('[name="title"], [name="content"]').on('input', function() {
        checkInputs();
    });

    $('button[type="reset"]').on('click', function() {
        setTimeout(checkInputs, 0);
    });

    function checkInputs() {
        if($('[name="title"]').val().trim() !== '' && $('[name="content"]').val().trim() !== '') {
            $('button[type="submit"]').prop('disabled', false);
        } else {
            $('button[type="submit"]').prop('disabled', true);
        }
    }
});