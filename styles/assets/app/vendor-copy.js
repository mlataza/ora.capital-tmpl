        new ClipboardJS('.btn-copy');
   
        $(".btn-copy").click(function() {
            $(".modal-js.rexcopy.animated-fast").removeClass("fadeOutDown");
            $(".modal-js.rexcopy.animated-fast").addClass("fadeIn active");
        });
  
  
        $(document).ready(function() {
            //$(".btn.btn_close.sx-close").click(function(){
            $(".sx-close-copy").click(function() {
                $(".modal-js.rexcopy.animated-fast").removeClass("fadeIn active");
                $(".modal-js.rexcopy.animated-fast").addClass("fadeOutDown");
            });
        });
   