$('#video-1').each(function () {
    var video = $(this);
    var parent = $(this).parent();
    var container = $('.dashboard__wallet-item-head', video);
    var shownPopup = false;
    var cover = $('.video-cover', video)

    function showPopup() {
        video.addClass('modal vh-100');
        container.css('height', '100%');
        video.appendTo('body');
        cover.css('display', 'none');
    }

    function hidePopup() {
        video.removeClass('modal vh-100');
        container.css('height', '242px');
        video.appendTo(parent);
        cover.css('display', 'block');
    }

    $(video).on('click', function() {
        shownPopup = !shownPopup;

        if (shownPopup) {
            showPopup();
        } else {
            hidePopup();
        }
    });
});