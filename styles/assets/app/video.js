var modalContainer = $(`
<div class="modal vh-100 w-100" style="background: rgba(0, 0, 0, 0.5); display: none;">
</div>
`);

$('#video-1').each(function () {
    var video = $(this);
    var parent = $(this).parent();
    var container = $('.dashboard__wallet-item-head', video);
    var shownPopup = false;
    var cover = $('.video-cover', video)

    function showPopup() {
        container.css('height', '100%');
        video.appendTo(modalContainer);
        cover.css('display', 'none');
        modalContainer.show();
    }

    function hidePopup() {
        container.css('height', '242px');
        video.appendTo(parent);
        cover.css('display', 'block');
        modalContainer.hide();
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