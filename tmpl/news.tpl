{include file="home_header.tpl"}

<body ng-cloak>
    <header class="header  d-flex flex-column">
        <div class="container">
            <div class="header__box d-flex" ng-controller="FacadeHeaderCtrl as vm">
                <a href="/" class="header__logo d-flex align-items-center justify-content-lg-start">
                    <img class="header__logo-svg" src="styles/assets/app/img/18.png" alt>
                </a>
                {literal}
                <div class="header__content d-flex flex-column flex-lg-row flex-lg-grow-1" ng-class="{active:vm.burgerState}">
                {/literal}
                    <button class="btn header__content-close js-close-menu d-flex d-lg-none" ng-click="vm.toggleBurger(false)">
                        <svg width="22" height="22" viewBox="0 0 22 22" fill="none" xmlns="http://www.w3.org/2000/svg">
                            <path d="M1.13713 22.0001C0.84734 22.0001 0.557546 21.8898 0.337369 21.668C-0.104644 21.226 -0.104644 20.5094 0.337369 20.0674L20.0732 0.331509C20.5152 -0.110503 21.2318 -0.110503 21.6739 0.331509C22.1159 0.773521 22.1159 1.49013 21.6739 1.93242L1.93828 21.668C1.71645 21.8884 1.42665 22.0001 1.13713 22.0001Z" fill="white" />
                            <path d="M20.8744 22.0001C20.5846 22.0001 20.2951 21.8898 20.0746 21.668L0.337369 1.93242C-0.104644 1.49013 -0.104644 0.773521 0.337369 0.331509C0.779381 -0.110503 1.49599 -0.110503 1.93828 0.331509L21.6739 20.0674C22.1159 20.5094 22.1159 21.226 21.6739 21.668C21.452 21.8884 21.1625 22.0001 20.8744 22.0001Z" fill="white" />
                        </svg>
                    </button>
                    <div class="header__mobile-ui order-1 order-lg-0 d-flex d-lg-none flex-column">
                        {if $userinfo.logged != 1}
                        <a class="btn btn-secondary btn_ico" href="?a=login">
                            <svg>
                                <use xlink:href="#key"></use>
                            </svg>
                            <span>Enter</span>
                        </a>
                        <a class="btn btn-primary btn_ico" href="?a=signup">
                            <svg>
                                <use xlink:href="#arr_right"></use>
                            </svg>
                            <span>Register</span>
                        </a>
                        {else}
                        <a class="btn btn-primary btn_ico" href="?a=account">
                            <svg>
                                <use xlink:href="#arr_right"></use>
                            </svg>
                            <span>My account</span>
                        </a>
                        {/if}
                    </div>
                    <!--
                    <div class="header__lang order-2 order-lg-0">
                        <i class="ico ico-[[ ::global.language.code ]]"></i>
                        <span class="notranslate" ng-switch="::global.language.code === 'zh-CN'">
                            <span ng-switch-when="true">CN</span>
                            <span ng-switch-default ng-bind="::global.language.code"></span>
                        </span>
                        <div class="header__lang-hide">
                            <a class="header__lang-link pointer" ng-repeat="lang in ::global.languages" ng-click="changeLanguage(lang)" title="[[ ::lang.name ]]">
                                <i class="ico ico-[[ ::lang.code ]]"></i>
                                <span class="notranslate" ng-switch="::lang.code === 'zh-CN'">
                                    <span ng-switch-when="true">CN</span>
                                    <span ng-switch-default ng-bind="::lang.code"></span>
                                </span>
                            </a>
                        </div>
                    </div>-->
                    <div class="header__course order-4 order-lg-0 d-inline-flex align-items-center justify-content-between">
                        <span class="header__course-text notranslate"><span class="price-mobile"><img width="18px" height="18px" src="styles/assets/app/pay/48.svg">
                                &nbsp;&nbsp;Bitcoin = </span><span class="price-mobile-ui">&nbsp;&nbsp;Bitcoin =</span><b id="btc-price" class="ml5 ng-binding"></b>
                        </span>
                        <div class="rate header__course-curr d-none d-lg-flex align-items-center justify-content-center header__course-curr_down">
                            <svg width="10" height="6" viewBox="0 0 10 6" fill="none" xmlns="http://www.w3.org/2000/svg">
                                <path d="M5 0L9.33013 5.25H0.669873L5 0Z" fill="white"></path>
                            </svg>
                            <span id="btc-percent" class="notranslate ng-binding"></span>
                        </div>
                    </div>
                    <nav class="header__menu order-3 order-lg-0 d-flex justify-content-lg-end">
                        {include file="home_menu.tpl"}
                    </nav>
                    <div class="header__mobile-social order-5 order-lg-0 d-flex d-lg-none flex-column">
                        <a class="header__mobile-social-tg d-flex align-items-center" target="_blank" href="https://t.me/">
                            <svg width="25px" height="25px">
                                <use xlink:href="#tg_white"></use>
                            </svg>
                            <span>Chat</span>
                        </a>
                        <a class="header__mobile-social-tg d-flex align-items-center" target="_blank" href="https://t.me/">
                            <svg width="25px" height="25px">
                                <use xlink:href="#tg_white"></use>
                            </svg>
                            <span>Channel</span>
                        </a>
                        <a class="header__mobile-social-paper d-flex align-items-center" href="styles/docs/White_Paper_en.pdf" target="_blank">
                            <svg width="25px" height="25px">
                                <use xlink:href="#copy"></use>
                            </svg>
                            <span>White Paper</span>
                        </a>
                    </div>
                </div>

                {if $userinfo.logged != 1}
                <div class="header__ui d-flex align-items-center">
                    <a class="btn btn-secondary btn_ico d-none d-lg-flex" href="?a=login">
                        <svg>
                            <use xlink:href="#key"></use>
                        </svg>
                        <span>Enter</span>
                    </a>
                    <a class="btn btn-primary btn_ico d-none d-sm-flex" href="?a=signup">
                        <svg>
                            <use xlink:href="#arr_right"></use>
                        </svg>
                        <span>Register</span>
                    </a>
                </div>
                {else}
                <div class="header__ui d-flex align-items-center">
                    <a class="btn btn-primary btn_ico" href="?a=account">
                        <svg>
                            <use xlink:href="#arr_right"></use>
                        </svg>
                        <span>My account</span>
                    </a>
                </div>
                {/if}

                <button class="btn header__btn-menu js-header-burg d-flex d-lg-none" ng-click="vm.toggleBurger()">
                    <svg width="22" height="24" viewBox="0 0 22 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                        <path d="M22 19.5H0V22.5H22V19.5Z" fill="white" />
                        <path d="M22 10.5H0V13.5H22V10.5Z" fill="white" />
                        <path d="M22 1.5H0V4.50003H22V1.5Z" fill="white" />
                    </svg>
                </button>
            </div>
        </div>
    </header>
    <main class="d-flex flex-column">
        <section class="page__header d-flex">
            <div class="page__header-box d-flex">
                <div class="container__app container__app_px-15">
                    <div class="header__page d-flex justify-content-between align-items-center">
                        <div class="header__page-info d-flex flex-column">
                            <h1 class="header__home-slider1-item-title vis">Platform news</h1>
                            <p class="header__home-slider1-item-text vis mb-4 mt-1">Investing in {$settings.site_name} you earn from 1.00% from your deposit daily, to 5.00% from referral program, from growing up {include file="token.tpl"} token as well!</p>
                            {include file="home_join.tpl"}
                        </div>
                        <div class="header__page-pic d-none d-lg-flex align-items-center">
                            <img src="styles/assets/app/img/page_news.svg" alt>
                        </div>
                    </div>
                </div>
            </div>
            <svg class="page__header-fig" width="1059" height="602" viewBox="0 0 1059 602" fill="none" xmlns="http://www.w3.org/2000/svg">
                <path d="M867.831 601L1053.78 274.615C1058.79 265.83 1058.77 255.048 1053.75 246.275L913.224 1M861.601 601L1047.55 274.615C1052.56 265.83 1052.54 255.048 1047.52 246.275L906.993 1M855.371 601L1041.32 274.615C1046.33 265.83 1046.31 255.048 1041.29 246.275L900.763 1M849.14 601L1035.09 274.615C1040.1 265.83 1040.08 255.048 1035.06 246.275L894.533 1M842.91 601L1028.86 274.615C1033.87 265.83 1033.85 255.048 1028.83 246.275L888.302 1M836.68 601L1022.63 274.615C1027.64 265.83 1027.62 255.048 1022.6 246.275L882.072 1M830.449 601L1016.4 274.615C1021.41 265.83 1021.39 255.048 1016.37 246.275L875.842 1M824.219 601L1010.17 274.615C1015.18 265.83 1015.16 255.048 1010.14 246.275L869.611 1M817.989 601L1003.94 274.615C1008.94 265.83 1008.93 255.048 1003.91 246.275L863.381 1M811.759 601L997.709 274.615C1002.71 265.83 1002.7 255.048 997.675 246.275L857.151 1M805.528 601L991.479 274.615C996.484 265.83 996.471 255.048 991.445 246.275L850.92 1M799.298 601L985.249 274.615C990.254 265.83 990.241 255.048 985.215 246.275L844.69 1M793.068 601L979.019 274.615C984.024 265.83 984.011 255.048 978.984 246.275L838.46 1M786.837 601L972.788 274.615C977.793 265.83 977.78 255.048 972.754 246.275L832.23 1M780.607 601L966.558 274.615C971.563 265.83 971.55 255.048 966.524 246.275L825.999 1M774.377 601L960.328 274.615C965.333 265.83 965.32 255.048 960.293 246.275L819.769 1M768.146 601L954.097 274.615C959.102 265.83 959.089 255.048 954.063 246.275L813.539 1M761.916 601L947.867 274.615C952.872 265.83 952.859 255.048 947.833 246.275L807.308 1M755.686 601L941.637 274.615C946.642 265.83 946.629 255.048 941.603 246.275L801.078 1M749.455 601L935.406 274.615C940.411 265.83 940.398 255.048 935.372 246.275L794.848 1M743.225 601L929.176 274.615C934.181 265.83 934.168 255.048 929.142 246.275L788.617 1M736.995 601L922.946 274.615C927.951 265.83 927.938 255.048 922.912 246.275L782.387 1M730.764 601L916.715 274.615C921.72 265.83 921.707 255.048 916.681 246.275L776.157 1M724.534 601L910.485 274.615C915.49 265.83 915.477 255.048 910.451 246.275L769.926 1M718.304 601L904.255 274.615C909.26 265.83 909.247 255.048 904.221 246.275L763.696 1M712.074 601L898.024 274.615C903.03 265.83 903.017 255.048 897.99 246.275L757.466 1M705.843 601L891.794 274.615C896.799 265.83 896.786 255.048 891.76 246.275L751.235 1M699.613 601L885.564 274.615C890.569 265.83 890.556 255.048 885.53 246.275L745.005 1M693.383 601L879.334 274.615C884.339 265.83 884.326 255.048 879.299 246.275L738.775 1M687.152 601L873.103 274.615C878.108 265.83 878.095 255.048 873.069 246.275L732.545 1M680.922 601L866.873 274.615C871.878 265.83 871.865 255.048 866.839 246.275L726.314 1M674.692 601L860.643 274.615C865.648 265.83 865.635 255.048 860.609 246.275L720.084 1M668.461 601L854.412 274.615C859.417 265.83 859.404 255.048 854.378 246.275L713.854 1M662.231 601L848.182 274.615C853.187 265.83 853.174 255.048 848.148 246.275L707.623 1M656.001 601L841.952 274.615C846.957 265.83 846.944 255.048 841.918 246.275L701.393 1M649.77 601L835.721 274.615C840.726 265.83 840.713 255.048 835.687 246.275L695.163 1M643.54 601L829.491 274.615C834.496 265.83 834.483 255.048 829.457 246.275L688.932 1M637.31 601L823.261 274.615C828.266 265.83 828.253 255.048 823.227 246.275L682.702 1M631.079 601L817.03 274.615C822.035 265.83 822.022 255.048 816.996 246.275L676.472 1M624.849 601L810.8 274.615C815.805 265.83 815.792 255.048 810.766 246.275L670.241 1M618.619 601L804.57 274.615C809.575 265.83 809.562 255.048 804.536 246.275L664.011 1M612.389 601L798.339 274.615C803.345 265.83 803.331 255.048 798.305 246.275L657.781 1M606.158 601L792.109 274.615C797.114 265.83 797.101 255.048 792.075 246.275L651.55 1M599.928 601L785.879 274.615C790.884 265.83 790.871 255.048 785.845 246.275L645.32 1M593.698 601L779.649 274.615C784.654 265.83 784.641 255.048 779.614 246.275L639.09 1M587.467 601L773.418 274.615C778.423 265.83 778.41 255.048 773.384 246.275L632.86 1M581.237 601L767.188 274.615C772.193 265.83 772.18 255.048 767.154 246.275L626.629 1M575.007 601L760.958 274.615C765.963 265.83 765.95 255.048 760.923 246.275L620.399 1M568.776 601L754.727 274.615C759.732 265.83 759.719 255.048 754.693 246.275L614.169 1M562.546 601L748.497 274.615C753.502 265.83 753.489 255.048 748.463 246.275L607.938 1M556.316 601L742.267 274.615C747.272 265.83 747.259 255.048 742.232 246.275L601.708 1M550.085 601L736.036 274.615C741.041 265.83 741.028 255.048 736.002 246.275L595.478 1M543.855 601L729.806 274.615C734.811 265.83 734.798 255.048 729.772 246.275L589.247 1M537.625 601L723.576 274.615C728.581 265.83 728.568 255.048 723.542 246.275L583.017 1M531.394 601L717.345 274.615C722.35 265.83 722.337 255.048 717.311 246.275L576.787 1M525.164 601L711.115 274.615C716.12 265.83 716.107 255.048 711.081 246.275L570.556 1M518.934 601L704.885 274.615C709.89 265.83 709.877 255.048 704.851 246.275L564.326 1M512.704 601L698.655 274.615C703.66 265.83 703.646 255.048 698.62 246.275L558.096 1M506.473 601L692.424 274.615C697.429 265.83 697.416 255.048 692.39 246.275L551.865 1M500.243 601L686.194 274.615C691.199 265.83 691.186 255.048 686.16 246.275L545.635 1M494.013 601L679.964 274.615C684.969 265.83 684.956 255.048 679.929 246.275L539.405 1M487.782 601L673.733 274.615C678.738 265.83 678.725 255.048 673.699 246.275L533.175 1M481.552 601L667.503 274.615C672.508 265.83 672.495 255.048 667.469 246.275L526.944 1M475.322 601L661.273 274.615C666.278 265.83 666.265 255.048 661.238 246.275L520.714 1M469.091 601L655.042 274.615C660.047 265.83 660.034 255.048 655.008 246.275L514.484 1M462.861 601L648.812 274.615C653.817 265.83 653.804 255.048 648.778 246.275L508.253 1M456.631 601L642.582 274.615C647.587 265.83 647.574 255.048 642.548 246.275L502.023 1M450.4 601L636.351 274.615C641.356 265.83 641.343 255.048 636.317 246.275L495.793 1M444.17 601L630.121 274.615C635.126 265.83 635.113 255.048 630.087 246.275L489.562 1M437.94 601L623.891 274.615C628.896 265.83 628.883 255.048 623.857 246.275L483.332 1M431.709 601L617.66 274.615C622.665 265.83 622.652 255.048 617.626 246.275L477.102 1M425.479 601L611.43 274.615C616.435 265.83 616.422 255.048 611.396 246.275L470.871 1M419.249 601L605.2 274.615C610.205 265.83 610.192 255.048 605.166 246.275L464.641 1M413.019 601L598.969 274.615C603.974 265.83 603.962 255.048 598.935 246.275L458.411 1M406.788 601L592.739 274.615C597.744 265.83 597.731 255.048 592.705 246.275L452.181 1M400.558 601L586.509 274.615C591.514 265.83 591.501 255.048 586.475 246.275L445.95 1M394.328 601L580.279 274.615C585.284 265.83 585.271 255.048 580.244 246.275L439.72 1M388.097 601L574.048 274.615C579.053 265.83 579.04 255.048 574.014 246.275L433.49 1M381.867 601L567.818 274.615C572.823 265.83 572.81 255.048 567.784 246.275L427.259 1M375.637 601L561.588 274.615C566.593 265.83 566.58 255.048 561.553 246.275L421.029 1M369.406 601L555.357 274.615C560.362 265.83 560.349 255.048 555.323 246.275L414.799 1M363.176 601L549.127 274.615C554.132 265.83 554.119 255.048 549.093 246.275L408.568 1M356.946 601L542.897 274.615C547.902 265.83 547.889 255.048 542.863 246.275L402.338 1M350.715 601L536.666 274.615C541.671 265.83 541.658 255.048 536.632 246.275L396.108 1M344.485 601L530.436 274.615C535.441 265.83 535.428 255.048 530.402 246.275L389.877 1M338.255 601L524.206 274.615C529.211 265.83 529.198 255.048 524.172 246.275L383.647 1M332.024 601L517.975 274.615C522.98 265.83 522.967 255.048 517.941 246.275L377.417 1M325.794 601L511.745 274.615C516.75 265.83 516.737 255.048 511.711 246.275L371.186 1M319.564 601L505.515 274.615C510.52 265.83 510.507 255.048 505.481 246.275L364.956 1M313.334 601L499.284 274.615C504.29 265.83 504.277 255.048 499.25 246.275L358.726 1M307.103 601L493.054 274.615C498.059 265.83 498.046 255.048 493.02 246.275L352.496 1M300.873 601L486.824 274.615C491.829 265.83 491.816 255.048 486.79 246.275L346.265 1M294.643 601L480.594 274.615C485.599 265.83 485.586 255.048 480.559 246.275L340.035 1M288.412 601L474.363 274.615C479.368 265.83 479.355 255.048 474.329 246.275L333.805 1M282.182 601L468.133 274.615C473.138 265.83 473.125 255.048 468.099 246.275L327.574 1M275.952 601L461.903 274.615C466.908 265.83 466.895 255.048 461.868 246.275L321.344 1M269.721 601L455.672 274.615C460.677 265.83 460.664 255.048 455.638 246.275L315.114 1M263.491 601L449.442 274.615C454.447 265.83 454.434 255.048 449.408 246.275L308.883 1M257.261 601L443.212 274.615C448.217 265.83 448.204 255.048 443.178 246.275L302.653 1M251.03 601L436.981 274.615C441.986 265.83 441.973 255.048 436.947 246.275L296.423 1M244.8 601L430.751 274.615C435.756 265.83 435.743 255.048 430.717 246.275L290.192 1M238.57 601L424.521 274.615C429.526 265.83 429.513 255.048 424.487 246.275L283.962 1M232.339 601L418.29 274.615C423.295 265.83 423.282 255.048 418.256 246.275L277.732 1M226.109 601L412.06 274.615C417.065 265.83 417.052 255.048 412.026 246.275L271.501 1M219.879 601L405.83 274.615C410.835 265.83 410.822 255.048 405.796 246.275L265.271 1M213.649 601L399.6 274.615C404.605 265.83 404.592 255.048 399.565 246.275L259.041 1M207.418 601L393.369 274.615C398.374 265.83 398.361 255.048 393.335 246.275L252.811 1M201.188 601L387.139 274.615C392.144 265.83 392.131 255.048 387.105 246.275L246.58 1M194.958 601L380.909 274.615C385.914 265.83 385.901 255.048 380.874 246.275L240.35 1M188.727 601L374.678 274.615C379.683 265.83 379.67 255.048 374.644 246.275L234.12 1M182.497 601L368.448 274.615C373.453 265.83 373.44 255.048 368.414 246.275L227.889 1M176.267 601L362.218 274.615C367.223 265.83 367.21 255.048 362.183 246.275L221.659 1M170.036 601L355.987 274.615C360.992 265.83 360.979 255.048 355.953 246.275L215.429 1M163.806 601L349.757 274.615C354.762 265.83 354.749 255.048 349.723 246.275L209.198 1M157.576 601L343.527 274.615C348.532 265.83 348.519 255.048 343.493 246.275L202.968 1M151.345 601L337.296 274.615C342.301 265.83 342.288 255.048 337.262 246.275L196.738 1M145.115 601L331.066 274.615C336.071 265.83 336.058 255.048 331.032 246.275L190.507 1M138.885 601L324.836 274.615C329.841 265.83 329.828 255.048 324.802 246.275L184.277 1M132.655 601L318.605 274.615C323.61 265.83 323.597 255.048 318.571 246.275L178.047 1M126.424 601L312.375 274.615C317.38 265.83 317.367 255.048 312.341 246.275L171.816 1M120.194 601L306.145 274.615C311.15 265.83 311.137 255.048 306.111 246.275L165.586 1M113.964 601L299.915 274.615C304.92 265.83 304.907 255.048 299.88 246.275L159.356 1M107.733 601L293.684 274.615C298.689 265.83 298.676 255.048 293.65 246.275L153.126 1M101.503 601L287.454 274.615C292.459 265.83 292.446 255.048 287.42 246.275L146.895 1M95.2726 601L281.224 274.615C286.229 265.83 286.216 255.048 281.189 246.275L140.665 1M89.0423 601L274.993 274.615C279.998 265.83 279.985 255.048 274.959 246.275L134.435 1M82.812 601L268.763 274.615C273.768 265.83 273.755 255.048 268.729 246.275L128.204 1M76.5817 601L262.533 274.615C267.538 265.83 267.525 255.048 262.498 246.275L121.974 1M70.3514 601L256.302 274.615C261.307 265.83 261.294 255.048 256.268 246.275L115.744 1M64.1211 601L250.072 274.615C255.077 265.83 255.064 255.048 250.038 246.275L109.513 1M57.8908 601L243.842 274.615C248.847 265.83 248.834 255.048 243.808 246.275L103.283 1M51.6604 601L237.611 274.615C242.616 265.83 242.603 255.048 237.577 246.275L97.0527 1M45.4301 601L231.381 274.615C236.386 265.83 236.373 255.048 231.347 246.275L90.8224 1M39.1998 601L225.151 274.615C230.156 265.83 230.143 255.048 225.117 246.275L84.5921 1M32.9695 601L218.92 274.615C223.926 265.83 223.913 255.048 218.886 246.275L78.3618 1M26.7392 601L212.69 274.615C217.695 265.83 217.682 255.048 212.656 246.275L72.1315 1M20.5089 601L206.46 274.615C211.465 265.83 211.452 255.048 206.426 246.275L65.9012 1M14.2786 601L200.23 274.615C205.235 265.83 205.222 255.048 200.195 246.275L59.6708 1M8.04826 601L193.999 274.615C199.004 265.83 198.991 255.048 193.965 246.275L53.4405 1M1.81795 601L187.769 274.615C192.774 265.83 192.761 255.048 187.735 246.275L47.2102 1M-4.41236 601L181.539 274.615C186.544 265.83 186.531 255.048 181.504 246.275L40.9799 1M-10.6427 601L175.308 274.615C180.313 265.83 180.3 255.048 175.274 246.275L34.7496 1M-16.873 601L169.078 274.615C174.083 265.83 174.07 255.048 169.044 246.275L28.5193 1M-23.1033 601L162.848 274.615C167.853 265.83 167.84 255.048 162.814 246.275L22.289 1M-29.3336 601L156.617 274.615C161.622 265.83 161.609 255.048 156.583 246.275L16.0587 1M-35.5639 601L150.387 274.615C155.392 265.83 155.379 255.048 150.353 246.275L9.82835 1M-41.7942 601L144.157 274.615C149.162 265.83 149.149 255.048 144.123 246.275L3.59804 1M-48.0245 601L137.926 274.615C142.931 265.83 142.918 255.048 137.892 246.275L-2.63227 1M-54.2549 601L131.696 274.615C136.701 265.83 136.688 255.048 131.662 246.275L-8.86259 1M-60.4852 601L125.466 274.615C130.471 265.83 130.458 255.048 125.432 246.275L-15.0929 1M-66.7155 601L119.235 274.615C124.24 265.83 124.228 255.048 119.201 246.275L-21.3232 1M-72.9458 601L113.005 274.615C118.01 265.83 117.997 255.048 112.971 246.275L-27.5535 1M-79.1761 601L106.775 274.615C111.78 265.83 111.767 255.048 106.741 246.275L-33.7838 1M-85.4064 601L100.545 274.615C105.55 265.83 105.537 255.048 100.51 246.275L-40.0141 1M-91.6367 601L94.3142 274.615C99.3193 265.83 99.3063 255.048 94.2801 246.275L-46.2445 1M-97.867 601L88.0839 274.615C93.0889 265.83 93.076 255.048 88.0498 246.275L-52.4748 1M-104.097 601L81.8536 274.615C86.8586 265.83 86.8456 255.048 81.8195 246.275L-58.7051 1M-110.328 601L75.6233 274.615C80.6283 265.83 80.6153 255.048 75.5891 246.275L-64.9354 1M-116.558 601L69.393 274.615C74.398 265.83 74.385 255.048 69.3588 246.275L-71.1657 1M-122.788 601L63.1627 274.615C68.1677 265.83 68.1547 255.048 63.1285 246.275L-77.396 1M-129.019 601L56.9323 274.615C61.9374 265.83 61.9244 255.048 56.8982 246.275L-83.6263 1M-135.249 601L50.702 274.615C55.7071 265.83 55.6941 255.048 50.6679 246.275L-89.8566 1M-141.479 601L44.4717 274.615C49.4768 265.83 49.4638 255.048 44.4376 246.275L-96.087 1M-147.71 601L38.2414 274.615C43.2464 265.83 43.2334 255.048 38.2073 246.275L-102.317 1M-153.94 601L32.0111 274.615C37.0161 265.83 37.0031 255.048 31.977 246.275L-108.548 1M-160.17 601L25.7808 274.615C30.7858 265.83 30.7728 255.048 25.7466 246.275L-114.778 1M-166.4 601L19.5504 274.615C24.5555 265.83 24.5425 255.048 19.5163 246.275L-121.008 1M-172.631 601L13.3201 274.615C18.3252 265.83 18.3122 255.048 13.286 246.275L-127.239 1M-178.861 601L7.08982 274.615C12.0949 265.83 12.0819 255.048 7.05571 246.275L-133.469 1M-185.091 601L0.85951 274.615C5.86454 265.83 5.85156 255.048 0.825394 246.275L-139.699 1M-191.322 601L-5.3708 274.615C-0.365768 265.83 -0.378752 255.048 -5.40492 246.275L-145.929 1M-197.552 601L-11.6011 274.615C-6.59608 265.83 -6.60906 255.048 -11.6352 246.275L-152.16 1M-203.782 601L-17.8314 274.615C-12.8264 265.83 -12.8394 255.048 -17.8655 246.275L-158.39 1M-210.013 601L-24.0617 274.615C-19.0567 265.83 -19.0697 255.048 -24.0959 246.275L-164.62 1M-216.243 601L-30.2921 274.615C-25.287 265.83 -25.3 255.048 -30.3262 246.275L-170.851 1M-222.473 601L-36.5224 274.615C-31.5173 265.83 -31.5303 255.048 -36.5565 246.275L-177.081 1M-228.704 601L-42.7527 274.615C-37.7476 265.83 -37.7606 255.048 -42.7868 246.275L-183.311 1M-234.934 601L-48.983 274.615C-43.978 265.83 -43.9909 255.048 -49.0171 246.275L-189.542 1M-241.164 601L-55.2133 274.615C-50.2083 265.83 -50.2212 255.048 -55.2474 246.275L-195.772 1M-247.395 601L-61.4436 274.615C-56.4386 265.83 -56.4516 255.048 -61.4777 246.275L-202.002 1" stroke="url(#page__headerpaint0_linear)" stroke-opacity="0.1" stroke-width="2" />
                <defs>
                    <linearGradient id="page__headerpaint0_linear" x1="405.066" y1="276.037" x2="405.066" y2="523.437" gradientUnits="userSpaceOnUse">
                        <stop offset="1" stop-color="#5C677D" />
                        <stop offset="1" stop-color="#5C677D" stop-opacity="0" />
                    </linearGradient>
                </defs>
            </svg>
        </section>
        <section class="pageNews">
            <div class="container__app container__app_px-15 animated fadeIn">

                <div class="pageNews__list d-flex flex-column">
                    {if $frm.id}

                    {loaddata name="news_item" id=$frm.id var=new}
					
                    {if $new}
					{counter name=rex_25 start=0 print=0}
                    <article class="pageNews__list-article align-items-start animated-fast fadeIn ng-scope ng-isolate-scope">
                        <h3 class="modal-title modal-title_news">{$new.title}</h3>
                        <time datetime="{$n.date|date_format:" %m/%e/%Y"}" class="pageNews__list-article-info-date modal-content__date d-flex align-items-center">
                            <svg width="25px" height="25px">
                                <use xlink:href="#calendar2"></use>
                            </svg>
                            <span>{$new.date|date_format:"%m/%e/%Y"}</span>
                        </time>
                        <img class="modal-content__img" src="{if !empty($new.image_url)}{$new.image_url}{else}styles/assets/app/img/News-{counter name=rex_25}-eng.png{/if}" alt="">
                        <div class="modal_wysiwyg">
                            <p>{$new.full_text}</p>
                        </div>
                    </article>
                    {else}
                    <article class="pageNews__list-article align-items-start animated-fast fadeIn ng-scope ng-isolate-scope">
                        <h3 class="modal-title modal-title_news">Not Found</h3>
                    </article>
                    {/if}

                    {else}
                    <!-- items -->
                    {loaddata name="news" var=news page=$frm.p limit=20 pages_var=pages}
					{counter name=rex_20 start=0 print=0}
                    {foreach from=$news item=n}
                    <article class="pageNews__list-article align-items-start d-flex flex-column flex-lg-row animated-fast fadeIn ng-scope ng-isolate-scope">
                        <picture class="pageNews__list-article-img opacity pointer"><img alt="" src="{if !empty($n.image_url)}{$n.image_url}{else}styles/assets/app/img/News-{counter name=rex_20}-eng.png{/if}"></picture>
                        <div class="pageNews__list-article-info" style="width:100%">
                            <a class="pageNews__list-article-info-title pointer ng-binding">{$n.title}</a>
                            <div class="d-flex flex-column flex-sm-row justify-content-sm-between">
                                <time class="pageNews__list-article-info-date d-flex align-items-center" datetime="{$n.date|date_format:"%m/%e/%Y"}"><svg height="25px" width="25px">
                                        <use xlink:href="#calendar2"></use>
                                    </svg> <span class="ng-binding">{$n.date|date_format:"%m/%e/%Y"}</span></time> <a class="btn btn-primary btn_ico pageNews__list-article-info-link" href="{" ?a=news&id=`$n.id`"|encurl}"><svg>
                                        <use xlink:href="#arr_right"></use>
                                    </svg> <span>Read complete text</span></a>
                            </div>
                        </div>
                    </article>
                    {/foreach}
					
					
                    {if $news}   
                    {else}               
                    <article class="pageNews__list-article align-items-start d-flex flex-column flex-lg-row animated-fast fadeIn ng-scope ng-isolate-scope">
                        <picture class="pageNews__list-article-img opacity pointer"><img alt="" src="styles/assets/app/img/News-1-eng.png"></picture>
                        <div class="pageNews__list-article-info" style="width:100%">
                            <a class="pageNews__list-article-info-title pointer ng-binding">{$settings.site_name} internet project starts!</a>
                            <div class="d-flex flex-column flex-sm-row justify-content-sm-between">
                                <time class="pageNews__list-article-info-date d-flex align-items-center" datetime="01/14/{'Y'|date}"><svg height="25px" width="25px">
                                        <use xlink:href="#calendar2"></use>
                                    </svg> <span class="ng-binding">01/14/{'Y'|date}</span></time>
                            </div>
                        </div>
                    </article>

                    <article class="pageNews__list-article align-items-start d-flex flex-column flex-lg-row animated-fast fadeIn ng-scope ng-isolate-scope">
                        <picture class="pageNews__list-article-img opacity pointer"><img alt="" src="styles/assets/app/img/News-2-eng.png"></picture>
                        <div class="pageNews__list-article-info" style="width:100%">
                            <a class="pageNews__list-article-info-title pointer ng-binding">We are on PancakeSwap stock exchange!</a>
                            <div class="d-flex flex-column flex-sm-row justify-content-sm-between">
                                <time class="pageNews__list-article-info-date d-flex align-items-center" datetime="01/06/2021"><svg height="25px" width="25px">
                                        <use xlink:href="#calendar2"></use>
                                    </svg> <span class="ng-binding">01/06/2021</span></time>
                            </div>
                        </div>
                    </article>
					{/if}
					
					
                    <!-- //items -->
                    {/if}

                </div>

                <!-- load_more -->
                <!-- <nav class="pageNews__nav" ng-if="vm.limit < vm.news.length">
                    <ul class="pagination pagination-sm justify-content-center">
                        <li class="page-item">
                            <a class="page-link d-flex align-items-center pointer" ng-click="vm.loadMore(5)">
                                <span class="me-3">Download more</span>
                                <svg width="28.85px" height="10.32px">
                                    <use xlink:href="#arrow_pagin_right"></use>
                                </svg>
                            </a>
                        </li>
                    </ul>
                </nav> -->
                <!-- //load_more -->

            </div>
        </section>
        <section class="invitations">
            <div class="container__app container__app_px-15">
                <div class="invitations__box d-flex justify-content-center justify-content-lg-between align-items-center">
                    {if $userinfo.logged != 1}
                    <div class="invitations__box-info d-flex flex-column">
                        <h2 class="invitations__box-title">Start to invest <br> with us right now!</h2>
                        <a href="?a=signup" class="btn btn-success">
                            <span>Register</span>
                        </a>
                    </div>
					{else}
					<div class="invitations__box-info d-flex flex-column">
                        <h2 class="invitations__box-title">Start to invest <br> with us right now!</h2>
                        <a href="?a=deposit" class="btn btn-success">
                            <span>Investment</span>
                        </a>
                    </div>
					{/if} 
                    <div class="invitations__box-pic">
                        <div class="invitations__box-pic-figure"></div>
                        <div class="invitations__box-pic-picture"></div>
                    </div>
                </div>
            </div>
        </section>
    </main>
    {include file="footer_home.tpl"}
    {include file="data_home.tpl"}
</body>

</html>
