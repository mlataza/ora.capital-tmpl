         <!-- start menu account -->
         {include file="account_menu.tpl"}
         <!-- end menu account -->
         </div> <!-- ADDED TO ENCLOSE THE UI INSIDE A CARD -->

         <div class="row">
             <div class="col-12">
                 <div
                     class="dashboard__footer d-flex flex-column flex-lg-row align-items-center justify-content-lg-between">
                     <p class="m-0">© {'Y'|date} {$settings.site_name}, All rights reserved.</p>
                     <p class="m-0 d-flex align-items-center">
                         <svg width="14" height="14" viewBox="0 0 14 14" fill="none" xmlns="http://www.w3.org/2000/svg">
                             <path
                                 d="M7 14C3.14005 14 0 10.86 0 7C0 3.14005 3.14005 0 7 0C10.86 0 14 3.14005 14 7C14 10.86 10.86 14 7 14ZM7 0.875C3.62251 0.875 0.875 3.62251 0.875 7C0.875 10.3775 3.62251 13.125 7 13.125C10.3775 13.125 13.125 10.3775 13.125 7C13.125 3.62251 10.3775 0.875 7 0.875Z"
                                 fill="#5C677D"></path>
                             <path
                                 d="M10.0625 10.7917C9.95045 10.7917 9.83852 10.7491 9.75328 10.6633L6.69078 7.60083C6.60854 7.51859 6.5625 7.40718 6.5625 7.29172V3.20831C6.5625 2.96681 6.7585 2.77081 7 2.77081C7.2415 2.77081 7.4375 2.96681 7.4375 3.20831V7.11024L10.3717 10.0445C10.5426 10.2154 10.5426 10.4924 10.3717 10.6633C10.2865 10.7491 10.1745 10.7917 10.0625 10.7917Z"
                                 fill="#5C677D"></path>
                         </svg> <span ng-bind="time | date:format:zone" class="ms-1 ng-binding"
                             sx-time="">{$smarty.now|date_format:"%m/%e/%Y %H:%M:%S"}</span>
                     </p>
                 </div>
             </div>
         </div>
         </div>



         </section>
         {include file="account_footer.tpl"}

         <script>
             $(document).ready(function() {
                 $(".sx-close").click(function() {
                     $(".modal-js.rex.animated-fast").removeClass("fadeIn active");
                     $(".modal-js.rex.animated-fast").addClass("fadeOutDown");

                 });
             });
         </script>

         {include file="qr_fix.tpl"}

         </body>


</html>