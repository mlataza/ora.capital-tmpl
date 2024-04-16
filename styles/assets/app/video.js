$('#video-1').each(function () {
    var video = $(this);
    var container = $('.dashboard__wallet-item-head', this);
    var shownPopup = false;

    function showPopup() {
        video.addClass('modal vh-100');
        container.css('height', '100%');
    }

    function hidePopup() {
        video.removeClass('modal vh-100');
        container.css('height', '242px');
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