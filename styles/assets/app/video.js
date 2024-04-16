var modal = $(`
<div class="modal vh-100 w-100 align-items-center justify-content-center d-none" style="background: rgba(0, 0, 0, 0.5);">
    <div class="modal-container"></div>
    <button class="modal-close position-absolute" style="left: 90%; top: 10%;">
        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-x-lg" viewBox="0 0 16 16">
            <path d="M2.146 2.854a.5.5 0 1 1 .708-.708L8 7.293l5.146-5.147a.5.5 0 0 1 .708.708L8.707 8l5.147 5.146a.5.5 0 0 1-.708.708L8 8.707l-5.146 5.147a.5.5 0 0 1-.708-.708L7.293 8z"/>
        </svg>
    </button>
</div>
`).appendTo('body');
var modalContainer = $('.modal-container', modal);
var modalClose = $('.modal-close', modal);

$('#video-1').each(function () {
    var video = $(this);
    var parent = $(this).parent();
    var container = $('.dashboard__wallet-item-head', video);
    var shownPopup = false;
    var cover = $('.video-cover', video)

    function showPopup() {
        container.css('height', '100%');
        video.appendTo(modalContainer).css({height: '80%', width: '80%'});
        cover.css('display', 'none');

        modalContainer.removeClass('d-none').addClass('d-flex');
    }

    function hidePopup() {
        container.css('height', '242px');
        video.appendTo(parent).css({height: 'auto', width: '100%'});
        cover.css('display', 'block');

        modalContainer.removeClass('d-flex').addClass('d-none');
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