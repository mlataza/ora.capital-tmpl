var tag = document.createElement('script');

tag.src = "https://www.youtube.com/iframe_api";
var firstScriptTag = document.getElementsByTagName('script')[0];
firstScriptTag.parentNode.insertBefore(tag, firstScriptTag);

function onYouTubeIframeAPIReady() {

    var modalContainer = $(`
    <div class="modal vh-100 w-100 align-items-center justify-content-center d-none" style="background: rgba(0, 0, 0, 0.5);"></div>
    `).appendTo('body');

    function setupPopupVideo(id) {
        $(`#${id}`).each(function () {
            var video = $(this);
            var parent = $(this).parent();
            var container = $('.dashboard__wallet-item-head', video);
            var shownPopup = false;
            var cover = $('.video-cover', video);
            var player = new YT.Player(`${id}-player`);

            function showPopup() {
                container.css('height', '100%');
                video.appendTo(modalContainer).css({ height: '80%', width: '80%' });
                cover.css('display', 'none');

                modalContainer.removeClass('d-none').addClass('d-flex').on('click', function () {
                    shownPopup = false;
                    hidePopup();
                });
            }

            function hidePopup() {
                container.css('height', '242px');
                video.appendTo(parent).css({ height: 'auto', width: '100%' });
                cover.css('display', 'block');

                modalContainer.removeClass('d-flex').addClass('d-none').off('click');
                player.pauseVideo();
            }

            $(video).on('click', function () {
                shownPopup = !shownPopup;

                if (shownPopup) {
                    showPopup();
                } else {
                    hidePopup();
                }
            });
        });
    }

    setupPopupVideo('video-1');
    setupPopupVideo('video-2');

};