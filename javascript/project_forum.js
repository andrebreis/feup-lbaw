$(function () {
    $('.like').click(function () {
        likeFunction(this);
    });
});

function likeFunction(caller) {
    var postId = caller.parentElement.getAttribute('postid');
    $.ajax({
        type: "POST",
        url: "rate.php",
        data: 'Action=LIKE&PostID=' + postId,
        success: function () {}
    });
}