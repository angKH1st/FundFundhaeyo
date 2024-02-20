$(document).ready(function() {
    $('.btn-a').click(function() {
        $('.btn-a-div').show();
        $('.btn-b-div').hide();
        $('.btn-c-div').hide();
        $('.btn-d-div').hide();
    });

    $('.btn-b').click(function() {
        $('.btn-b-div').show();
        $('.btn-a-div').hide();
        $('.btn-c-div').hide();
        $('.btn-d-div').hide();
    });
    
    $('.btn-c').click(function() {
        $('.btn-c-div').show();
        $('.btn-a-div').hide();
        $('.btn-b-div').hide();
        $('.btn-d-div').hide();
    });
    
    $('.btn-d').click(function() {
        $('.btn-d-div').show();
        $('.btn-a-div').hide();
        $('.btn-b-div').hide();
        $('.btn-c-div').hide();
    });
});