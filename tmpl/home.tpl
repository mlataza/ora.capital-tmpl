{include file="home_header.tpl"}

<body ng-cloak>
    <header class="header header_home d-flex flex-column">
        <div class="container">
            <div class="header__box d-flex ng-scope" ng-controller="FacadeHeaderCtrl as vm">
                <a href="/" class="header__logo d-flex align-items-center justify-content-lg-start">
                    <img class="header__logo-svg" src="styles/assets/app/img/18.png" alt="">
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
                        <a class="header__mobile-social-tg d-flex align-items-center" target="_blank" href="https://t.me">
                            <svg width="25px" height="25px">
                                <use xlink:href="#tg_white"></use>
                            </svg>
                            <span>Chat</span>
                        </a>
                        <a class="header__mobile-social-tg d-flex align-items-center" target="_blank" href="https://t.me">
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
                        <path d="M22 19.5H0V22.5H22V19.5Z" fill="white"></path>
                        <path d="M22 10.5H0V13.5H22V10.5Z" fill="white"></path>
                        <path d="M22 1.5H0V4.50003H22V1.5Z" fill="white"></path>
                    </svg>
                </button>
            </div>
            <div class="header__home d-flex flex-column" ng-controller="HomeHeaderCtrl as vm">
                <div class="header__home-slider1">
                    <div class="swiper-container header__home-slider1-el" sx-swiper="vm.swiperParams[0]">
                        <div class="swiper-wrapper">
                            <div class="swiper-slide header__home-slider1-item">
                                <div class="d-flex flex-column flex-xl-row">
                                    <div class="header__home-slider1-item-left d-flex flex-column">
                                        <div class="header__home-slider1-item-title-box">
                                            <h2 class="header__home-slider1-item-title">New generation platform</h2>
                                        </div>
                                        <picture class="header__home-slider1-item-right d-flex">
                                            <source media="(min-width: 1024.00001px)" srcset="styles/assets/app/img/slider1_1.svg">
                                            <source media="(max-width: 992px)" srcset="styles/assets/app/img/slider1_1_mob.png">
                                            <img src="styles/assets/app/img/slider1_1.svg" alt="slider1">
                                        </picture>
                                        <div class="header__home-slider1-item-text-box">
                                            <p class="header__home-slider1-item-text">{$settings.site_name} - is the most unique project at the worldwide market of NFT investment. You can constantly earn daily profit of 1.00% with us using multilevel income system that includes possibilities to combine investments and tokens.</p>
                                        </div>
                                        <div class="header__home-slider1-item-ui d-flex align-items-center">
                                            {if $userinfo.logged != 1}
                                            <div class="header__home-slider1-item-ui-box">
                                                <a class="btn btn-success btn_ico" href="?a=signup">
                                                    <svg>
                                                        <use xlink:href="#arr_right_green"></use>
                                                    </svg>
                                                    <span>Register</span>
                                                </a>
                                            </div>
                                            {else}
                                            <div class="header__home-slider1-item-ui-box">
                                                <a class="btn btn-success btn_ico" href="?a=account">
                                                    <svg>
                                                        <use xlink:href="#arr_right_green"></use>
                                                    </svg>
                                                    <span>My account</span>
                                                </a>
                                            </div>
                                            {/if}
                                            <a class="btn btn-light d-none d-lg-flex" href="?a=faq">
                                                <span>F.A.Q</span>
                                            </a>
                                        </div>
                                        {include file="home_join.tpl"}
                                    </div>
                                </div>
                            </div>
                            <div class="swiper-slide header__home-slider1-item">
                                <div class="d-flex flex-column flex-xl-row">
                                    <div class="header__home-slider1-item-left d-flex flex-column">
                                        <div class="header__home-slider1-item-title-box">
                                            <h2 class="header__home-slider1-item-title">To a star with {include file="token.tpl"} token</h2>
                                        </div>
                                        <picture class="header__home-slider1-item-right d-flex">
                                            <source media="(min-width: 1024.00001px)" srcset="styles/assets/app/img/slider1_2.svg">
                                            <source media="(max-width: 992px)" srcset="styles/assets/app/img/slider1_2_mob.png">
                                            <img src="styles/assets/app/img/slider1_2.svg" alt>
                                            <div class="header__home-slider1-item-right-info1">
                                                <p>Token emission:</p>
                                                <span>
                                                    <svg viewBox="0 0 27.18 26.46"><defs><linearGradient id="Degradado_sin_nombre_12" x1="2.18" y1="13.97" x2="28.81" y2="13.97" gradientUnits="userSpaceOnUse"><stop offset="0" stop-color="#eebd2c"/><stop offset="1" stop-color="#f5d95e"/></linearGradient><linearGradient id="Degradado_sin_nombre_12-2" x1="1.91" y1="13.97" x2="29.09" y2="13.97" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-3" x1="2.05" y1="13.97" x2="28.95" y2="13.97" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-4" x1="1.93" y1="13.23" x2="25.24" y2="13.23" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-5" x1="16.66" y1="8.8" x2="16.92" y2="8.8" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-6" x1="15.03" y1="9.39" x2="16.51" y2="9.39" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-7" x1="2.07" y1="11.62" x2="19.39" y2="11.62" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-8" x1="22.16" y1="12.91" x2="23.32" y2="12.91" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-9" x1="10.88" y1="15.16" x2="13.85" y2="15.16" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-10" x1="11.29" y1="11.27" x2="13.79" y2="11.27" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-11" x1="19.43" y1="7.28" x2="25.11" y2="7.28" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-12" x1="25.11" y1="17.43" x2="25.11" y2="17.43" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-13" x1="19.5" y1="11.85" x2="22.15" y2="11.85" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-14" x1="24.97" y1="15.71" x2="25.11" y2="15.71" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-15" x1="25.11" y1="17.43" x2="25.11" y2="17.43" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-16" x1="8.01" y1="20.75" x2="24.97" y2="20.75" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-17" x1="8.29" y1="9.79" x2="12.99" y2="9.79" gradientTransform="translate(16.38 -3.48) rotate(70.79)" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-18" x1="7.88" y1="15.92" x2="19.53" y2="15.92" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-19" x1="7.95" y1="20.86" x2="8.01" y2="20.86" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-20" x1="19.37" y1="11.08" x2="19.5" y2="11.08" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-21" x1="7.84" y1="20.75" x2="8.15" y2="20.75" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-22" x1="19.53" y1="15.67" x2="24.97" y2="15.67" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-23" x1="19.39" y1="15.79" x2="24.97" y2="15.79" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-24" x1="24.97" y1="17.49" x2="25.11" y2="17.49" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-25" x1="25.11" y1="17.35" x2="25.17" y2="17.35" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-26" x1="24.97" y1="17.31" x2="25.11" y2="17.31" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-27" x1="24.83" y1="17.43" x2="25.11" y2="17.43" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-28" x1="19.32" y1="14.09" x2="19.53" y2="14.09" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-29" x1="19.22" y1="5.79" x2="19.39" y2="5.79" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-30" x1="19.36" y1="5.83" x2="19.53" y2="5.83" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-31" x1="19.39" y1="4.15" x2="19.53" y2="4.15" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-32" x1="19.25" y1="4.19" x2="19.39" y2="4.19" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-33" x1="19.39" y1="4.23" x2="19.53" y2="4.23" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-34" x1="19.36" y1="7.39" x2="19.49" y2="7.39" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-35" x1="19.34" y1="7.33" x2="19.36" y2="7.33" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-36" x1="8.12" y1="13.33" x2="10.93" y2="13.33" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-37" x1="10.88" y1="15.67" x2="11.03" y2="15.67" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-38" x1="7.57" y1="13.18" x2="10.92" y2="13.18" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-39" x1="7.84" y1="13.26" x2="10.93" y2="13.26" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-40" x1="7.57" y1="14.12" x2="11.07" y2="14.12" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-41" x1="11.01" y1="15.36" x2="11.03" y2="15.36" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-42" x1="7.84" y1="14.12" x2="11.03" y2="14.12" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-43" x1="10.88" y1="15.83" x2="11.03" y2="15.83" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-44" x1="11.33" y1="14.79" x2="13.6" y2="14.79" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-45" x1="11.2" y1="12.35" x2="11.23" y2="12.35" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-46" x1="11.29" y1="15.37" x2="11.29" y2="15.37" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-47" x1="10.92" y1="12.1" x2="11.29" y2="12.1" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-48" x1="12.82" y1="14.47" x2="13.72" y2="14.47" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-49" x1="13.1" y1="12.76" x2="13.2" y2="12.76" gradientTransform="translate(8.19 -4.88) rotate(30.16)" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-50" x1="11.07" y1="15.06" x2="13.85" y2="15.06" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-51" x1="10.93" y1="13.81" x2="11.01" y2="13.81" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-52" x1="10.93" y1="12.52" x2="10.93" y2="12.52" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-53" x1="10.92" y1="12.13" x2="11.19" y2="12.13" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-54" x1="10.93" y1="12.3" x2="11.15" y2="12.3" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-55" x1="10.92" y1="12.21" x2="11.19" y2="12.21" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-56" x1="11.03" y1="15.78" x2="11.3" y2="15.78" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-57" x1="10.93" y1="14.03" x2="11.16" y2="14.03" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-58" x1="10.93" y1="12.4" x2="11.07" y2="12.4" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-59" x1="11.03" y1="15.67" x2="11.16" y2="15.67" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-60" x1="12.94" y1="16.49" x2="13.08" y2="16.49" gradientTransform="translate(10.15 -4.32) rotate(30.45)" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-61" x1="11.29" y1="15.46" x2="11.33" y2="15.46" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-62" x1="11.23" y1="13.22" x2="13.6" y2="13.22" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-63" x1="11.2" y1="13.81" x2="11.29" y2="13.81" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-64" x1="11.2" y1="12.32" x2="11.26" y2="12.32" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-65" x1="11.29" y1="14.87" x2="13.72" y2="14.87" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-66" x1="11.3" y1="15.18" x2="12.82" y2="15.18" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-67" x1="11.07" y1="13.96" x2="11.29" y2="13.96" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-68" x1="11.16" y1="15.59" x2="11.3" y2="15.59" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-69" x1="11.06" y1="12.34" x2="11.2" y2="12.34" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-70" x1="11.16" y1="15.67" x2="11.3" y2="15.67" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-71" x1="11.52" y1="11.61" x2="13.48" y2="11.61" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-72" x1="11.4" y1="11.85" x2="12.21" y2="11.85" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-73" x1="11.29" y1="11.31" x2="13.79" y2="11.31" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-74" x1="13.3" y1="13.89" x2="15.64" y2="13.89" gradientTransform="translate(5.13 -3.86) rotate(18.43)" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-75" x1="11.19" y1="12.15" x2="11.4" y2="12.15" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-76" x1="11.27" y1="12.21" x2="11.39" y2="12.21" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-77" x1="15.64" y1="14.82" x2="15.75" y2="14.82" gradientTransform="translate(17.94 -6.65) rotate(52.61)" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-78" x1="15.63" y1="14.91" x2="15.75" y2="14.91" gradientTransform="translate(15.14 -6.73) rotate(45)" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-79" x1="13.72" y1="14.22" x2="13.85" y2="14.22" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-80" x1="11.19" y1="12.1" x2="11.4" y2="12.1" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-81" x1="13.06" y1="12.96" x2="13.11" y2="12.96" gradientTransform="translate(8.3 -4.82) rotate(30.2)" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-82" x1="11.03" y1="12.14" x2="11.19" y2="12.14" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-83" x1="11.26" y1="13.18" x2="13.73" y2="13.18" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-84" x1="11.19" y1="12.24" x2="11.39" y2="12.24" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-85" x1="13.6" y1="14.12" x2="13.84" y2="14.12" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-86" x1="11.15" y1="12.24" x2="11.2" y2="12.24" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-87" x1="11.52" y1="12.43" x2="13.83" y2="12.43" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-88" x1="11.4" y1="11.47" x2="13.69" y2="11.47" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-89" x1="12.21" y1="11.19" x2="13.68" y2="11.19" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-90" x1="11.39" y1="13.11" x2="13.83" y2="13.11" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-91" x1="13.73" y1="14.05" x2="13.84" y2="14.05" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-92" x1="11.27" y1="12.17" x2="11.52" y2="12.17" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-93" x1="14.1" y1="13.17" x2="16.32" y2="13.17" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-94" x1="13.95" y1="12.01" x2="14.07" y2="12.01" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-95" x1="13.85" y1="13.49" x2="16.55" y2="13.49" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-96" x1="16.69" y1="12.58" x2="16.81" y2="12.58" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-97" x1="14.03" y1="10.4" x2="14.05" y2="10.4" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-98" x1="13.85" y1="13.45" x2="16.55" y2="13.45" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-99" x1="13.85" y1="14.25" x2="13.98" y2="14.25" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-100" x1="13.67" y1="10.65" x2="13.91" y2="10.65" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-101" x1="13.97" y1="14.1" x2="14.11" y2="14.1" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-102" x1="13.84" y1="14.13" x2="13.85" y2="14.13" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-103" x1="13.84" y1="14.1" x2="13.95" y2="14.1" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-104" x1="13.84" y1="14.17" x2="14.09" y2="14.17" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-105" x1="13.84" y1="14.13" x2="13.85" y2="14.13" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-106" x1="13.69" y1="12.4" x2="13.97" y2="12.4" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-107" x1="13.86" y1="13.98" x2="13.97" y2="13.98" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-108" x1="13.68" y1="10.8" x2="13.82" y2="10.8" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-109" x1="13.68" y1="10.72" x2="13.81" y2="10.72" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-110" x1="15.88" y1="14.8" x2="15.88" y2="14.8" gradientTransform="translate(8.29 -5.54) rotate(26.57)" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-111" x1="13.83" y1="13.96" x2="13.86" y2="13.96" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-112" x1="13.83" y1="14.05" x2="13.97" y2="14.05" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-113" x1="13.95" y1="14.06" x2="13.97" y2="14.06" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-114" x1="14.07" y1="13.54" x2="14.1" y2="13.54" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-115" x1="15.86" y1="11.48" x2="15.93" y2="11.48" gradientTransform="translate(7.92 -6.43) rotate(30.15)" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-116" x1="13.95" y1="10.71" x2="14.02" y2="10.71" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-117" x1="14.1" y1="13.25" x2="16.44" y2="13.25" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-118" x1="14.11" y1="13.29" x2="16.44" y2="13.29" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-119" x1="13.82" y1="12.33" x2="14.1" y2="12.33" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-120" x1="13.97" y1="13.94" x2="14.11" y2="13.94" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-121" x1="13.81" y1="10.74" x2="13.95" y2="10.74" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-122" x1="15.72" y1="11.4" x2="15.82" y2="11.4" gradientTransform="translate(7.86 -6.38) rotate(30.17)" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-123" x1="13.97" y1="14.02" x2="14.11" y2="14.02" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-124" x1="16.58" y1="12.32" x2="16.74" y2="12.32" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-125" x1="14.91" y1="9.74" x2="16.53" y2="9.74" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-126" x1="13.79" y1="10.47" x2="14.03" y2="10.47" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-127" x1="16.81" y1="12.49" x2="17" y2="12.49" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-128" x1="16.55" y1="12.66" x2="16.69" y2="12.66" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-129" x1="14.05" y1="10.11" x2="15.03" y2="10.11" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-130" x1="14.9" y1="9.58" x2="16.52" y2="9.58" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-131" x1="16.69" y1="12.44" x2="16.75" y2="12.44" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-132" x1="13.79" y1="10.53" x2="13.81" y2="10.53" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-133" x1="14.05" y1="9.72" x2="16.52" y2="9.72" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-134" x1="16.69" y1="12.47" x2="16.75" y2="12.47" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-135" x1="13.79" y1="10.54" x2="13.8" y2="10.54" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-136" x1="15.93" y1="12.36" x2="18.23" y2="12.36" gradientTransform="translate(16.32 -8.71) rotate(52.03)" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-137" x1="16.32" y1="12.52" x2="16.32" y2="12.52" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-138" x1="16.55" y1="12.62" x2="16.81" y2="12.62" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-139" x1="13.81" y1="10.46" x2="14.05" y2="10.46" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-140" x1="16.63" y1="12.48" x2="16.69" y2="12.48" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-141" x1="13.8" y1="10.5" x2="14.16" y2="10.5" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-142" x1="16.44" y1="12.58" x2="16.76" y2="12.58" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-143" x1="13.79" y1="10.54" x2="13.94" y2="10.54" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-144" x1="14.02" y1="11.58" x2="16.45" y2="11.58" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-145" x1="13.94" y1="10.64" x2="14.15" y2="10.64" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-146" x1="16.32" y1="12.52" x2="16.57" y2="12.52" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-147" x1="18.35" y1="13.31" x2="18.48" y2="13.31" gradientTransform="translate(9.28 -7.49) rotate(30.44)" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-148" x1="13.94" y1="10.58" x2="14.03" y2="10.58" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-149" x1="13.91" y1="10.64" x2="13.95" y2="10.64" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-150" x1="13.91" y1="10.62" x2="13.94" y2="10.62" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-151" x1="18.44" y1="11.51" x2="18.65" y2="11.51" gradientTransform="translate(0.83 -1.24) rotate(3.9)" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-152" x1="14.28" y1="11.29" x2="16.58" y2="11.29" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-153" x1="16.58" y1="12.37" x2="16.75" y2="12.37" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-154" x1="14.16" y1="9.84" x2="16.53" y2="9.84" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-155" x1="14.16" y1="10.27" x2="14.9" y2="10.27" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-156" x1="14.15" y1="11.51" x2="16.58" y2="11.51" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-157" x1="14.03" y1="10.57" x2="14.28" y2="10.57" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-158" x1="16.45" y1="12.45" x2="16.69" y2="12.45" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-159" x1="15.95" y1="11.26" x2="16.07" y2="11.26" gradientTransform="translate(7.82 -6.52) rotate(30.16)" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-160" x1="16.57" y1="12.51" x2="16.63" y2="12.51" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-161" x1="17" y1="11.85" x2="17.91" y2="11.85" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-162" x1="16.79" y1="10.06" x2="16.92" y2="10.06" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-163" x1="16.51" y1="8.92" x2="16.66" y2="8.92" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-164" x1="17" y1="11.78" x2="19.23" y2="11.78" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-165" x1="17.01" y1="11.64" x2="19.17" y2="11.64" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-166" x1="17.01" y1="11.71" x2="19.23" y2="11.71" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-167" x1="16.51" y1="8.91" x2="16.69" y2="8.91" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-168" x1="19.36" y1="11.05" x2="19.37" y2="11.05" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-169" x1="19.23" y1="11.11" x2="19.28" y2="11.11" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-170" x1="19.37" y1="11.04" x2="19.37" y2="11.04" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-171" x1="19.23" y1="11.09" x2="19.28" y2="11.09" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-172" x1="16.81" y1="12.49" x2="17.02" y2="12.49" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-173" x1="16.52" y1="9.05" x2="16.75" y2="9.05" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-174" x1="16.75" y1="12.35" x2="17.01" y2="12.35" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-175" x1="16.75" y1="12.41" x2="17.02" y2="12.41" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-176" x1="16.51" y1="9" x2="16.75" y2="9" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-177" x1="18.67" y1="13.3" x2="18.72" y2="13.3" gradientTransform="translate(9.32 -7.64) rotate(30.44)" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-178" x1="16.75" y1="12.54" x2="16.81" y2="12.54" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-179" x1="16.53" y1="10.73" x2="16.87" y2="10.73" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-180" x1="16.74" y1="12.31" x2="16.88" y2="12.31" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-181" x1="16.52" y1="9.15" x2="16.66" y2="9.15" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-182" x1="17.91" y1="11.25" x2="19.06" y2="11.25" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-183" x1="16.79" y1="9.09" x2="16.86" y2="9.09" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-184" x1="16.92" y1="11.57" x2="17" y2="11.57" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-185" x1="17" y1="11.59" x2="19.17" y2="11.59" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-186" x1="16.79" y1="9.06" x2="16.86" y2="9.06" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-187" x1="16.66" y1="10.65" x2="17" y2="10.65" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-188" x1="16.65" y1="9.08" x2="16.79" y2="9.08" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-189" x1="16.87" y1="12.23" x2="17.01" y2="12.23" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-190" x1="17.71" y1="8.14" x2="19.23" y2="8.14" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-191" x1="17.12" y1="9.81" x2="19.23" y2="9.81" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-192" x1="16.92" y1="8.06" x2="19.22" y2="8.06" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-193" x1="17.01" y1="8.19" x2="19.23" y2="8.19" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-194" x1="19.37" y1="7.49" x2="19.46" y2="7.49" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-195" x1="16.69" y1="8.12" x2="19.23" y2="8.12" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-196" x1="19.28" y1="11.07" x2="19.36" y2="11.07" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-197" x1="21.13" y1="8.09" x2="21.25" y2="8.09" gradientTransform="translate(11.93 -12.62) rotate(45)" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-198" x1="19.22" y1="7.39" x2="19.36" y2="7.39" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-199" x1="19.36" y1="7.41" x2="19.43" y2="7.41" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-200" x1="16.86" y1="9.99" x2="19.13" y2="9.99" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-201" x1="16.78" y1="8.9" x2="17.01" y2="8.9" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-202" x1="21.08" y1="11.72" x2="21.14" y2="11.72" gradientTransform="translate(8.84 -9.07) rotate(30.41)" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-203" x1="19.17" y1="11.01" x2="19.23" y2="11.01" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-204" x1="16.64" y1="8.85" x2="17.01" y2="8.85" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-205" x1="19.28" y1="11.07" x2="19.37" y2="11.07" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-206" x1="19.23" y1="11.03" x2="19.37" y2="11.03" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-207" x1="18.66" y1="9.71" x2="18.7" y2="9.71" gradientTransform="translate(7.42 -8.08) rotate(30.21)" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-208" x1="16.64" y1="8.89" x2="16.78" y2="8.89" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-209" x1="16.86" y1="9.95" x2="19.18" y2="9.95" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-210" x1="16.78" y1="8.99" x2="16.99" y2="8.99" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-211" x1="19.06" y1="10.92" x2="19.23" y2="10.92" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-212" x1="16.75" y1="8.98" x2="16.79" y2="8.98" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-213" x1="17.12" y1="8.75" x2="17.71" y2="8.75" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-214" x1="17.01" y1="8.23" x2="19.23" y2="8.23" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-215" x1="16.99" y1="9.85" x2="19.23" y2="9.85" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-216" x1="16.88" y1="8.91" x2="17.12" y2="8.91" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-217" x1="16.99" y1="9.92" x2="19.23" y2="9.92" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-218" x1="19.18" y1="10.84" x2="19.23" y2="10.84" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-219" x1="16.88" y1="8.95" x2="16.99" y2="8.95" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-220" x1="19.47" y1="8.22" x2="22.06" y2="8.22" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-221" x1="19.46" y1="8.22" x2="22.34" y2="8.22" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-222" x1="21.28" y1="11.81" x2="21.36" y2="11.81" gradientTransform="translate(21.31 -12.57) rotate(60.99)" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-224" x1="19.23" y1="7.57" x2="19.5" y2="7.57" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-225" x1="19.23" y1="7.5" x2="19.36" y2="7.5" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-226" x1="19.36" y1="7.49" x2="19.47" y2="7.49" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-227" x1="19.23" y1="7.43" x2="19.36" y2="7.43" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-228" x1="19.36" y1="7.46" x2="19.37" y2="7.46" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-229" x1="19.36" y1="11.04" x2="19.37" y2="11.04" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-230" x1="19.23" y1="10.88" x2="19.25" y2="10.88" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-231" x1="19.23" y1="10.9" x2="19.23" y2="10.9" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-232" x1="19.23" y1="10.9" x2="19.25" y2="10.9" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-233" x1="19.23" y1="9.17" x2="19.37" y2="9.17" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-234" x1="19.23" y1="7.6" x2="19.37" y2="7.6" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-235" x1="19.23" y1="10.7" x2="19.37" y2="10.7" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-236" x1="19.25" y1="10.79" x2="19.37" y2="10.79" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-237" x1="19.23" y1="10.79" x2="19.25" y2="10.79" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-238" x1="19.23" y1="10.84" x2="19.32" y2="10.84" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-239" x1="19.25" y1="10.89" x2="19.27" y2="10.89" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-240" x1="19.5" y1="9.21" x2="21.93" y2="9.21" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-241" x1="19.5" y1="8.32" x2="22.01" y2="8.32" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-242" x1="19.37" y1="9.19" x2="19.5" y2="9.19" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-243" x1="19.37" y1="7.66" x2="19.5" y2="7.66" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-244" x1="19.37" y1="10.74" x2="19.43" y2="10.74" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-245" x1="19.37" y1="10.77" x2="19.43" y2="10.77" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-246" x1="19.7" y1="11.31" x2="21.13" y2="11.31" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-247" x1="21.48" y1="12.46" x2="24.07" y2="12.46" gradientTransform="translate(22.63 -13.5) rotate(61.01)" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-248" x1="22.21" y1="9.02" x2="22.22" y2="9.02" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-249" x1="22.43" y1="8.99" x2="22.49" y2="8.99" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-250" x1="22.17" y1="12.67" x2="22.42" y2="12.67" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-251" x1="19.5" y1="11.79" x2="22.16" y2="11.79" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-252" x1="19.45" y1="11.09" x2="19.5" y2="11.09" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-253" x1="19.23" y1="10.97" x2="19.23" y2="10.97" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-254" x1="19.23" y1="10.97" x2="19.23" y2="10.97" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-255" x1="19.23" y1="11" x2="19.36" y2="11" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-256" x1="19.19" y1="10.94" x2="19.23" y2="10.94" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-257" x1="19.56" y1="9.92" x2="22.07" y2="9.92" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-258" x1="22.01" y1="8.95" x2="22.22" y2="8.95" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-259" x1="21.42" y1="11.72" x2="21.48" y2="11.72" gradientTransform="translate(21.31 -12.72) rotate(61.02)" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-260" x1="21.45" y1="11.59" x2="21.47" y2="11.59" gradientTransform="translate(10.83 -10.37) rotate(35.79)" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-261" x1="22.06" y1="8.89" x2="22.22" y2="8.89" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-262" x1="19.5" y1="11.01" x2="19.57" y2="11.01" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-263" x1="19.37" y1="11.03" x2="19.5" y2="11.03" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-264" x1="19.5" y1="10.87" x2="19.54" y2="10.87" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-265" x1="21.41" y1="11.7" x2="21.42" y2="11.7" gradientTransform="translate(21.24 -12.7) rotate(60.95)" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-266" x1="19.5" y1="10.96" x2="19.5" y2="10.96" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-267" x1="19.5" y1="10.96" x2="19.5" y2="10.96" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-268" x1="19.37" y1="11" x2="19.5" y2="11" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-269" x1="19.23" y1="10.97" x2="19.23" y2="10.97" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-270" x1="21.41" y1="11.62" x2="21.41" y2="11.62" gradientTransform="translate(10.42 -10.12) rotate(34.7)" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-271" x1="21.14" y1="11.71" x2="21.14" y2="11.71" gradientTransform="matrix(0.48, 0.88, -0.88, 0.48, 21.29, -12.46)" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-272" x1="19.23" y1="10.93" x2="19.37" y2="10.93" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-273" x1="19.37" y1="10.92" x2="19.5" y2="10.92" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-274" x1="19.44" y1="10.91" x2="19.5" y2="10.91" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-275" x1="19.23" y1="10.96" x2="19.5" y2="10.96" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-276" x1="21.14" y1="11.68" x2="21.14" y2="11.68" gradientTransform="translate(8.17 -8.7) rotate(28.61)" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-277" x1="19.23" y1="10.93" x2="19.37" y2="10.93" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-278" x1="19.32" y1="10.85" x2="19.37" y2="10.85" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-279" x1="19.37" y1="10.89" x2="19.37" y2="10.89" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-280" x1="19.27" y1="10.87" x2="19.37" y2="10.87" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-281" x1="19.25" y1="10.91" x2="19.37" y2="10.91" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-282" x1="19.5" y1="9.9" x2="22.01" y2="9.9" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-283" x1="21.93" y1="8.96" x2="22.08" y2="8.96" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-284" x1="19.5" y1="10.83" x2="19.56" y2="10.83" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-285" x1="19.5" y1="10.85" x2="19.54" y2="10.85" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-286" x1="19.43" y1="10.76" x2="19.5" y2="10.76" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-287" x1="19.44" y1="10.8" x2="19.5" y2="10.8" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-288" x1="19.43" y1="10.77" x2="19.44" y2="10.77" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-289" x1="19.37" y1="10.83" x2="19.5" y2="10.83" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-290" x1="19.37" y1="10.91" x2="19.5" y2="10.91" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-291" x1="19.69" y1="10.04" x2="22.22" y2="10.04" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-292" x1="21.13" y1="11.99" x2="22.16" y2="11.99" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-293" x1="19.57" y1="11.67" x2="22.16" y2="11.67" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-294" x1="22.14" y1="9.07" x2="22.22" y2="9.07" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-295" x1="19.56" y1="9.97" x2="22.14" y2="9.97" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-296" x1="22.07" y1="9.03" x2="22.21" y2="9.03" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-297" x1="19.5" y1="10.92" x2="19.69" y2="10.92" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-298" x1="19.5" y1="10.91" x2="19.61" y2="10.91" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-299" x1="19.5" y1="10.92" x2="19.5" y2="10.92" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-300" x1="19.5" y1="10.88" x2="19.5" y2="10.88" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-301" x1="19.44" y1="10.92" x2="19.5" y2="10.92" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-302" x1="22.43" y1="10.85" x2="22.49" y2="10.85" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-303" x1="22.15" y1="12.59" x2="22.16" y2="12.59" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-304" x1="22.49" y1="9.68" x2="24.59" y2="9.68" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-305" x1="22.49" y1="9.61" x2="24.72" y2="9.61" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-306" x1="22.15" y1="12.59" x2="22.17" y2="12.59" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-307" x1="22.33" y1="8.95" x2="22.43" y2="8.95" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-308" x1="24.14" y1="9.64" x2="24.25" y2="9.64" gradientTransform="translate(21.57 -16.27) rotate(62.51)" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-309" x1="22.16" y1="11.64" x2="22.18" y2="11.64" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-310" x1="22.16" y1="12.47" x2="22.3" y2="12.47" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-311" x1="22.22" y1="9.07" x2="22.49" y2="9.07" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-312" x1="22.26" y1="9.01" x2="22.49" y2="9.01" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-313" x1="22.15" y1="12.52" x2="22.3" y2="12.52" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-314" x1="22.22" y1="8.99" x2="22.26" y2="8.99" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-315" x1="22.22" y1="8.93" x2="22.33" y2="8.93" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-316" x1="22.16" y1="10.73" x2="22.35" y2="10.73" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-317" x1="22.16" y1="12.39" x2="22.29" y2="12.39" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-318" x1="22.22" y1="9.1" x2="22.36" y2="9.1" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-319" x1="22.49" y1="9.81" x2="24.49" y2="9.81" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-320" x1="22.49" y1="9.73" x2="24.53" y2="9.73" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-321" x1="22.29" y1="10.8" x2="22.49" y2="10.8" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-322" x1="22.29" y1="12.43" x2="22.4" y2="12.43" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-323" x1="22.35" y1="9.17" x2="22.49" y2="9.17" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-324" x1="22.65" y1="12.46" x2="22.82" y2="12.46" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-325" x1="27.02" y1="13.04" x2="27.15" y2="13.04" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-326" x1="23.32" y1="13.69" x2="24.97" y2="13.69" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-327" x1="26.7" y1="11.25" x2="27.15" y2="11.25" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-328" x1="27.02" y1="14.84" x2="27.15" y2="14.84" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-329" x1="22.55" y1="13.36" x2="25.11" y2="13.36" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-330" x1="24.72" y1="10.33" x2="25.11" y2="10.33" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-331" x1="22.42" y1="13.44" x2="25.11" y2="13.44" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-332" x1="22.2" y1="12.67" x2="22.42" y2="12.67" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-333" x1="24.34" y1="12.11" x2="26.34" y2="12.11" gradientTransform="translate(16.13 -14.42) rotate(45.31)" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-334" x1="22.43" y1="12.38" x2="22.43" y2="12.38" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-335" x1="26.44" y1="11.03" x2="26.76" y2="11.03" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-336" x1="22.43" y1="12.62" x2="22.55" y2="12.62" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-337" x1="24.59" y1="10.25" x2="24.88" y2="10.25" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-338" x1="22.42" y1="12.67" x2="22.55" y2="12.67" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-339" x1="24.21" y1="13.29" x2="24.34" y2="13.29" gradientTransform="translate(24.13 -14.39) rotate(61.01)" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-340" x1="22.2" y1="12.62" x2="22.43" y2="12.62" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-341" x1="22.43" y1="11.39" x2="24.62" y2="11.39" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-342" x1="24.49" y1="10.31" x2="24.66" y2="10.31" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-343" x1="22.43" y1="12.5" x2="22.53" y2="12.5" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-344" x1="22.4" y1="12.41" x2="22.43" y2="12.41" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-345" x1="22.3" y1="12.5" x2="22.43" y2="12.5" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-346" x1="24.56" y1="12.91" x2="27.02" y2="12.91" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-347" x1="26.66" y1="11.24" x2="27.02" y2="11.24" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-348" x1="24.46" y1="14.05" x2="27.02" y2="14.05" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-349" x1="22.53" y1="11.46" x2="24.75" y2="11.46" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-350" x1="26.53" y1="11.12" x2="26.7" y2="11.12" xlink:href="#Degradado_sin_nombre_12"/><linearGradient id="Degradado_sin_nombre_12-351" x1="22.43" y1="12.57" x2="22.65" y2="12.57" xlink:href="#Degradado_sin_nombre_12"/></defs><path d="M12.75,4.33,10,2.72,5.17,5.43V8.71l-3,1.57v9l13.36,7.62L28.81,19.2v-12L18.39,1.06Zm14.4,6.84v7.08L15.54,25,3.85,18.3v-7l3-1.58V6.4L10,4.64l2.79,1.61L18.39,3l8.76,5.15Z" transform="translate(-1.91 -0.74)" style="fill:url(#Degradado_sin_nombre_12)"/><path d="M18.39.74,12.75,4,10,2.41,4.89,5.27V8.54l-3,1.58v9.3L15.55,27.2l13.54-7.84V7ZM29,19.28,15.54,27,2.05,19.34V10.2L5,8.63V5.35l5-2.79,2.77,1.62L18.39.9,29,7.1Z" transform="translate(-1.91 -0.74)" style="fill:url(#Degradado_sin_nombre_12-2)"/><path d="M12.75,4.18,10,2.56,5,5.35V8.63l-3,1.57v9.14L15.54,27,29,19.28V7.1L18.39.9Zm16.06,15L15.54,26.88,2.18,19.26v-9l3-1.57V5.43L10,2.72l2.77,1.61,5.64-3.27L28.81,7.18Z" transform="translate(-1.91 -0.74)" style="fill:url(#Degradado_sin_nombre_12-3)"/><polygon points="10.84 5.51 8.05 3.9 4.92 5.66 4.92 8.97 1.93 10.55 1.93 17.56 13.63 24.23 25.24 17.51 25.24 14.3 25.11 14.22 25.11 17.27 25.18 17.31 25.11 17.43 25.11 17.43 25.11 17.43 25.04 17.55 24.97 17.51 13.63 24.07 8.01 20.87 7.98 20.89 7.95 20.83 2.07 17.48 2.07 10.63 5.05 9.05 5.05 5.74 8.05 4.05 10.84 5.67 16.48 2.4 19.39 4.11 19.53 4.11 19.53 4.19 25.11 7.46 25.11 10.37 25.24 10.43 25.24 7.39 16.48 2.24 10.84 5.51" style="fill:url(#Degradado_sin_nombre_12-4)"/><polygon points="16.92 8.72 16.66 8.87 16.69 8.86 16.92 8.72" style="fill:url(#Degradado_sin_nombre_12-5)"/><polygon points="16.51 8.96 15.03 9.82 16.51 8.96 16.51 8.96" style="fill:url(#Degradado_sin_nombre_12-6)"/><polygon points="7.88 20.63 2.21 17.4 2.21 10.71 5.19 9.13 5.19 5.82 8.05 4.21 10.84 5.83 16.47 2.56 19.25 4.19 19.25 4.11 19.39 4.11 19.39 4.11 19.39 4.11 19.39 4.11 16.48 2.4 10.84 5.67 8.05 4.05 5.05 5.74 5.05 9.05 2.07 10.63 2.07 17.48 7.95 20.83 7.84 20.65 7.88 20.63" style="fill:url(#Degradado_sin_nombre_12-7)"/><polygon points="22.17 12.6 22.16 12.59 23.32 13.23 22.42 12.74 22.42 12.74 22.17 12.6" style="fill:url(#Degradado_sin_nombre_12-8)"/><polygon points="11.07 15.92 10.88 16.03 13.85 14.29 13.85 14.29 11.07 15.92" style="fill:url(#Degradado_sin_nombre_12-9)"/><rect x="12.54" y="9.82" height="2.89" style="fill:url(#Degradado_sin_nombre_12-10)"/><polygon points="24.97 7.54 24.97 10.24 19.5 7.38 19.49 7.47 19.43 7.47 19.46 7.51 22.34 8.92 22.34 8.93 22.43 8.98 22.49 9.01 22.49 9.01 24.72 10.2 25.11 10.37 25.11 7.46 19.53 4.19 19.53 4.35 24.97 7.54" style="fill:url(#Degradado_sin_nombre_12-11)"/><polygon points="25.11 17.43 25.11 17.43 25.11 17.43 25.11 17.43" style="fill:url(#Degradado_sin_nombre_12-12)"/><rect x="19.31" y="11.85" width="3.03" style="fill:url(#Degradado_sin_nombre_12-13)"/><polygon points="24.97 17.19 25.11 17.27 25.11 14.22 24.97 14.15 24.97 17.19" style="fill:url(#Degradado_sin_nombre_12-14)"/><polygon points="25.11 17.43 25.11 17.43 25.11 17.43 25.11 17.43" style="fill:url(#Degradado_sin_nombre_12-15)"/><polygon points="13.63 23.91 8.15 20.79 8.01 20.87 13.63 24.07 24.97 17.51 24.84 17.43 13.63 23.91" style="fill:url(#Degradado_sin_nombre_12-16)"/><rect x="8.91" y="7.9" width="3.46" height="3.77" transform="translate(-4.02 15.88) rotate(-70.79)" style="fill:url(#Degradado_sin_nombre_12-17)"/><polygon points="19.32 14.18 19.46 13.95 19.53 13.99 19.5 11.12 19.37 11.04 19.36 11.05 19.28 11.1 19.28 11.1 19.23 11.12 19.25 13.99 7.88 20.63 8.15 20.79 19.39 14.22 19.32 14.18" style="fill:url(#Degradado_sin_nombre_12-18)"/><polygon points="7.98 20.89 8.01 20.87 7.95 20.83 7.98 20.89" style="fill:url(#Degradado_sin_nombre_12-19)"/><polygon points="19.45 11.09 19.45 11.09 19.37 11.04 19.37 11.04 19.5 11.12 19.5 11.12 19.45 11.09" style="fill:url(#Degradado_sin_nombre_12-20)"/><polygon points="7.88 20.63 7.84 20.65 7.95 20.83 8.01 20.87 8.15 20.79 7.88 20.63" style="fill:url(#Degradado_sin_nombre_12-21)"/><polygon points="19.53 14.14 19.53 14.15 24.97 17.35 24.97 17.19 19.53 13.99 19.53 14.14" style="fill:url(#Degradado_sin_nombre_12-22)"/><polygon points="19.39 14.22 24.84 17.43 24.97 17.35 24.97 17.35 19.53 14.15 19.39 14.22" style="fill:url(#Degradado_sin_nombre_12-23)"/><polygon points="25.04 17.55 25.11 17.43 24.97 17.51 25.04 17.55" style="fill:url(#Degradado_sin_nombre_12-24)"/><polygon points="25.18 17.31 25.11 17.27 25.11 17.43 25.18 17.31" style="fill:url(#Degradado_sin_nombre_12-25)"/><polygon points="24.97 17.35 25.11 17.43 25.11 17.43 25.11 17.27 24.97 17.19 24.97 17.35" style="fill:url(#Degradado_sin_nombre_12-26)"/><polygon points="24.97 17.35 24.97 17.35 24.84 17.43 24.97 17.51 25.11 17.43 25.11 17.43 24.97 17.35" style="fill:url(#Degradado_sin_nombre_12-27)"/><polygon points="19.32 14.18 19.39 14.22 19.53 14.15 19.39 14.07 19.53 14.15 19.53 14.14 19.53 13.99 19.46 13.95 19.32 14.18" style="fill:url(#Degradado_sin_nombre_12-28)"/><polygon points="19.34 7.32 19.34 7.32 19.35 7.31 19.36 7.31 19.39 4.27 19.25 4.19 19.22 7.39 19.34 7.32" style="fill:url(#Degradado_sin_nombre_12-29)"/><polygon points="19.5 7.38 19.53 4.35 19.39 4.27 19.36 7.31 19.5 7.38" style="fill:url(#Degradado_sin_nombre_12-30)"/><polygon points="19.53 4.11 19.39 4.11 19.53 4.19 19.53 4.11" style="fill:url(#Degradado_sin_nombre_12-31)"/><polygon points="19.39 4.11 19.25 4.11 19.25 4.19 19.39 4.27 19.39 4.11" style="fill:url(#Degradado_sin_nombre_12-32)"/><polygon points="19.39 4.27 19.53 4.35 19.53 4.19 19.39 4.11 19.39 4.11 19.39 4.27" style="fill:url(#Degradado_sin_nombre_12-33)"/><polygon points="19.36 7.34 19.43 7.47 19.49 7.47 19.5 7.38 19.36 7.31 19.36 7.34" style="fill:url(#Degradado_sin_nombre_12-34)"/><polygon points="19.36 7.31 19.35 7.31 19.34 7.32 19.36 7.34 19.36 7.31" style="fill:url(#Degradado_sin_nombre_12-35)"/><polygon points="10.93 12.52 8.12 14.15 10.93 12.52 10.93 12.52" style="fill:url(#Degradado_sin_nombre_12-36)"/><polygon points="11.03 15.63 11.03 15.63 10.88 15.72 11.03 15.63" style="fill:url(#Degradado_sin_nombre_12-37)"/><polygon points="10.92 12.21 7.57 14.15 10.92 12.21 10.92 12.21" style="fill:url(#Degradado_sin_nombre_12-38)"/><polygon points="10.93 12.36 7.84 14.15 10.93 12.36 10.93 12.36" style="fill:url(#Degradado_sin_nombre_12-39)"/><polygon points="11.04 15.94 11.03 15.79 10.88 15.88 7.84 14.15 10.93 12.36 10.92 12.21 7.57 14.15 10.88 16.03 11.07 15.92 11.04 15.94" style="fill:url(#Degradado_sin_nombre_12-40)"/><polygon points="11.03 15.63 11.03 15.63 11.01 15.1 11.03 15.63" style="fill:url(#Degradado_sin_nombre_12-41)"/><polygon points="11.03 15.63 11.03 15.63 11.03 15.63 10.88 15.72 8.12 14.15 10.93 12.52 10.93 12.36 7.84 14.15 10.88 15.88 11.03 15.79 11.03 15.63" style="fill:url(#Degradado_sin_nombre_12-42)"/><polygon points="10.88 15.88 11.03 15.79 11.03 15.79 10.88 15.88" style="fill:url(#Degradado_sin_nombre_12-43)"/><polygon points="13.6 14.12 13.6 14.12 11.33 15.45 13.6 14.12" style="fill:url(#Degradado_sin_nombre_12-44)"/><polygon points="11.2 12.36 11.23 12.34 11.2 12.36 11.2 12.36" style="fill:url(#Degradado_sin_nombre_12-45)"/><polygon points="11.29 15.47 11.29 15.26 11.29 15.47 11.29 15.47" style="fill:url(#Degradado_sin_nombre_12-46)"/><polygon points="11.19 12.05 11.29 11.99 11.29 11.99 10.92 12.21 10.92 12.21 11.19 12.05 11.19 12.05" style="fill:url(#Degradado_sin_nombre_12-47)"/><polygon points="12.82 14.74 13.72 14.21 13.72 14.21 12.82 14.74" style="fill:url(#Degradado_sin_nombre_12-48)"/><rect x="13.09" y="12.76" width="0.11" transform="translate(-6.54 7.59) rotate(-30.16)" style="fill:url(#Degradado_sin_nombre_12-49)"/><polygon points="13.84 14.3 13.72 14.21 12.82 14.74 11.3 15.63 11.3 15.78 11.07 15.92 13.85 14.29 13.85 14.29 13.84 14.3" style="fill:url(#Degradado_sin_nombre_12-50)"/><polygon points="11.01 15.1 10.93 12.52 10.93 12.52 11.01 15.1" style="fill:url(#Degradado_sin_nombre_12-51)"/><rect x="10.93" y="12.52" style="fill:url(#Degradado_sin_nombre_12-52)"/><rect x="11.06" y="11.97" height="0.31" style="fill:url(#Degradado_sin_nombre_12-53)"/><polygon points="11.06 12.28 11.15 12.23 11.15 12.23 10.93 12.36 10.93 12.36 11.06 12.28" style="fill:url(#Degradado_sin_nombre_12-54)"/><polygon points="11.03 12.14 11.19 12.05 11.19 12.05 10.92 12.21 10.93 12.36 11.15 12.23 11.03 12.14" style="fill:url(#Degradado_sin_nombre_12-55)"/><polygon points="11.3 15.63 11.16 15.71 11.03 15.79 11.04 15.94 11.07 15.92 11.3 15.78 11.3 15.63" style="fill:url(#Degradado_sin_nombre_12-56)"/><polygon points="11.06 12.44 10.93 12.52 11.01 15.1 11.03 15.63 11.16 15.55 11.06 12.44" style="fill:url(#Degradado_sin_nombre_12-57)"/><polygon points="10.93 12.52 11.06 12.44 11.06 12.28 10.93 12.36 10.93 12.52 10.93 12.52 10.93 12.52" style="fill:url(#Degradado_sin_nombre_12-58)"/><polygon points="11.03 15.63 11.03 15.79 11.16 15.71 11.16 15.55 11.03 15.63" style="fill:url(#Degradado_sin_nombre_12-59)"/><rect x="12.93" y="16.49" width="0.16" transform="translate(-8.47 8.13) rotate(-30.45)" style="fill:url(#Degradado_sin_nombre_12-60)"/><polygon points="11.29 15.47 11.33 15.45 11.29 15.47 11.29 15.47" style="fill:url(#Degradado_sin_nombre_12-61)"/><polygon points="11.23 12.34 11.26 12.33 13.6 14.12 13.6 14.12 11.26 12.32 11.23 12.34" style="fill:url(#Degradado_sin_nombre_12-62)"/><polygon points="11.2 12.36 11.2 12.36 11.29 15.26 11.2 12.36" style="fill:url(#Degradado_sin_nombre_12-63)"/><polygon points="11.2 12.36 11.23 12.34 11.26 12.32 11.2 12.27 11.2 12.36 11.2 12.36 11.2 12.36" style="fill:url(#Degradado_sin_nombre_12-64)"/><polygon points="13.6 14.12 13.6 14.12 13.6 14.12 11.33 15.45 11.29 15.47 11.3 15.63 12.82 14.74 13.72 14.21 13.6 14.12" style="fill:url(#Degradado_sin_nombre_12-65)"/><polygon points="11.3 15.63 12.82 14.74 11.3 15.63 11.3 15.63" style="fill:url(#Degradado_sin_nombre_12-66)"/><polygon points="11.29 15.47 11.29 15.26 11.2 12.36 11.06 12.44 11.16 15.55 11.29 15.47 11.29 15.47 11.29 15.47" style="fill:url(#Degradado_sin_nombre_12-67)"/><polygon points="11.29 15.47 11.16 15.55 11.16 15.71 11.3 15.63 11.29 15.47" style="fill:url(#Degradado_sin_nombre_12-68)"/><polygon points="11.2 12.36 11.2 12.27 11.15 12.23 11.06 12.28 11.06 12.44 11.2 12.36" style="fill:url(#Degradado_sin_nombre_12-69)"/><rect x="11.23" y="15.59" height="0.16" style="fill:url(#Degradado_sin_nombre_12-70)"/><polygon points="11.52 12.18 11.52 12.18 13.48 11.04 11.52 12.18" style="fill:url(#Degradado_sin_nombre_12-71)"/><polygon points="12.21 11.62 11.4 12.09 11.4 12.09 12.21 11.62" style="fill:url(#Degradado_sin_nombre_12-72)"/><polygon points="12.21 11.62 13.68 10.76 13.67 10.61 13.79 10.54 13.79 10.54 11.29 11.99 11.4 12.09 12.21 11.62" style="fill:url(#Degradado_sin_nombre_12-73)"/><rect x="14.47" y="12.41" height="2.95" transform="translate(-5.56 4.55) rotate(-18.43)" style="fill:url(#Degradado_sin_nombre_12-74)"/><polygon points="11.27 12.16 11.4 12.09 11.4 12.09 11.2 12.21 11.2 12.21 11.27 12.16" style="fill:url(#Degradado_sin_nombre_12-75)"/><polygon points="11.39 12.25 11.39 12.25 11.27 12.16 11.33 12.21 11.39 12.25" style="fill:url(#Degradado_sin_nombre_12-76)"/><rect x="15.69" y="14.75" height="0.14" transform="translate(-7.53 17.55) rotate(-52.61)" style="fill:url(#Degradado_sin_nombre_12-77)"/><rect x="15.62" y="14.91" width="0.14" transform="translate(-7.86 14.72) rotate(-45)" style="fill:url(#Degradado_sin_nombre_12-78)"/><polygon points="13.84 14.3 13.85 14.29 13.84 14.13 13.72 14.21 13.84 14.3" style="fill:url(#Degradado_sin_nombre_12-79)"/><polygon points="11.4 12.09 11.29 11.99 11.19 12.05 11.2 12.21 11.4 12.09" style="fill:url(#Degradado_sin_nombre_12-80)"/><rect x="13.05" y="12.96" width="0.06" transform="translate(-6.66 7.6) rotate(-30.2)" style="fill:url(#Degradado_sin_nombre_12-81)"/><polygon points="11.15 12.23 11.2 12.21 11.19 12.05 11.03 12.14 11.15 12.23" style="fill:url(#Degradado_sin_nombre_12-82)"/><polygon points="11.39 12.25 11.26 12.32 13.6 14.12 13.73 14.04 11.39 12.25" style="fill:url(#Degradado_sin_nombre_12-83)"/><polygon points="11.39 12.25 11.33 12.21 11.27 12.16 11.2 12.21 11.2 12.27 11.26 12.32 11.39 12.25" style="fill:url(#Degradado_sin_nombre_12-84)"/><polygon points="13.73 14.04 13.6 14.12 13.72 14.21 13.84 14.13 13.84 14.13 13.73 14.04" style="fill:url(#Degradado_sin_nombre_12-85)"/><polygon points="11.2 12.21 11.15 12.23 11.2 12.27 11.2 12.21" style="fill:url(#Degradado_sin_nombre_12-86)"/><polygon points="13.69 10.92 13.48 11.04 13.69 10.92 13.83 13.95 11.52 12.18 11.52 12.18 13.83 13.95 13.69 10.92" style="fill:url(#Degradado_sin_nombre_12-87)"/><polygon points="11.41 12.1 11.52 12.18 11.52 12.18 11.52 12.18 13.48 11.04 13.69 10.92 13.68 10.76 12.21 11.62 11.4 12.09 11.41 12.1" style="fill:url(#Degradado_sin_nombre_12-88)"/><polygon points="13.68 10.76 12.21 11.62 13.68 10.76 13.68 10.76" style="fill:url(#Degradado_sin_nombre_12-89)"/><polygon points="11.52 12.18 11.39 12.25 13.73 14.04 13.83 13.98 13.83 13.95 11.52 12.18" style="fill:url(#Degradado_sin_nombre_12-90)"/><polygon points="13.84 14.13 13.83 13.98 13.73 14.04 13.84 14.13" style="fill:url(#Degradado_sin_nombre_12-91)"/><polygon points="11.52 12.18 11.41 12.1 11.4 12.09 11.27 12.16 11.39 12.25 11.52 12.18" style="fill:url(#Degradado_sin_nombre_12-92)"/><rect x="13.92" y="13.17" width="2.58" style="fill:url(#Degradado_sin_nombre_12-93)"/><polygon points="14.07 13.25 13.95 10.76 13.95 10.76 14.07 13.25" style="fill:url(#Degradado_sin_nombre_12-94)"/><rect x="13.63" y="13.49" width="3.14" style="fill:url(#Degradado_sin_nombre_12-95)"/><polygon points="16.81 12.55 16.81 12.55 16.69 12.62 16.81 12.55" style="fill:url(#Degradado_sin_nombre_12-96)"/><polygon points="14.04 10.39 14.03 10.4 14.04 10.39 14.04 10.39" style="fill:url(#Degradado_sin_nombre_12-97)"/><polygon points="16.44 12.61 14.11 13.98 14.11 14.13 13.98 14.21 13.85 14.29 13.85 14.29 16.55 12.7 16.44 12.61" style="fill:url(#Degradado_sin_nombre_12-98)"/><polygon points="13.85 14.29 13.98 14.21 13.85 14.29 13.85 14.29" style="fill:url(#Degradado_sin_nombre_12-99)"/><polygon points="13.91 10.63 13.79 10.54 13.67 10.61 13.68 10.76 13.81 10.69 13.91 10.63" style="fill:url(#Degradado_sin_nombre_12-100)"/><polygon points="13.97 14.06 14.09 14.15 13.98 14.21 14.11 14.13 14.11 13.98 13.97 14.06 13.97 14.06" style="fill:url(#Degradado_sin_nombre_12-101)"/><polygon points="13.85 14.13 13.84 14.13 13.84 14.13 13.85 14.13" style="fill:url(#Degradado_sin_nombre_12-102)"/><polygon points="13.84 14.13 13.84 14.13 13.96 14.07 13.85 14.13 13.84 14.13" style="fill:url(#Degradado_sin_nombre_12-103)"/><polygon points="13.97 14.06 13.96 14.07 13.84 14.13 13.85 14.29 13.98 14.21 14.09 14.15 13.97 14.06" style="fill:url(#Degradado_sin_nombre_12-104)"/><polygon points="13.84 14.13 13.85 14.13 13.84 14.13 13.84 14.13" style="fill:url(#Degradado_sin_nombre_12-105)"/><polygon points="13.69 10.92 13.83 13.95 13.86 13.97 13.96 13.9 13.82 10.84 13.69 10.92" style="fill:url(#Degradado_sin_nombre_12-106)"/><polygon points="13.86 13.97 13.97 14.06 13.97 14.06 13.96 13.9 13.86 13.97" style="fill:url(#Degradado_sin_nombre_12-107)"/><polygon points="13.81 10.69 13.68 10.76 13.69 10.92 13.82 10.84 13.81 10.69" style="fill:url(#Degradado_sin_nombre_12-108)"/><rect x="13.75" y="10.65" height="0.15" style="fill:url(#Degradado_sin_nombre_12-109)"/><rect x="15.88" y="14.8" transform="translate(-6.85 7.93) rotate(-26.57)" style="fill:url(#Degradado_sin_nombre_12-110)"/><polygon points="13.83 13.98 13.86 13.97 13.83 13.95 13.83 13.98" style="fill:url(#Degradado_sin_nombre_12-111)"/><polygon points="13.86 13.97 13.83 13.98 13.84 14.13 13.85 14.13 13.96 14.07 13.97 14.06 13.86 13.97" style="fill:url(#Degradado_sin_nombre_12-112)"/><polygon points="13.96 14.07 13.97 14.06 13.97 14.06 13.96 14.07" style="fill:url(#Degradado_sin_nombre_12-113)"/><polygon points="14.1 13.82 14.1 13.82 14.07 13.25 14.1 13.82" style="fill:url(#Degradado_sin_nombre_12-114)"/><rect x="15.86" y="11.48" width="0.08" transform="translate(-5.53 8.8) rotate(-30.15)" style="fill:url(#Degradado_sin_nombre_12-115)"/><polygon points="14.02 10.72 13.95 10.66 13.95 10.76 14.02 10.72" style="fill:url(#Degradado_sin_nombre_12-116)"/><polygon points="14.1 13.82 14.1 13.82 14.1 13.82 14.11 13.98 16.44 12.61 16.32 12.52 14.1 13.82" style="fill:url(#Degradado_sin_nombre_12-117)"/><rect x="15.27" y="11.94" height="2.71" style="fill:url(#Degradado_sin_nombre_12-118)"/><polygon points="13.95 10.76 13.95 10.76 13.95 10.76 13.82 10.84 13.96 13.9 14.1 13.82 14.07 13.25 13.95 10.76" style="fill:url(#Degradado_sin_nombre_12-119)"/><polygon points="13.96 13.9 13.97 14.06 14.11 13.98 14.1 13.82 13.96 13.9" style="fill:url(#Degradado_sin_nombre_12-120)"/><polygon points="13.95 10.76 13.95 10.66 13.91 10.63 13.81 10.69 13.82 10.84 13.95 10.76" style="fill:url(#Degradado_sin_nombre_12-121)"/><rect x="15.72" y="11.4" width="0.11" transform="translate(-5.5 8.73) rotate(-30.17)" style="fill:url(#Degradado_sin_nombre_12-122)"/><rect x="14.04" y="13.94" height="0.15" style="fill:url(#Degradado_sin_nombre_12-123)"/><rect x="16.66" y="12.23" height="0.19" style="fill:url(#Degradado_sin_nombre_12-124)"/><polygon points="16.53 9.26 14.91 10.21 16.53 9.26 16.53 9.26" style="fill:url(#Degradado_sin_nombre_12-125)"/><polygon points="14.03 10.4 13.79 10.54 13.79 10.54 13.81 10.53 14.03 10.4" style="fill:url(#Degradado_sin_nombre_12-126)"/><polygon points="16.81 12.55 17 12.43 16.81 12.55 16.81 12.55" style="fill:url(#Degradado_sin_nombre_12-127)"/><polygon points="16.55 12.7 16.69 12.62 16.55 12.7 16.55 12.7" style="fill:url(#Degradado_sin_nombre_12-128)"/><polygon points="15.03 9.82 14.04 10.39 14.04 10.39 15.03 9.82" style="fill:url(#Degradado_sin_nombre_12-129)"/><polygon points="16.52 9.11 14.9 10.05 16.52 9.11 16.52 9.11" style="fill:url(#Degradado_sin_nombre_12-130)"/><rect x="16.72" y="12.41" height="0.06" style="fill:url(#Degradado_sin_nombre_12-131)"/><polygon points="13.8 10.54 13.81 10.53 13.79 10.54 13.79 10.54 13.8 10.54" style="fill:url(#Degradado_sin_nombre_12-132)"/><polygon points="14.16 10.48 14.9 10.05 16.52 9.11 16.51 8.96 15.03 9.82 14.04 10.39 14.16 10.48" style="fill:url(#Degradado_sin_nombre_12-133)"/><polygon points="16.75 12.51 16.75 12.43 16.69 12.46 16.75 12.51" style="fill:url(#Degradado_sin_nombre_12-134)"/><polygon points="13.8 10.54 13.79 10.54 13.79 10.54 13.8 10.54" style="fill:url(#Degradado_sin_nombre_12-135)"/><rect x="17.08" y="10.9" height="2.92" transform="translate(-5.08 17.48) rotate(-52.03)" style="fill:url(#Degradado_sin_nombre_12-136)"/><rect x="16.32" y="12.52" style="fill:url(#Degradado_sin_nombre_12-137)"/><polygon points="16.76 12.58 16.76 12.58 16.55 12.7 16.55 12.7 16.69 12.62 16.81 12.55 16.81 12.55 16.76 12.58" style="fill:url(#Degradado_sin_nombre_12-138)"/><polygon points="14.04 10.39 14.04 10.39 14.03 10.4 13.81 10.53 14.04 10.39" style="fill:url(#Degradado_sin_nombre_12-139)"/><polygon points="16.63 12.5 16.69 12.46 16.69 12.46 16.63 12.5" style="fill:url(#Degradado_sin_nombre_12-140)"/><polygon points="13.95 10.61 14.03 10.56 14.16 10.48 14.04 10.39 13.81 10.53 13.8 10.54 13.94 10.46 13.95 10.61" style="fill:url(#Degradado_sin_nombre_12-141)"/><polygon points="16.69 12.46 16.63 12.5 16.57 12.53 16.44 12.61 16.55 12.7 16.76 12.58 16.75 12.51 16.69 12.46" style="fill:url(#Degradado_sin_nombre_12-142)"/><polygon points="13.91 10.63 13.95 10.61 13.94 10.46 13.8 10.54 13.79 10.54 13.91 10.63" style="fill:url(#Degradado_sin_nombre_12-143)"/><polygon points="14.02 10.72 14.02 10.72 14.02 10.72 16.32 12.52 16.45 12.44 14.15 10.65 14.02 10.72" style="fill:url(#Degradado_sin_nombre_12-144)"/><polygon points="13.95 10.66 14.02 10.72 14.15 10.65 14.03 10.56 13.95 10.61 13.95 10.66" style="fill:url(#Degradado_sin_nombre_12-145)"/><polygon points="16.32 12.52 16.32 12.52 16.32 12.52 16.44 12.61 16.57 12.53 16.45 12.44 16.32 12.52" style="fill:url(#Degradado_sin_nombre_12-146)"/><rect x="18.34" y="13.31" width="0.15" transform="translate(-6.12 10.42) rotate(-30.44)" style="fill:url(#Degradado_sin_nombre_12-147)"/><rect x="13.99" y="10.53" height="0.1" style="fill:url(#Degradado_sin_nombre_12-148)"/><polygon points="13.95 10.61 13.91 10.63 13.95 10.66 13.95 10.61" style="fill:url(#Degradado_sin_nombre_12-149)"/><rect x="13.93" y="10.6" height="0.04" style="fill:url(#Degradado_sin_nombre_12-150)"/><rect x="18.55" y="10" height="3.02" transform="translate(-2.65 0.55) rotate(-3.9)" style="fill:url(#Degradado_sin_nombre_12-151)"/><polygon points="16.58 12.37 14.28 10.57 14.91 10.21 14.28 10.57 16.58 12.37 16.58 12.37" style="fill:url(#Degradado_sin_nombre_12-152)"/><polygon points="16.74 12.27 16.74 12.27 16.58 12.37 16.58 12.37 16.58 12.37 16.69 12.46 16.75 12.43 16.74 12.27 16.74 12.27" style="fill:url(#Degradado_sin_nombre_12-153)"/><polygon points="14.28 10.57 14.91 10.21 16.53 9.26 16.53 9.26 16.53 9.26 16.52 9.11 14.9 10.05 14.16 10.48 14.28 10.57" style="fill:url(#Degradado_sin_nombre_12-154)"/><polygon points="14.9 10.05 14.16 10.48 14.16 10.48 14.9 10.05" style="fill:url(#Degradado_sin_nombre_12-155)"/><polygon points="16.45 12.44 16.58 12.37 14.28 10.57 14.15 10.65 16.45 12.44" style="fill:url(#Degradado_sin_nombre_12-156)"/><polygon points="14.28 10.57 14.16 10.48 14.03 10.56 14.15 10.65 14.28 10.57" style="fill:url(#Degradado_sin_nombre_12-157)"/><polygon points="16.58 12.37 16.45 12.44 16.57 12.53 16.63 12.5 16.69 12.46 16.58 12.37" style="fill:url(#Degradado_sin_nombre_12-158)"/><rect x="15.94" y="11.26" width="0.15" transform="translate(-5.4 8.83) rotate(-30.16)" style="fill:url(#Degradado_sin_nombre_12-159)"/><polygon points="16.57 12.53 16.63 12.5 16.57 12.53 16.57 12.53" style="fill:url(#Degradado_sin_nombre_12-160)"/><polygon points="17 12.12 17.91 11.58 17 12.12 17 12.12" style="fill:url(#Degradado_sin_nombre_12-161)"/><polygon points="16.8 9.11 16.93 11.02 16.8 9.11 16.8 9.11" style="fill:url(#Degradado_sin_nombre_12-162)"/><polygon points="16.51 8.96 16.51 8.96 16.66 8.87 16.51 8.96" style="fill:url(#Degradado_sin_nombre_12-163)"/><polygon points="17.02 12.42 17.02 12.42 17 12.43 19.23 11.12 19.23 11.12 17.02 12.42" style="fill:url(#Degradado_sin_nombre_12-164)"/><rect x="16.84" y="11.64" width="2.51" style="fill:url(#Degradado_sin_nombre_12-165)"/><polygon points="19.17 11 17.01 12.27 17.02 12.42 19.23 11.12 19.23 11.05 19.17 11" style="fill:url(#Degradado_sin_nombre_12-166)"/><polygon points="16.64 8.88 16.64 8.88 16.69 8.86 16.66 8.87 16.51 8.96 16.51 8.96 16.64 8.88" style="fill:url(#Degradado_sin_nombre_12-167)"/><polygon points="19.36 11.05 19.37 11.04 19.37 11.04 19.36 11.05" style="fill:url(#Degradado_sin_nombre_12-168)"/><rect x="19.23" y="11.11" width="0.06" style="fill:url(#Degradado_sin_nombre_12-169)"/><rect x="19.37" y="11.04" style="fill:url(#Degradado_sin_nombre_12-170)"/><polygon points="19.23 11.12 19.28 11.09 19.23 11.05 19.23 11.12" style="fill:url(#Degradado_sin_nombre_12-171)"/><polygon points="17.02 12.42 16.81 12.55 16.81 12.55 17 12.43 17.02 12.42 17.02 12.42" style="fill:url(#Degradado_sin_nombre_12-172)"/><polygon points="16.65 9.04 16.75 8.98 16.75 8.98 16.52 9.11 16.52 9.11 16.65 9.04" style="fill:url(#Degradado_sin_nombre_12-173)"/><polygon points="16.88 12.35 16.75 12.43 16.75 12.43 17.01 12.27 17.01 12.27 16.88 12.35" style="fill:url(#Degradado_sin_nombre_12-174)"/><polygon points="16.75 12.43 16.75 12.51 16.81 12.55 17.02 12.42 17.01 12.27 16.75 12.43" style="fill:url(#Degradado_sin_nombre_12-175)"/><polygon points="16.64 8.88 16.51 8.96 16.52 9.11 16.75 8.98 16.64 8.88" style="fill:url(#Degradado_sin_nombre_12-176)"/><rect x="18.67" y="13.3" width="0.06" transform="translate(-6.07 10.57) rotate(-30.44)" style="fill:url(#Degradado_sin_nombre_12-177)"/><polygon points="16.76 12.58 16.81 12.55 16.75 12.51 16.76 12.58" style="fill:url(#Degradado_sin_nombre_12-178)"/><polygon points="16.87 12.2 16.66 9.19 16.53 9.26 16.74 12.27 16.87 12.2" style="fill:url(#Degradado_sin_nombre_12-179)"/><polygon points="16.74 12.27 16.75 12.43 16.88 12.35 16.87 12.2 16.74 12.27" style="fill:url(#Degradado_sin_nombre_12-180)"/><polygon points="16.65 9.04 16.52 9.11 16.53 9.26 16.66 9.19 16.65 9.04" style="fill:url(#Degradado_sin_nombre_12-181)"/><polygon points="17.91 11.58 19.06 10.91 19.06 10.91 17.91 11.58" style="fill:url(#Degradado_sin_nombre_12-182)"/><rect x="16.83" y="9.05" height="0.08" style="fill:url(#Degradado_sin_nombre_12-183)"/><polygon points="17 12.12 17 12.12 16.93 11.02 17 12.12" style="fill:url(#Degradado_sin_nombre_12-184)"/><polygon points="17.91 11.58 17 12.12 17 12.12 17 12.12 17.01 12.27 19.17 11 19.06 10.91 17.91 11.58" style="fill:url(#Degradado_sin_nombre_12-185)"/><polygon points="16.79 9.01 16.8 9.11 16.86 9.07 16.79 9.01" style="fill:url(#Degradado_sin_nombre_12-186)"/><polygon points="16.93 11.02 16.8 9.11 16.8 9.11 16.8 9.11 16.66 9.19 16.87 12.2 17 12.12 16.93 11.02" style="fill:url(#Degradado_sin_nombre_12-187)"/><polygon points="16.8 9.11 16.79 9.01 16.75 8.98 16.65 9.04 16.66 9.19 16.8 9.11" style="fill:url(#Degradado_sin_nombre_12-188)"/><polygon points="16.87 12.2 16.88 12.35 17.01 12.27 17 12.12 16.87 12.2" style="fill:url(#Degradado_sin_nombre_12-189)"/><polygon points="19.23 7.7 17.71 8.58 19.23 7.7 19.23 7.7" style="fill:url(#Degradado_sin_nombre_12-190)"/><polygon points="17.12 8.92 17.12 8.93 19.23 10.7 19.23 10.6 17.12 8.92" style="fill:url(#Degradado_sin_nombre_12-191)"/><polygon points="19.22 7.39 16.92 8.72 19.22 7.39 19.22 7.39" style="fill:url(#Degradado_sin_nombre_12-192)"/><rect x="16.83" y="8.19" width="2.57" style="fill:url(#Degradado_sin_nombre_12-193)"/><polygon points="19.46 7.51 19.43 7.47 19.37 7.46 19.46 7.51" style="fill:url(#Degradado_sin_nombre_12-194)"/><polygon points="16.89 8.74 17 8.83 19.23 7.54 19.23 7.46 19.22 7.46 19.22 7.39 16.92 8.72 16.69 8.86 16.89 8.74" style="fill:url(#Degradado_sin_nombre_12-195)"/><polygon points="19.28 11.1 19.36 11.05 19.28 11.1 19.28 11.1" style="fill:url(#Degradado_sin_nombre_12-196)"/><rect x="21.12" y="8.09" width="0.14" transform="translate(-1.43 16.62) rotate(-45)" style="fill:url(#Degradado_sin_nombre_12-197)"/><polygon points="19.22 7.46 19.23 7.46 19.23 7.4 19.36 7.46 19.36 7.34 19.34 7.32 19.22 7.39 19.22 7.46" style="fill:url(#Degradado_sin_nombre_12-198)"/><polygon points="19.36 7.46 19.37 7.46 19.43 7.47 19.36 7.34 19.36 7.46" style="fill:url(#Degradado_sin_nombre_12-199)"/><polygon points="19.13 10.87 16.87 9.07 16.86 9.07 19.06 10.91 19.13 10.87" style="fill:url(#Degradado_sin_nombre_12-200)"/><polygon points="16.79 8.96 16.88 8.9 17.01 8.83 17 8.83 16.78 8.96 16.79 8.96" style="fill:url(#Degradado_sin_nombre_12-201)"/><rect x="21.08" y="11.72" width="0.07" transform="translate(-4.94 11.56) rotate(-30.41)" style="fill:url(#Degradado_sin_nombre_12-202)"/><polygon points="19.17 11 19.23 11.05 19.23 10.97 19.23 10.97 19.17 11" style="fill:url(#Degradado_sin_nombre_12-203)"/><polygon points="16.78 8.96 17 8.83 16.89 8.74 16.69 8.86 16.64 8.88 16.64 8.88 16.77 8.81 16.78 8.96" style="fill:url(#Degradado_sin_nombre_12-204)"/><polygon points="19.37 11.04 19.28 11.09 19.28 11.1 19.36 11.05 19.37 11.04 19.37 11.04" style="fill:url(#Degradado_sin_nombre_12-205)"/><polygon points="19.23 10.97 19.23 11.05 19.28 11.09 19.37 11.04 19.37 11.04 19.37 11.04 19.36 11.04 19.23 10.97" style="fill:url(#Degradado_sin_nombre_12-206)"/><rect x="18.66" y="9.71" width="0.04" transform="translate(-4.26 9.98) rotate(-30.21)" style="fill:url(#Degradado_sin_nombre_12-207)"/><polygon points="16.78 8.96 16.77 8.81 16.64 8.88 16.75 8.98 16.78 8.96" style="fill:url(#Degradado_sin_nombre_12-208)"/><polygon points="16.87 9.07 19.13 10.87 19.06 10.91 19.06 10.91 19.18 10.84 16.99 9 16.86 9.07 16.86 9.07 16.87 9.07" style="fill:url(#Degradado_sin_nombre_12-209)"/><polygon points="16.86 9.07 16.99 9 16.88 8.9 16.79 8.96 16.79 9.01 16.86 9.07" style="fill:url(#Degradado_sin_nombre_12-210)"/><polygon points="19.23 10.91 19.23 10.89 19.23 10.87 19.18 10.84 19.06 10.91 19.17 11 19.23 10.97 19.19 10.94 19.23 10.91" style="fill:url(#Degradado_sin_nombre_12-211)"/><polygon points="16.79 8.96 16.75 8.98 16.79 9.01 16.79 8.96" style="fill:url(#Degradado_sin_nombre_12-212)"/><polygon points="17.71 8.58 17.12 8.92 17.12 8.92 17.71 8.58" style="fill:url(#Degradado_sin_nombre_12-213)"/><polygon points="17.12 8.92 17.71 8.58 19.23 7.7 19.23 7.54 17.01 8.83 17.12 8.92" style="fill:url(#Degradado_sin_nombre_12-214)"/><polygon points="19.23 10.78 19.23 10.7 17.12 8.93 17.12 8.92 17.12 8.92 16.99 9 19.23 10.78" style="fill:url(#Degradado_sin_nombre_12-215)"/><polygon points="17.12 8.92 17.01 8.83 16.88 8.9 16.99 9 17.12 8.92" style="fill:url(#Degradado_sin_nombre_12-216)"/><polygon points="19.23 10.81 19.23 10.78 16.99 9 16.99 9 19.18 10.84 19.23 10.81" style="fill:url(#Degradado_sin_nombre_12-217)"/><polygon points="19.18 10.84 19.23 10.87 19.23 10.81 19.18 10.84" style="fill:url(#Degradado_sin_nombre_12-218)"/><polygon points="16.99 9 16.88 8.9 16.99 9 16.99 9" style="fill:url(#Degradado_sin_nombre_12-219)"/><polygon points="19.5 7.68 22.01 8.91 22.06 8.87 19.47 7.52 19.5 7.58 19.5 7.68" style="fill:url(#Degradado_sin_nombre_12-220)"/><polygon points="22.06 8.87 22.13 8.82 22.22 8.87 22.22 8.87 22.34 8.93 22.34 8.92 19.46 7.51 19.47 7.52 22.06 8.87" style="fill:url(#Degradado_sin_nombre_12-221)"/><rect x="21.32" y="11.76" height="0.1" transform="translate(-1.25 23.99) rotate(-60.99)" style="fill:url(#Degradado_sin_nombre_12-222)"/><rect x="19.37" y="11.04" style="fill:url(#Degradado_sin_nombre_12-170)"/><polygon points="19.23 7.54 19.3 7.5 19.37 7.62 19.5 7.68 19.5 7.58 19.47 7.52 19.36 7.46 19.23 7.54 19.23 7.54" style="fill:url(#Degradado_sin_nombre_12-224)"/><polygon points="19.23 7.54 19.36 7.46 19.36 7.46 19.23 7.46 19.23 7.54" style="fill:url(#Degradado_sin_nombre_12-225)"/><polygon points="19.36 7.46 19.36 7.46 19.47 7.52 19.46 7.51 19.37 7.46 19.36 7.46" style="fill:url(#Degradado_sin_nombre_12-226)"/><polygon points="19.23 7.46 19.36 7.46 19.36 7.46 19.23 7.4 19.23 7.46" style="fill:url(#Degradado_sin_nombre_12-227)"/><polygon points="19.37 7.46 19.36 7.46 19.36 7.46 19.37 7.46" style="fill:url(#Degradado_sin_nombre_12-228)"/><polygon points="19.36 11.04 19.37 11.04 19.37 11.04 19.36 11.04" style="fill:url(#Degradado_sin_nombre_12-229)"/><polygon points="19.23 10.87 19.23 10.89 19.25 10.89 19.23 10.87" style="fill:url(#Degradado_sin_nombre_12-230)"/><polygon points="19.23 10.91 19.23 10.91 19.23 10.89 19.23 10.91" style="fill:url(#Degradado_sin_nombre_12-231)"/><polygon points="19.23 10.89 19.23 10.91 19.25 10.89 19.25 10.89 19.23 10.89" style="fill:url(#Degradado_sin_nombre_12-232)"/><polygon points="19.37 10.71 19.37 7.62 19.36 7.62 19.23 7.7 19.23 10.6 19.37 10.71" style="fill:url(#Degradado_sin_nombre_12-233)"/><polygon points="19.23 7.7 19.36 7.62 19.37 7.62 19.37 7.62 19.3 7.5 19.23 7.54 19.23 7.7 19.23 7.7" style="fill:url(#Degradado_sin_nombre_12-234)"/><polygon points="19.36 10.73 19.37 10.73 19.37 10.71 19.23 10.6 19.23 10.7 19.23 10.78 19.25 10.79 19.36 10.73" style="fill:url(#Degradado_sin_nombre_12-235)"/><polygon points="19.37 10.81 19.37 10.73 19.36 10.73 19.25 10.79 19.32 10.85 19.37 10.81" style="fill:url(#Degradado_sin_nombre_12-236)"/><polygon points="19.25 10.79 19.23 10.78 19.23 10.81 19.25 10.79" style="fill:url(#Degradado_sin_nombre_12-237)"/><polygon points="19.25 10.79 19.23 10.81 19.23 10.87 19.25 10.89 19.27 10.89 19.32 10.85 19.25 10.79" style="fill:url(#Degradado_sin_nombre_12-238)"/><polygon points="19.25 10.89 19.27 10.89 19.25 10.89 19.25 10.89" style="fill:url(#Degradado_sin_nombre_12-239)"/><polygon points="21.82 8.97 19.5 10.71 19.5 10.72 21.93 8.96 19.5 7.7 19.5 7.83 21.82 8.97" style="fill:url(#Degradado_sin_nombre_12-240)"/><polygon points="21.93 8.96 22.01 8.91 19.5 7.68 19.5 7.7 21.93 8.96" style="fill:url(#Degradado_sin_nombre_12-241)"/><polygon points="19.43 10.77 19.5 10.72 19.5 10.71 19.5 7.83 19.5 7.7 19.37 7.62 19.37 10.71 19.43 10.77" style="fill:url(#Degradado_sin_nombre_12-242)"/><polygon points="19.5 7.7 19.5 7.68 19.37 7.62 19.37 7.62 19.5 7.7" style="fill:url(#Degradado_sin_nombre_12-243)"/><polygon points="19.43 10.77 19.43 10.77 19.37 10.71 19.37 10.73 19.43 10.77" style="fill:url(#Degradado_sin_nombre_12-244)"/><polygon points="19.43 10.77 19.37 10.73 19.37 10.81 19.43 10.77" style="fill:url(#Degradado_sin_nombre_12-245)"/><polygon points="19.7 10.91 21.13 11.71 19.7 10.91 19.7 10.91" style="fill:url(#Degradado_sin_nombre_12-246)"/><rect x="22.77" y="10.98" height="2.95" transform="translate(-1.07 25.6) rotate(-61.01)" style="fill:url(#Degradado_sin_nombre_12-247)"/><polygon points="22.22 9.01 22.21 9.02 22.22 9.02 22.22 9.01" style="fill:url(#Degradado_sin_nombre_12-248)"/><polygon points="22.49 9.01 22.43 8.98 22.49 9.01 22.49 9.01" style="fill:url(#Degradado_sin_nombre_12-249)"/><polygon points="22.17 12.6 22.42 12.74 22.42 12.74 22.2 12.61 22.17 12.6" style="fill:url(#Degradado_sin_nombre_12-250)"/><polygon points="19.5 11.05 19.5 11.12 22.15 12.59 22.16 12.43 19.57 11 19.5 11.05" style="fill:url(#Degradado_sin_nombre_12-251)"/><polygon points="19.45 11.09 19.5 11.12 19.5 11.05 19.45 11.09" style="fill:url(#Degradado_sin_nombre_12-252)"/><rect x="19.23" y="10.97" style="fill:url(#Degradado_sin_nombre_12-253)"/><polygon points="19.23 10.97 19.23 10.97 19.23 10.97 19.23 10.97 19.23 10.97 19.23 10.97" style="fill:url(#Degradado_sin_nombre_12-254)"/><polygon points="19.23 10.97 19.36 11.04 19.23 10.97 19.23 10.97" style="fill:url(#Degradado_sin_nombre_12-255)"/><polygon points="19.23 10.91 19.19 10.94 19.23 10.97 19.23 10.97 19.23 10.91" style="fill:url(#Degradado_sin_nombre_12-256)"/><polygon points="19.56 10.84 22.07 9.03 22.01 9 19.56 10.84 19.56 10.84" style="fill:url(#Degradado_sin_nombre_12-257)"/><polygon points="22.08 8.95 22.01 9 22.07 9.03 22.14 8.98 22.21 9.02 22.22 9.01 22.22 8.96 22.06 8.87 22.01 8.91 22.08 8.95" style="fill:url(#Degradado_sin_nombre_12-258)"/><rect x="21.45" y="11.68" height="0.08" transform="translate(-1.11 24.07) rotate(-61.02)" style="fill:url(#Degradado_sin_nombre_12-259)"/><rect x="21.45" y="11.58" width="0.02" transform="translate(-4.63 14) rotate(-35.79)" style="fill:url(#Degradado_sin_nombre_12-260)"/><polygon points="22.22 8.87 22.13 8.82 22.06 8.87 22.22 8.96 22.22 8.87" style="fill:url(#Degradado_sin_nombre_12-261)"/><polygon points="19.5 10.96 19.5 11.05 19.57 11 19.5 10.96 19.5 10.96" style="fill:url(#Degradado_sin_nombre_12-262)"/><polygon points="19.5 10.96 19.37 11.04 19.45 11.09 19.5 11.05 19.5 10.96" style="fill:url(#Degradado_sin_nombre_12-263)"/><rect x="19.5" y="10.87" width="0.05" style="fill:url(#Degradado_sin_nombre_12-264)"/><rect x="21.42" y="11.7" transform="translate(-1.13 24) rotate(-60.95)" style="fill:url(#Degradado_sin_nombre_12-265)"/><polygon points="19.5 10.96 19.5 10.96 19.5 10.96 19.5 10.96" style="fill:url(#Degradado_sin_nombre_12-266)"/><rect x="19.5" y="10.96" style="fill:url(#Degradado_sin_nombre_12-267)"/><polygon points="19.5 10.96 19.5 10.96 19.37 11.04 19.37 11.04 19.5 10.96 19.5 10.96 19.5 10.96" style="fill:url(#Degradado_sin_nombre_12-268)"/><rect x="19.23" y="10.97" style="fill:url(#Degradado_sin_nombre_12-269)"/><rect x="21.41" y="11.62" transform="translate(-4.72 13.52) rotate(-34.7)" style="fill:url(#Degradado_sin_nombre_12-270)"/><rect x="21.14" y="11.71" transform="translate(-1.17 23.92) rotate(-61.39)" style="fill:url(#Degradado_sin_nombre_12-271)"/><polygon points="19.23 10.97 19.37 10.89 19.23 10.97 19.23 10.97" style="fill:url(#Degradado_sin_nombre_12-272)"/><polygon points="19.44 10.93 19.37 10.89 19.5 10.96 19.5 10.96 19.44 10.93" style="fill:url(#Degradado_sin_nombre_12-273)"/><polygon points="19.5 10.88 19.44 10.93 19.5 10.88 19.5 10.88" style="fill:url(#Degradado_sin_nombre_12-274)"/><polygon points="19.5 10.96 19.37 10.89 19.23 10.97 19.23 10.97 19.36 11.04 19.37 11.04 19.5 10.96 19.5 10.96" style="fill:url(#Degradado_sin_nombre_12-275)"/><rect x="21.14" y="11.65" height="0.05" transform="translate(-4.92 10.81) rotate(-28.61)" style="fill:url(#Degradado_sin_nombre_12-276)"/><polygon points="19.25 10.89 19.23 10.91 19.23 10.97 19.37 10.89 19.3 10.93 19.25 10.89" style="fill:url(#Degradado_sin_nombre_12-277)"/><polygon points="19.32 10.85 19.37 10.89 19.37 10.89 19.37 10.81 19.32 10.85" style="fill:url(#Degradado_sin_nombre_12-278)"/><polygon points="19.37 10.89 19.37 10.89 19.37 10.89 19.37 10.89" style="fill:url(#Degradado_sin_nombre_12-279)"/><polygon points="19.27 10.89 19.37 10.89 19.32 10.85 19.27 10.89" style="fill:url(#Degradado_sin_nombre_12-280)"/><polygon points="19.27 10.89 19.25 10.89 19.3 10.93 19.37 10.89 19.37 10.89 19.27 10.89" style="fill:url(#Degradado_sin_nombre_12-281)"/><polygon points="19.5 10.72 19.5 10.81 19.56 10.84 22.01 9 21.93 8.96 19.5 10.72" style="fill:url(#Degradado_sin_nombre_12-282)"/><polygon points="22.01 9 22.08 8.95 22.01 8.91 21.93 8.96 22.01 9" style="fill:url(#Degradado_sin_nombre_12-283)"/><polygon points="19.54 10.85 19.56 10.84 19.5 10.81 19.5 10.82 19.54 10.85" style="fill:url(#Degradado_sin_nombre_12-284)"/><polygon points="19.54 10.85 19.5 10.82 19.5 10.88 19.54 10.85" style="fill:url(#Degradado_sin_nombre_12-285)"/><polygon points="19.44 10.77 19.5 10.81 19.5 10.72 19.43 10.77 19.44 10.77" style="fill:url(#Degradado_sin_nombre_12-286)"/><polygon points="19.5 10.82 19.5 10.81 19.44 10.77 19.5 10.82" style="fill:url(#Degradado_sin_nombre_12-287)"/><polygon points="19.44 10.77 19.43 10.77 19.43 10.77 19.44 10.77" style="fill:url(#Degradado_sin_nombre_12-288)"/><polygon points="19.37 10.81 19.37 10.89 19.5 10.88 19.5 10.88 19.5 10.82 19.44 10.77 19.43 10.77 19.37 10.81" style="fill:url(#Degradado_sin_nombre_12-289)"/><polygon points="19.5 10.88 19.37 10.89 19.37 10.89 19.44 10.93 19.5 10.88" style="fill:url(#Degradado_sin_nombre_12-290)"/><polygon points="22.22 9.18 22.18 11 22.22 9.11 22.14 9.07 19.69 10.91 19.7 10.91 22.15 9.14 22.22 9.18" style="fill:url(#Degradado_sin_nombre_12-291)"/><polygon points="21.13 11.71 22.16 12.28 22.16 12.28 21.13 11.71" style="fill:url(#Degradado_sin_nombre_12-292)"/><polygon points="21.13 11.71 19.7 10.91 19.7 10.91 19.69 10.91 19.57 11 22.16 12.43 22.16 12.28 21.13 11.71" style="fill:url(#Degradado_sin_nombre_12-293)"/><polygon points="22.22 9.11 22.22 9.02 22.21 9.02 22.14 9.07 22.22 9.11" style="fill:url(#Degradado_sin_nombre_12-294)"/><polygon points="19.69 10.91 22.14 9.07 22.07 9.03 19.56 10.84 19.69 10.91" style="fill:url(#Degradado_sin_nombre_12-295)"/><polygon points="22.21 9.02 22.14 8.98 22.07 9.03 22.14 9.07 22.21 9.02" style="fill:url(#Degradado_sin_nombre_12-296)"/><polygon points="19.54 10.85 19.61 10.9 19.5 10.96 19.57 11 19.69 10.91 19.56 10.84 19.54 10.85" style="fill:url(#Degradado_sin_nombre_12-297)"/><polygon points="19.5 10.88 19.5 10.96 19.5 10.96 19.61 10.9 19.54 10.85 19.5 10.88 19.5 10.88" style="fill:url(#Degradado_sin_nombre_12-298)"/><polygon points="19.5 10.96 19.5 10.88 19.5 10.96 19.5 10.96" style="fill:url(#Degradado_sin_nombre_12-299)"/><polygon points="19.5 10.88 19.5 10.88 19.5 10.88 19.5 10.88" style="fill:url(#Degradado_sin_nombre_12-300)"/><polygon points="19.44 10.93 19.5 10.96 19.5 10.88 19.5 10.88 19.44 10.93" style="fill:url(#Degradado_sin_nombre_12-301)"/><rect x="22.46" y="9.32" height="3.07" style="fill:url(#Degradado_sin_nombre_12-302)"/><polygon points="22.15 12.59 22.16 12.59 22.15 12.59 22.15 12.59" style="fill:url(#Degradado_sin_nombre_12-303)"/><polygon points="22.49 9.17 24.53 10.26 24.59 10.2 22.49 9.1 22.49 9.17" style="fill:url(#Degradado_sin_nombre_12-304)"/><polygon points="24.59 10.2 24.63 10.16 24.72 10.2 22.49 9.01 22.49 9.1 24.59 10.2" style="fill:url(#Degradado_sin_nombre_12-305)"/><polygon points="22.15 12.59 22.16 12.59 22.17 12.6 22.15 12.59 22.15 12.59" style="fill:url(#Degradado_sin_nombre_12-306)"/><polygon points="22.43 8.98 22.34 8.93 22.33 8.93 22.43 8.98" style="fill:url(#Degradado_sin_nombre_12-307)"/><rect x="24.19" y="9.58" height="0.12" transform="translate(2.56 25.91) rotate(-62.51)" style="fill:url(#Degradado_sin_nombre_12-308)"/><polygon points="22.16 12.28 22.18 11 22.16 12.28 22.16 12.28" style="fill:url(#Degradado_sin_nombre_12-309)"/><polygon points="22.29 12.51 22.16 12.43 22.16 12.43 22.3 12.51 22.3 12.51 22.29 12.51" style="fill:url(#Degradado_sin_nombre_12-310)"/><polygon points="22.22 9.02 22.36 9.09 22.49 9.17 22.49 9.1 22.26 8.98 22.22 9.01 22.22 9.02" style="fill:url(#Degradado_sin_nombre_12-311)"/><polygon points="22.26 8.98 22.49 9.1 22.49 9.01 22.43 8.98 22.33 8.93 22.26 8.98" style="fill:url(#Degradado_sin_nombre_12-312)"/><polygon points="22.15 12.59 22.17 12.6 22.2 12.61 22.2 12.61 22.3 12.51 22.16 12.43 22.15 12.59" style="fill:url(#Degradado_sin_nombre_12-313)"/><polygon points="22.22 9.01 22.26 8.98 22.22 8.96 22.22 9.01" style="fill:url(#Degradado_sin_nombre_12-314)"/><polygon points="22.26 8.98 22.33 8.93 22.22 8.87 22.22 8.96 22.26 8.98" style="fill:url(#Degradado_sin_nombre_12-315)"/><polygon points="22.18 11 22.16 12.28 22.16 12.28 22.16 12.28 22.29 12.35 22.36 9.18 22.22 9.11 22.18 11" style="fill:url(#Degradado_sin_nombre_12-316)"/><polygon points="22.16 12.28 22.16 12.43 22.29 12.51 22.29 12.35 22.16 12.28" style="fill:url(#Degradado_sin_nombre_12-317)"/><polygon points="22.36 9.18 22.36 9.09 22.22 9.02 22.22 9.11 22.36 9.18" style="fill:url(#Degradado_sin_nombre_12-318)"/><polygon points="24.43 10.36 24.49 10.3 22.49 9.25 22.49 9.32 24.43 10.36" style="fill:url(#Degradado_sin_nombre_12-319)"/><polygon points="22.49 9.25 24.49 10.3 24.53 10.26 22.49 9.17 22.49 9.25" style="fill:url(#Degradado_sin_nombre_12-320)"/><polygon points="22.29 12.35 22.4 12.41 22.43 12.38 22.49 9.32 22.49 9.32 22.49 9.25 22.36 9.18 22.29 12.35" style="fill:url(#Degradado_sin_nombre_12-321)"/><polygon points="22.29 12.51 22.3 12.51 22.4 12.41 22.29 12.35 22.29 12.51" style="fill:url(#Degradado_sin_nombre_12-322)"/><polygon points="22.36 9.18 22.49 9.25 22.49 9.17 22.36 9.09 22.36 9.18" style="fill:url(#Degradado_sin_nombre_12-323)"/><polygon points="22.65 12.55 22.82 12.37 22.65 12.55 22.65 12.55" style="fill:url(#Degradado_sin_nombre_12-324)"/><path d="M27,14.65l.13.08v-3.3L27,11.36Z" transform="translate(-1.91 -0.74)" style="fill:url(#Degradado_sin_nombre_12-325)"/><polygon points="24.97 14.15 23.32 13.23 24.97 14.15 24.97 14.15" style="fill:url(#Degradado_sin_nombre_12-326)"/><path d="M27,11.2l-.26-.13-.06,0,.32.14v.1l.13.07v-.26L27,11.11Z" transform="translate(-1.91 -0.74)" style="fill:url(#Degradado_sin_nombre_12-327)"/><path d="M27,14.81V15l.13.08v-.31L27,14.65Z" transform="translate(-1.91 -0.74)" style="fill:url(#Degradado_sin_nombre_12-328)"/><polygon points="22.55 12.65 25.11 14.07 22.55 12.65 22.55 12.65" style="fill:url(#Degradado_sin_nombre_12-329)"/><polygon points="24.88 10.29 24.85 10.33 25.11 10.46 25.11 10.37 24.72 10.2 24.88 10.29" style="fill:url(#Degradado_sin_nombre_12-330)"/><polygon points="22.55 12.65 22.45 12.75 22.42 12.74 22.42 12.74 23.32 13.23 24.97 14.15 24.97 14.15 25.11 14.22 25.11 14.07 22.55 12.65" style="fill:url(#Degradado_sin_nombre_12-331)"/><polygon points="22.42 12.74 22.42 12.74 22.2 12.61 22.42 12.74" style="fill:url(#Degradado_sin_nombre_12-332)"/><rect x="23.92" y="12.11" width="2.85" transform="translate(-3 20.87) rotate(-45.31)" style="fill:url(#Degradado_sin_nombre_12-333)"/><rect x="22.43" y="12.38" style="fill:url(#Degradado_sin_nombre_12-334)"/><path d="M26.44,11l.13.07.13,0,.06,0-.26-.13Z" transform="translate(-1.91 -0.74)" style="fill:url(#Degradado_sin_nombre_12-335)"/><polygon points="22.43 12.58 22.43 12.58 22.43 12.58 22.55 12.65 22.55 12.65 22.43 12.58" style="fill:url(#Degradado_sin_nombre_12-336)"/><polygon points="24.72 10.2 24.63 10.16 24.59 10.2 24.85 10.33 24.88 10.29 24.72 10.2" style="fill:url(#Degradado_sin_nombre_12-337)"/><polygon points="22.42 12.74 22.45 12.75 22.55 12.65 22.43 12.58 22.42 12.74" style="fill:url(#Degradado_sin_nombre_12-338)"/><rect x="24.27" y="13.22" height="0.14" transform="translate(-1.02 27.34) rotate(-61.01)" style="fill:url(#Degradado_sin_nombre_12-339)"/><polygon points="22.3 12.51 22.2 12.61 22.2 12.61 22.42 12.74 22.43 12.58 22.3 12.51" style="fill:url(#Degradado_sin_nombre_12-340)"/><polygon points="24.43 10.36 24.43 10.36 22.43 12.38 22.43 12.43 22.52 12.48 24.62 10.36 24.49 10.3 24.43 10.36" style="fill:url(#Degradado_sin_nombre_12-341)"/><polygon points="24.62 10.36 24.66 10.33 24.53 10.26 24.49 10.3 24.62 10.36" style="fill:url(#Degradado_sin_nombre_12-342)"/><polygon points="22.43 12.43 22.43 12.58 22.43 12.58 22.52 12.48 22.43 12.43" style="fill:url(#Degradado_sin_nombre_12-343)"/><polygon points="22.43 12.38 22.4 12.41 22.43 12.43 22.43 12.38 22.43 12.38 22.43 12.38" style="fill:url(#Degradado_sin_nombre_12-344)"/><polygon points="22.4 12.41 22.3 12.51 22.43 12.58 22.43 12.43 22.4 12.41" style="fill:url(#Degradado_sin_nombre_12-345)"/><path d="M24.73,13.11l1.87-1.88.28.12v3.22l-2.32-1.28h0L27,14.65V11.36l-.36-.19Z" transform="translate(-1.91 -0.74)" style="fill:url(#Degradado_sin_nombre_12-346)"/><path d="M27,11.36v-.1l-.32-.14,0,.05Z" transform="translate(-1.91 -0.74)" style="fill:url(#Degradado_sin_nombre_12-347)"/><path d="M24.46,13.39,27,14.81v-.16l-2.46-1.36Z" transform="translate(-1.91 -0.74)" style="fill:url(#Degradado_sin_nombre_12-348)"/><polygon points="22.65 12.55 22.65 12.55 22.65 12.55 22.82 12.37 24.75 10.43 24.62 10.36 22.52 12.48 22.65 12.55" style="fill:url(#Degradado_sin_nombre_12-349)"/><path d="M26.53,11.1l.13.07,0-.05-.13,0Z" transform="translate(-1.91 -0.74)" style="fill:url(#Degradado_sin_nombre_12-350)"/><polygon points="22.43 12.58 22.55 12.65 22.65 12.55 22.52 12.48 22.43 12.58" style="fill:url(#Degradado_sin_nombre_12-351)"/></svg>
                                                    <small>500,000 {include file="token.tpl"}</small>
                                                </span>
                                            </div>
                                            <div class="header__home-slider1-item-right-info2">
                                                <div class="header__home-slider1-item-right-info2-item">
                                                    <h3>Opening price:</h3>
                                                    <p>0.5 USD</p>
                                                </div>
                                                <div class="header__home-slider1-item-right-info2-item">
                                                    <h3>Expected price:</h3>
                                                    <p>
                                                        500 USD
                                                        <span class="header__course-curr header__course-curr_up d-flex align-items-center justify-content-center">
                                                            <svg width="10" height="6" viewBox="0 0 10 6" fill="none" xmlns="http://www.w3.org/2000/svg">
                                                                <path d="M5 0L9.33013 5.25H0.669873L5 0Z" fill="white" />
                                                            </svg>
                                                            <span ng-bind="::global.token.expectedPercent | number | suffix:'%'"></span>
                                                        </span>
                                                    </p>
                                                </div>
                                            </div>
                                        </picture>
                                        <div class="header__home-slider1-item-text-box">
                                            <p class="header__home-slider1-item-text">{include file="token.tpl"} - is a rising star of {$settings.site_name} project that shall bring unbelievable profit both to investors and traders! Demand for {include file="token.tpl"} shall grow from day to day due to its application in {$settings.site_name}. Everyone can buy {include file="token.tpl"} right now at PancakeSwap stock exchange!</p>
                                        </div>
                                        <div class="header__home-slider1-item-ui d-flex align-items-center">
                                            <div class="header__home-slider1-item-ui-box">
                                                <a class="btn btn-success btn_ico" href="?a=cust&page=instructions">
                                                    <svg>
                                                        <use xlink:href="#arr_right_green"></use>
                                                    </svg>
                                                    <span>Open instructions to buy</span>
                                                </a>
                                            </div>
                                            <a class="btn btn-light d-none d-lg-flex" target="_blank" href="https://pancakeswap.finance/swap?inputCurrency=0xdac17f958d2ee523a2206206994597c13d831ec7">
                                                <svg width="18px" height="18px">
                                                    <use xlink:href="#rabbit"></use>
                                                </svg>
                                                <span>Buy {include file="token.tpl"}</span>
                                            </a>
                                        </div>
                                        {include file="home_join.tpl"}
                                    </div>
                                </div>
                            </div>
                            <div class="swiper-slide header__home-slider1-item">
                                <div class="d-flex flex-column flex-xl-row">
                                    <div class="header__home-slider1-item-left d-flex flex-column">
                                        <div class="header__home-slider1-item-title-box">
                                            <h2 class="header__home-slider1-item-title">Profit for real leaders!</h2>
                                        </div>
                                        <picture class="header__home-slider1-item-right d-flex">
                                            <source media="(min-width: 1024.00001px)" srcset="styles/assets/app/img/slider1_3.svg">
                                            <source media="(max-width: 992px)" srcset="styles/assets/app/img/slider1_3_mob.png">
                                            <img src="styles/assets/app/img/slider1_3.svg" alt>
                                        </picture>
                                        <div class="header__home-slider1-item-text-box">
                                            <p class="header__home-slider1-item-text">Especially for the leaders we developed 7 levels of partner program of income up to 23.5%. Use all available methods to tell about our project and attract new investors - and get the best fees.</p>
                                        </div>
                                        <div class="header__home-slider1-item-ui d-flex align-items-center">
                                            {if $userinfo.logged != 1}
                                            <div class="header__home-slider1-item-ui-box">
                                                <a class="btn btn-success btn_ico" href="?a=signup">
                                                    <svg>
                                                        <use xlink:href="#arr_right_green"></use>
                                                    </svg>
                                                    <span>Join the program</span>
                                                </a>
                                            </div>
                                            {else}
                                            <div class="header__home-slider1-item-ui-box">
                                                <a class="btn btn-success btn_ico" href="?a=account">
                                                    <svg>
                                                        <use xlink:href="#arr_right_green"></use>
                                                    </svg>
                                                    <span>My account</span>
                                                </a>
                                            </div>
                                            {/if}
                                            <a class="btn btn-light d-none d-lg-flex" href="?a=cust&page=partners">
                                                <span>Terms and conditions</span>
                                            </a>
                                        </div>
                                        {include file="home_join.tpl"}
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="header__home-slider1-ui d-flex flex-row flex-lg-column align-items-center justify-content-center">
                            <div class="swiper-button-prev"></div>
                            <div class="swiper-pagination d-flex flex-row flex-lg-column"></div>
                            <div class="swiper-button-next"></div>
                        </div>
                    </div>
                </div>
                <div class="header__home-slider2 wow animate__fadeInRight" data-wow-offset="10" data-wow-duration="1.25s">
                    <div class="header__home-slider2-titles d-flex d-lg-none justify-content-between">
                        <h2>News:</h2>
                        <a class="news__box-head-link d-flex align-items-center" href="?a=news">
                            <span>All news</span>
                            <svg width="25px" height="25px">
                                <use xlink:href="#arrorw_right_link"></use>
                            </svg>
                        </a>
                    </div>

                    <div class="swiper swiper-container header__home-slider2-el ng-isolate-scope swiper-container-initialized swiper-container-horizontal swiper-container-pointer-events" sx-swiper="vm.swiperParams[1]">


                        <div class="swiper-wrapper ng-scope" ng-controller="HomeNewsCtrl as nn" sx-news-alt="" id="swiper-d5d1" aria-live="off" style="transform: translate3d(0px, 0px, 0px); transition-duration: 0ms;">
                           
						   {loaddata name="news" var=news page=$frm.p limit=20 pages_var=pages}
						   {if $news}
						   {counter name=rex_28 start=0 print=0}
                           {foreach from=$news item=n}
						   <div class="swiper-slide ng-scope swiper-slide-active" role="group" aria-label="1 / 3" style="width: 556.5px; margin-right: 30px;">
                                <a class="header__home-slider2-item pointer" href="{" ?a=news&id=`$n.id`"|encurl}" target="_blank">
                                    <article class="js-read_more" data-id="12">
                                        <img alt="" src="{if !empty($n.image_url)}{$n.image_url}{else}styles/assets/app/img/News-{counter name=rex_28}-eng.png{/if}">
                                    </article>
                                </a>
                            </div>
						   {/foreach}
						   
						   {else}   
                            <div class="swiper-slide ng-scope swiper-slide-active" role="group" aria-label="1 / 3" style="width: 556.5px; margin-right: 30px;">
                                <a class="header__home-slider2-item pointer">
                                    <article class="js-read_more" data-id="12">
                                        <img alt="" src="styles/assets/app/img/News-1-eng.png">
                                    </article>
                                </a>
                            </div>
                            <div class="swiper-slide ng-scope swiper-slide-next" role="group" aria-label="2 / 3" style="width: 556.5px; margin-right: 30px;">
                                <a class="header__home-slider2-item pointer">
                                    <article class="js-read_more" data-id="13">
                                        <img alt="" src="styles/assets/app/img/News-2-eng.png">
                                    </article>
                                </a>
                            </div>
                            {/if}
							
							
                        </div>
                        <div class="swiper-scrollbar__box  d-flex justify-content-center justify-content-lg-between align-items-center">
                            <div class="swiper-scrollbar d-none d-lg-flex">
                                <div class="swiper-scrollbar-drag" style="transform: translate3d(0px, 0px, 0px); transition-duration: 0ms; width: 561.091px;"></div>
                            </div>
                            <div class="swiper-scrollbar__box-arrow d-flex align-self-stretch align-items-center justify-content-between">
                                <!-- swiper-button-disabled -->
                                <div class="swiper-button-prev" tabindex="-1" role="button" aria-label="Previous slide" aria-controls="swiper-wrapper-d5d10c7ce35157571" aria-disabled="true"></div>
                                <div class="swiper-button-next" tabindex="0" role="button" aria-label="Next slide" aria-controls="swiper-wrapper-d5d10c7ce35157571" aria-disabled="false"></div>
                            </div>
                        </div>
                        <span class="swiper-notification" aria-live="assertive" aria-atomic="true"></span>
                    </div>
                </div>
                <div class="header__home-box">


                    {if $settings.index_last_deposits}
                    {loaddata name="transactions" limit=$settings.index_last_deposits type="deposit" var="last_deposits"}
                    {if $last_deposits}
                    <div class="header__home-box-top">
                        <h4 class="header__home-box-top-title">Top NFT investors:</h4>

                        <div class="header__home-box-top-scroll">
                            <div class="header__home-box-top-scroll-box">
                                <div class="row flex-nowrap">
                                    {counter name=rex_1 start=0 print=0}
                                    {counter name=rex_2 start=0 print=0}
                                    {foreach from=$last_deposits item=s}
                                    {if $s@iteration > 4}{break}{/if}

                                    <div class="col-3 wow amimFadeIn ng-scope animated amimFadeIn_active" data-delay="0.0s" data-wow-offset="30" style="transition-delay: 0s; visibility: visible;">
                                        <div class="header__home-box-top-item d-flex flex-column">
                                            <div class="header__home-box-top-item-head d-flex align-items-end">
                                                <div class="header__home-box-top-item-head-ico" sx-video="">
                                                    <video playsinline="" autoplay="" loop="" muted="" disableremoteplayback="">
                                                        <source type="video/mp4" src="styles/assets/app/video/{if $s.description == "Deposit to Rare" || $s.description=="Deposit to RARE" || $s.description=="Deposit to rare" }plan_1{elseif $s.description=="Deposit to Epic" || $s.description=="Deposit to EPIC" || $s.description=="Deposit to epic" }plan_2{elseif $s.description=="Deposit to Legendary" || $s.description=="Deposit to LEGENDARY" || $s.description=="Deposit to legendary" }plan_3{elseif $s.description=="Deposit to Genesis" || $s.description=="Deposit to GENESIS" || $s.description=="Deposit to genesis" }plan_4{else}plan_{counter name=rex_1}{/if}.mp4">
                                                    </video>
                                                </div>
                                                <div class="header__home-box-top-item-head-info d-flex flex-column">
                                                    <span class="header__home-box-top-item-head-info-title notranslate ng-binding">{if $s.description == "Deposit to Rare" || $s.description == "Deposit to RARE" || $s.description == "Deposit to rare" }Rare{elseif $s.description == "Deposit to Epic" || $s.description == "Deposit to EPIC" || $s.description == "Deposit to epic"}Epic{elseif $s.description == "Deposit to Legendary" || $s.description == "Deposit to LEGENDARY" || $s.description == "Deposit to legendary"}Legendary{elseif $s.description == "Deposit to Genesis" || $s.description == "Deposit to GENESIS" || $s.description == "Deposit to genesis" }Genesis{else}{$s.description|replace:'Deposit to':''}{/if}</span>
                                                    <span class="header__home-box-top-item-head-info-cat notranslate ng-binding">By {if $s.description == "Deposit to Rare" || $s.description == "Deposit to RARE" || $s.description == "Deposit to rare" }pantlink{elseif $s.description == "Deposit to Epic" || $s.description == "Deposit to EPIC" || $s.description == "Deposit to epic"}OZQ{elseif $s.description == "Deposit to Legendary" || $s.description == "Deposit to LEGENDARY" || $s.description == "Deposit to legendary"}Hcosen{elseif $s.description == "Deposit to Genesis" || $s.description == "Deposit to GENESIS" || $s.description == "Deposit to genesis" }Kepler{else}{counter|replace:'1':'pantlink'|replace:'2':'OZQ'|replace:'3':'Hcosen'|replace:'4':'Kepler'|replace:'5':'pantlink'|replace:'6':'OZQ'|replace:'7':'Hcosen'|replace:'8':'Kepler'}{/if}</span>
                                                </div>
                                            </div>
                                            <div class="header__home-box-top-item-table">
                                                <table class="table mb-0">
                                                    <thead>
                                                        <tr>
                                                            <td class="nowrap">
                                                                <svg width="11px" height="11px">
                                                                    <use xlink:href="#user3"></use>
                                                                </svg>
                                                                <span>Investor</span>
                                                            </td>
                                                            <td class="nowrap">
                                                                <svg width="11px" height="11px">
                                                                    <use xlink:href="#calendar"></use>
                                                                </svg>
                                                                <span>Date</span>
                                                            </td>
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                        <tr>
                                                            <td class="notranslate ng-binding" title="{$s.username}">{$s.username}</td>
                                                            <td title="{$s.date}" class="ng-binding">{$s.date}</td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </div>
                                            <div class="header__home-box-top-item-price d-flex align-items-center">
                                                <svg width="15px" height="15px">
                                                    <use xlink:href="#deposit"></use>
                                                </svg>
                                                <img style="margin-right: 5px;" width="24px" height="24px" src="styles/assets/app/pay/{$s.ec}.svg" />
                                                <span class="upper notranslate ng-binding">
                                                    <sum class="ng-binding">{$s.amount|fiat:$s.ec}</sum> usd
                                                </span>
                                            </div>
                                        </div>
                                    </div>
                                    {/foreach}

                                </div>
                            </div>
                        </div>
                    </div>
                    {/if}
                    {/if}
                    <div class="header__home-box-partners w-100">
                        <h4 class="header__home-box-partners-title">Our partners:</h4>
                        <div class="header__home-box-partners-box wow animate__fadeInUp" data-wow-offset="20" data-wow-duration="1s">
                            <a class="header__home-box-partners-item soon">
                                <img src="styles/assets/app/img/22.png" srcset="styles/assets/app/img/22.png 1x, styles/assets/app/img/22@2x.png 2x" alt>
                            </a>
                            <a class="header__home-box-partners-item soon">
                                <img src="styles/assets/app/img/23.png" srcset="styles/assets/app/img/23.png 1x, styles/assets/app/img/23@2x.png 2x" alt>
                            </a>
                            <a class="header__home-box-partners-item soon">
                                <img src="styles/assets/app/img/24.png" srcset="styles/assets/app/img/24.png 1x, styles/assets/app/img/24@2x.png 2x" alt>
                            </a>
                            <a class="header__home-box-partners-item soon">
                                <img src="styles/assets/app/img/25.png" srcset="styles/assets/app/img/25.png 1x, styles/assets/app/img/25@2x.png 2x" alt>
                            </a>
                            <a class="header__home-box-partners-item soon">
                                <img src="styles/assets/app/img/26.png" srcset="styles/assets/app/img/26.png 1x, styles/assets/app/img/26@2x.png 2x" alt>
                            </a>
                            <a class="header__home-box-partners-item soon">
                                <img src="styles/assets/app/img/27.png" srcset="styles/assets/app/img/27.png 1x, styles/assets/app/img/27@2x.png 2x" alt>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </header>
    <main class="d-flex flex-column">
        <section class="nft">
            <div class="container__app container__app_px-15">
                <div class="app__box d-flex flex-column flex-xl-row">
                    <div class="d-flex d-xl-none justify-content-center">
                        <img src="styles/assets/app/img/nft_mobile.png" class="nft__img-mobile" alt="">
                    </div>
                    <div class="app__box-info d-flex flex-column me-xl-auto ">
                        <p class="app__box-subtitle wow animate__fadeInUp" data-wow-offset="80" data-wow-duration="1s">
                            <svg width="7px" height="8px">
                                <use xlink:href="#circle"></use>
                            </svg>
                            <span>Advanced possibilities</span>
                        </p>
                        <h2 class="app__box-title wow animate__fadeInUp" data-wow-offset="80" data-wow-duration="1.1s">NFT market today</h2>
                        <p class="app__box-text-border wow animate__fadeInUp" data-wow-offset="80" data-wow-duration="1.2s">NFT or non-fungible tokens, becoming very popular in the last six months, is an attractive tool and a new possibility for digital investors.</p>
                        <p class="app__box-text wow animate__fadeInUp" data-wow-offset="80" data-wow-duration="1.3s">Technical nature of these currencies allows to use them effectively in copyright sphere. Pictures, songs and even newspaper columns are digitized and sold for hundreds of thousands USD dollars almost every day.</p>
                        <h3 class="app__box-subtitle2 wow animate__fadeInUp" data-wow-offset="80" data-wow-duration="1.4s">Most expensive NFT-lots ever:</h3>
                        <div class="nft__box d-flex flex-column flex-lg-row justify-content-lg-between wow animate__fadeInUp" data-wow-offset="80" data-wow-duration="1.5s">
                            <div class="nft__box-cards">
                                <div class="row">
                                    <div class="col-6 col-sm-4 ">
                                        <div class="nft__box-cards-el d-flex flex-column align-items-center">
                                            <div class="nft__box-cards-el-photo">
                                                <img src="styles/assets/app/img/7.png" srcset="styles/assets/app/img/7.png 1x, styles/assets/app/img/7@2x.png 2x" alt>
                                            </div>
                                            <div class="nft__box-cards-el-title">Cryptopunk</div>
                                            <div class="nft__box-cards-el-price d-flex align-items-center justify-content-center">$7.5 mln</div>
                                        </div>
                                    </div>
                                    <div class="col-6 col-sm-4">
                                        <div class="nft__box-cards-el d-flex flex-column align-items-center">
                                            <div class="nft__box-cards-el-photo">
                                                <img src="styles/assets/app/img/20.png" srcset="styles/assets/app/img/20.png 1x, styles/assets/app/img/20@2x.png 2x" alt>
                                            </div>
                                            <div class="nft__box-cards-el-title">Crossroad</div>
                                            <div class="nft__box-cards-el-price d-flex align-items-center justify-content-center">$6.6 mln</div>
                                        </div>
                                    </div>
                                    <div class="col-6 col-sm-4">
                                        <div class="nft__box-cards-el d-flex flex-column align-items-center">
                                            <div class="nft__box-cards-el-photo">
                                                <img src="styles/assets/app/img/21.png" srcset="styles/assets/app/img/21.png 1x, styles/assets/app/img/21@2x.png 2x" alt>
                                            </div>
                                            <div class="nft__box-cards-el-title">Ultraviolet</div>
                                            <div class="nft__box-cards-el-price d-flex align-items-center justify-content-center">$3.6 mln</div>
                                        </div>
                                    </div>
                                    <div class="col-6 d-block d-sm-none">
                                        <a class="nft__box-cards-el nft__box-cards-el_market d-flex flex-column align-items-center" href="/#" target="_blank">
                                            <div class="nft__box-cards-el-photo">
                                                <svg width="60" height="60" viewBox="0 0 60 60" fill="none" xmlns="http://www.w3.org/2000/svg">
                                                    <rect width="60" height="60" rx="12" fill="#FFDC67" />
                                                    <g opacity="0.8" clip-path="url(#clip0nft__box-cards-el)">
                                                        <path d="M35.6796 31.6514H13.7161C13.089 31.6514 12.5801 31.1283 12.5801 30.4838C12.5801 29.8392 13.089 29.3162 13.7161 29.3162H35.6796C36.3067 29.3162 36.8156 29.8392 36.8156 30.4838C36.8156 31.1283 36.3067 31.6514 35.6796 31.6514Z" fill="#1E2026" />
                                                        <path d="M29.6206 37.8786C29.3297 37.8786 29.039 37.7652 28.8177 37.5363C28.3739 37.0802 28.3739 36.3407 28.8177 35.8843L34.0738 30.4825L28.8177 25.0803C28.3739 24.6242 28.3739 23.8845 28.8177 23.4284C29.2617 22.9723 29.9812 22.9723 30.425 23.4284L36.4838 29.6558C36.9275 30.1119 36.9275 30.8513 36.4838 31.3074L30.425 37.5346C30.2022 37.7652 29.9116 37.8786 29.6206 37.8786Z" fill="#1E2026" />
                                                        <path d="M30.757 47.6089C23.8634 47.6089 17.7774 43.3464 15.2493 36.7484C15.0191 36.1507 15.3067 35.472 15.89 35.2354C16.4716 35.0019 17.1337 35.2929 17.3639 35.8955C19.5466 41.5919 24.8042 45.2737 30.757 45.2737C38.691 45.2737 45.147 38.6384 45.147 30.484C45.147 22.3296 38.691 15.6943 30.757 15.6943C24.8042 15.6943 19.5466 19.3761 17.3639 25.0724C17.132 25.675 16.4716 25.9661 15.89 25.7326C15.3067 25.496 15.0191 24.8173 15.2493 24.2195C17.7774 17.6216 23.8634 13.3591 30.757 13.3591C39.9438 13.3591 47.4191 21.042 47.4191 30.484C47.4191 39.926 39.9438 47.6089 30.757 47.6089Z" fill="#1E2026" />
                                                    </g>
                                                    <defs>
                                                        <clipPath id="clip0nft__box-cards-el">
                                                            <rect width="34.8387" height="35.8064" fill="white" transform="translate(12.5801 12.5807)" />
                                                        </clipPath>
                                                    </defs>
                                                </svg>
                                            </div>
                                            <div class="nft__box-cards-el-title">Follow market place</div>
                                        </a>
                                    </div>
                                </div>
                            </div>
                            <div class="nft__box-market d-none d-sm-block">
                                <h5 class="nft__box-market-title">Manage to invest into advanced NFT</h5>
                                <a class="btn btn-primary btn_ico btn_ico_small" href="?a=cust&page=offer">
                                    <svg>
                                        <use xlink:href="#arr_right_transparent"></use>
                                    </svg>
                                    <span>Follow market place</span>
                                </a>
                            </div>
                        </div>
                        <p class="app__box-text-line wow animate__fadeInUp" data-wow-offset="80" data-wow-duration="1.6s">Clearly these prices provide buoyant demand for on-fungible tokens. So we learnt to earn with them.</p>
                    </div>
                    <div class="app__box-pic app__box-pic_left nft__pic">
                        <div class="app__box-pic-figure app__box-pic-figure_left wow animate__fadeInRight" data-wow-offset="50" data-wow-duration="1.25s">
                            <div class="app__box-pic-figure-box app__box-pic-figure-box_left">
                                <svg width="577" height="501" viewBox="0 0 577 501" fill="none" xmlns="http://www.w3.org/2000/svg">
                                    <path d="M127.859 478.62L8.95916 272.92C4.23836 264.753 1.87796 260.669 0.954137 256.327C0.136739 252.485 0.136739 248.515 0.954137 244.673C1.87796 240.331 4.23837 236.247 8.95919 228.08L127.859 22.3803L127.859 22.3801C132.572 14.2268 134.929 10.1501 138.224 7.1853C141.139 4.56201 144.573 2.58051 148.304 1.36911C152.519 1.86647e-06 157.228 1.92263e-06 166.646 2.03493e-06L410.354 4.94112e-06C419.772 5.05343e-06 424.481 5.10958e-06 428.696 1.36912C432.427 2.58051 435.861 4.56202 438.776 7.18531C442.071 10.1501 444.428 14.2269 449.141 22.3804L568.041 228.08C572.762 236.247 575.122 240.331 576.046 244.673C576.863 248.515 576.863 252.485 576.046 256.327C575.122 260.669 572.762 264.753 568.041 272.92L449.141 478.62C444.428 486.773 442.071 490.85 438.776 493.815C435.861 496.438 432.427 498.42 428.696 499.631C424.481 501 419.772 501 410.354 501L166.646 501C157.228 501 152.519 501 148.304 499.631C144.573 498.419 141.139 496.438 138.224 493.815C134.929 490.85 132.572 486.773 127.859 478.62Z" fill="white" />
                                </svg>
                            </div>
                            <img class="app__box-pic-figure-arrow app__box-pic-figure-arrow_left" src="styles/assets/app/img/app_arrow_left.svg" alt>
                            <img class="app__box-pic-figure-green app__box-pic-figure-green_left" src="styles/assets/app/img/app_figure_green.svg" alt>
                        </div>
                        <div class="app__box-pic-images d-none">
                            <img src="styles/assets/app/img/nft_pic1.svg" class="wow animate__zoomIn" data-wow-offset="80" data-wow-duration="2s" alt>
                            <img src="styles/assets/app/img/nft_pic2.png" class="wow animate__zoomIn" data-wow-offset="80" data-wow-duration="2.05s" alt>
                            <img src="styles/assets/app/img/nft_pic3.png" class="wow animate__zoomIn" data-wow-offset="80" data-wow-duration="2.1s" alt>
                            <img src="styles/assets/app/img/nft_pic4.svg" class="wow animate__zoomIn" data-wow-offset="80" data-wow-duration="2.15s" alt>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <section class="pluses">
            <div class="container__app container__app_px-15">
                <div class="pluses__box d-flex justify-content-center">
                    <div class="pluses__box-item d-flex align-items-center wow animate__fadeInUp" data-wow-offset="40" data-wow-duration="1s">
                        <div class="pluses__box-item-ico me-1 me-sm-3">
                            <svg width="50px" height="50px">
                                <use xlink:href="#check"></use>
                            </svg>
                        </div>
                        <span class="pluses__box-item-text ms-1">Reliable authenticity</span>
                    </div>
                    <div class="pluses__box-item d-flex align-items-center wow animate__fadeInUp" data-wow-offset="40" data-wow-duration="1.3s">
                        <div class="pluses__box-item-ico me-1 me-sm-3">
                            <svg width="50px" height="50px">
                                <use xlink:href="#blockchain"></use>
                            </svg>
                        </div>
                        <span class="pluses__box-item-text ms-1">Blockchain technology</span>
                    </div>
                    <!-- <div class="pluses__box-item d-none d-sm-flex align-items-center wow animate__fadeInUp" data-wow-offset="40" data-wow-duration="1.45s"> -->
                    <div class="pluses__box-item d-flex align-items-center wow animate__fadeInUp" data-wow-offset="40" data-wow-duration="1.45s">
                        <div class="pluses__box-item-ico me-1 me-sm-3">
                            <svg width="50px" height="50px">
                                <use xlink:href="#platf"></use>
                            </svg>
                        </div>
                        <span class="pluses__box-item-text ms-1">User friendly platform</span>
                    </div>
                    <div class="pluses__box-item d-flex align-items-center wow animate__fadeInUp" data-wow-offset="40" data-wow-duration="1.6s">
                        <div class="pluses__box-item-ico me-1 me-sm-3">
                            <svg width="50px" height="50px">
                                <use xlink:href="#garant"></use>
                            </svg>
                        </div>
                        <span class="pluses__box-item-text ms-1">Guaranteed income rate</span>
                    </div>
                </div>
            </div>
        </section>
        <section class="profit">
            <div class="container__app container__app_px-15">
                <div class="app__box d-flex flex-column flex-xl-row">
                    <div class="d-flex d-xl-none justify-content-center">
                        <img src="styles/assets/app/img/profit_mobile.svg" class="profit__img-mobile" alt>
                    </div>
                    <div class="app__box-pic app__box-pic_right profit__pic">
                        <div class="app__box-pic-figure app__box-pic-figure_right wow animate__fadeInLeft" data-wow-offset="50" data-wow-duration="1.25s">
                            <div class="app__box-pic-figure-box app__box-pic-figure-box_right">
                                <svg width="577" height="501" viewBox="0 0 577 501" fill="none" xmlns="http://www.w3.org/2000/svg">
                                    <path d="M127.859 478.62L8.95916 272.92C4.23836 264.753 1.87796 260.669 0.954137 256.327C0.136739 252.485 0.136739 248.515 0.954137 244.673C1.87796 240.331 4.23837 236.247 8.95919 228.08L127.859 22.3803L127.859 22.3801C132.572 14.2268 134.929 10.1501 138.224 7.1853C141.139 4.56201 144.573 2.58051 148.304 1.36911C152.519 1.86647e-06 157.228 1.92263e-06 166.646 2.03493e-06L410.354 4.94112e-06C419.772 5.05343e-06 424.481 5.10958e-06 428.696 1.36912C432.427 2.58051 435.861 4.56202 438.776 7.18531C442.071 10.1501 444.428 14.2269 449.141 22.3804L568.041 228.08C572.762 236.247 575.122 240.331 576.046 244.673C576.863 248.515 576.863 252.485 576.046 256.327C575.122 260.669 572.762 264.753 568.041 272.92L449.141 478.62C444.428 486.773 442.071 490.85 438.776 493.815C435.861 496.438 432.427 498.42 428.696 499.631C424.481 501 419.772 501 410.354 501L166.646 501C157.228 501 152.519 501 148.304 499.631C144.573 498.419 141.139 496.438 138.224 493.815C134.929 490.85 132.572 486.773 127.859 478.62Z" fill="white" />
                                </svg>
                            </div>
                            <img class="app__box-pic-figure-arrow app__box-pic-figure-arrow_right" src="styles/assets/app/img/app_arrow_left.svg" alt>
                            <img class="app__box-pic-figure-green app__box-pic-figure-green_right" src="styles/assets/app/img/app_figure_green.svg" alt>
                        </div>
                        <div class="app__box-pic-images d-none">
                            <img src="styles/assets/app/img/profit_pic1.svg" class="wow animate__zoomIn" data-wow-offset="50" data-wow-duration="1.3s" alt>
                            <img src="styles/assets/app/img/profit_pic2.svg" class="wow animate__zoomIn" data-wow-offset="50" data-wow-duration="1.35s" alt>
                            <img src="styles/assets/app/img/profit_pic3.svg" class="wow animate__zoomIn" data-wow-offset="50" data-wow-duration="1.4s" alt>
                            <img src="styles/assets/app/img/profit_pic4.svg" class="wow animate__zoomIn" data-wow-offset="50" data-wow-duration="1.45s" alt>
                            <svg class="profit__pic-svg" width="350" height="360" viewBox="0 0 350 360" fill="none" xmlns="http://www.w3.org/2000/svg">
                                <ellipse cx="175" cy="180" rx="174" ry="179" stroke="#1EA760" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" stroke-dasharray="4 10" />
                            </svg>
                        </div>
                    </div>
                    <div class="app__box-info ms-lg-auto d-flex flex-column">
                        <p class="app__box-subtitle wow animate__fadeInUp" data-wow-offset="80" data-wow-duration="1s">
                            <svg width="7px" height="8px">
                                <use xlink:href="#circle"></use>
                            </svg>
                            <span>We follow new tendencies</span>
                        </p>
                        <h2 class="app__box-title wow animate__fadeInUp" data-wow-offset="80" data-wow-duration="1.1s">How do we earn</h2>
                        <p class="app__box-text-border wow animate__fadeInUp" data-wow-offset="80" data-wow-duration="1.2s">It is difficult both for newcomers and experienced user to understand NFT diversity that appear at the market and buy the most advanced NFT of rising prices, but not counterfeit or stolen works appearing at the market as well.</p>
                        <p class="app__box-text wow animate__fadeInUp" data-wow-offset="80" data-wow-duration="1.3s">NFT popularity attracted a lot of gyps to the market who use works of other people to create NFT and claim authorship. Even experienced users can buy a borrowed work.</p>
                        <div class="app__box-card d-flex align-items-center wow animate__fadeInUp" data-wow-offset="80" data-wow-duration="1.4s">
                            <div class="app__box-card-ico">
                                <svg width="100%" height="100%">
                                    <use xlink:href="#findEye"></use>
                                </svg>
                            </div>
                            <p class="app__box-card-text">We check NFT reliability very thoroughly and work directly with authors for not to buy counterfeit. Our specialists study all works and their authors in details to understand perspectives of one or another work and earn from price increase.</p>
                        </div>
                        <p class="app__box-text-line wow animate__fadeInUp" data-wow-offset="80" data-wow-duration="1.5s">We support promising NFT authors and provide more of an accelerate to the fire to them. Being NFT-pioneers we help to settle in new market and establish reputation.</p>
                    </div>
                </div>
            </div>
        </section>
        <section class="darkSection darkSection_shadow-border mb-0" ng-controller="HomeOfferCtrl as vm">
            <video width="100%" height="962px" class=" darkSection__video " playsinline autoplay muted loop preload="metadata">
                <source src="styles/assets/app/video/videobg1.mp4" type="video/mp4">
                <source src="styles/assets/app/video/videobg1.webm" type="video/webm">
                <source src="styles/assets/app/video/videobg1.ogg" type="video/ogg">
            </video>
            <div class="container__app container__app_px-15">
                <div class="darkSection__box d-flex flex-column">
                    <h2 class="darkSection__title wow animate__fadeInUp" data-wow-offset="80" data-wow-duration="1s">Investment program</h2>
                    <p class="darkSection__desc wow animate__fadeInUp" data-wow-offset="80" data-wow-duration="1s">To develop the project in future, support of young and promising NFT authors, help them with works creation and purchase advanced NFT, we introduced investment program that allows any person to make money from quickly developing and highly profitable NFT market, even if he/she does not have any experience of investments and does not know a lot about NFT.</p>
                    <div class="darkSection__cards row">
                        <div class="col-12 col-lg-6 wow amimFadeIn amimFadeInBottom" data-delay="0.1s" data-wow-offset="80">
                            <div class="darkSection__cards-item d-flex flex-column flex-sm-row align-items-center">
                                <div class="darkSection__cards-item-ico me-3 mb-3 mb-sm-0">
                                    <svg width="76px" height="76px">
                                        <use xlink:href="#invest_ico_dark"></use>
                                    </svg>
                                </div>
                                <p class="darkSection__cards-item-text ms-1">We developed 4 investment plans suitable for each investor, and any person can select the most suitable and convenient one.</p>
                            </div>
                        </div>
                        <div class="col-12 col-lg-6 wow amimFadeIn amimFadeInBottom" data-delay="0.1s" data-wow-offset="80">
                            <div class="darkSection__cards-item d-flex flex-column flex-sm-row align-items-center">
                                <div class="darkSection__cards-item-ico me-3 mb-3 mb-sm-0">
                                    <svg width="76px" height="76px">
                                        <use xlink:href="#invest_ico_dark2"></use>
                                    </svg>
                                </div>
                                <p class="darkSection__cards-item-text ms-1">Dividend rate depends on the invested amount: the larger the investment is, the more income there is at the end. This is how any market works.</p>
                            </div>
                        </div>
                    </div>
                    <div class="row d-flex align-items-center">
                        <div class="col-lg-4">
                            <h4 class="darkSection__subtitle wow animate__fadeInUp" data-wow-offset="80" data-wow-duration="1s">Relevant investment programs:</h4>
                        </div>
                        <div class="col-lg-8">
                            <div class="darkSection-filter" ng-if="false">
                                <div class="darkSection-filter">
                                    <div class="darkSection-filter__item">
                                        <svg>
                                            <use ng-href="#[[ ::curr.code ]]" xlink:href></use>
                                        </svg>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="darkSection__elements row">
                        <!-- ngRepeat: plan in ::vm.plans | limitTo:4:0 -->
                        <div class="col-12 col-sm-6 col-lg-4 col-xl-3 mb-lg-3 mb-xl-0 ng-scope">
                            <div class="darkSection__elements-item d-flex flex-column">
                                <picture class="darkSection__elements-item-picture" sx-video="">
                                    <video playsinline="" autoplay="" loop="" muted="" disableremoteplayback="">
                                        <source ng-src="styles/assets/app/video/plan_1.mp4" type="video/mp4" src="styles/assets/app/video/plan_1.mp4">
                                    </video>
                                </picture>
                                <div class="darkSection__elements-item-author d-flex align-items-center">
                                    <picture class="darkSection__elements-item-author-pic me-2">
                                        <source ng-srcset="styles/assets/app/img/plan/a/1.jpeg 1x, styles/assets/app/img/plan/a/1@2x.jpeg 2x" srcset="styles/assets/app/img/plan/a/1.jpeg 1x, styles/assets/app/img/plan/a/1@2x.jpeg 2x">
                                        <img ng-src="styles/assets/app/img/plan/a/1.jpeg" alt="" src="styles/assets/app/img/plan/a/1.jpeg">
                                    </picture>
                                    <div class="darkSection__elements-item-author-info d-flex flex-column justify-content-center">
                                        <div class="darkSection__elements-item-author-info-title notranslate ng-binding">Rare</div>
                                        <p class="darkSection__elements-item-author-info-category notranslate ng-binding">By pantlink</p>
                                    </div>
                                </div>
                                <div class="darkSection__elements-item-information d-flex flex-column first_item" sx-tooltip="For next tariff you shall buy from <b>0 {include file="token.tpl"}</b> at stock exchange and top up your balance with them." title="Information" data-bs-offset="10,10" data-show="false">
                                    <table class="table darkSection__elements-item-information-table mb-0">
                                        <tbody>
                                            <tr>
                                                <td class="nowrap">Total ROI:</td>
                                                <td class="yellow nowrap notranslate ng-binding">288.00%</td>
                                            </tr>
                                        </tbody>
                                    </table>
                                    <!-- ngIf: ::plan.id > 1 -->
                                </div>

                                <div class="darkSection__elements-item-invest d-flex flex-column">
                                    <div class="darkSection__elements-item-invest-row d-flex justify-content-between">
                                        <span>Min investment:</span>
                                        <span class="upper notranslate ng-binding">
                                            <sum class="ng-binding">20</sum> usd
                                        </span>
                                    </div>
                                    <div class="darkSection__elements-item-invest-row d-flex justify-content-between">
                                        <span>Max investment:</span>
                                        <span class="upper notranslate nowrap ng-binding">
                                            <!-- ngSwitchWhen: true -->
                                            <sum class="ng-binding ng-scope">100</sum><!-- end ngSwitchWhen: -->
                                            <!-- ngSwitchWhen: false -->
                                            usd
                                        </span>
                                    </div>
                                    <div class="darkSection__elements-item-invest-row d-flex justify-content-between">
                                        <span>Investment time:</span>
                                        <span class="ng-binding">8 months</span>
                                    </div>
                                </div>
                                <div class="darkSection__elements-item-profit d-flex align-items-center justify-content-between">
                                    <span class="darkSection__elements-item-profit-text">Guaranteed income per hour</span>
                                    <span class="darkSection__elements-item-profit-percent notranslate ng-binding">0.05%</span>
                                </div>
                                {if $userinfo.logged != 1}
                                <a class="darkSection__elements-item-btn btn btn-primary btn_ico" href="?a=signup">
                                    <svg>
                                        <use xlink:href="#arr_right"></use>
                                    </svg>
                                    <span class="align-self-center">Register</span>
                                </a>
                                {else}
                                <a class="darkSection__elements-item-btn btn btn-primary btn_ico" href="?a=deposit">
                                    <svg>
                                        <use xlink:href="#arr_right"></use>
                                    </svg>
                                    <span class="align-self-center">Investment</span>
                                </a>
                                {/if}
                            </div>
                        </div><!-- end ngRepeat: plan in ::vm.plans | limitTo:4:0 -->
                        <div class="col-12 col-sm-6 col-lg-4 col-xl-3 mb-lg-3 mb-xl-0 ng-scope">
                            <div class="darkSection__elements-item d-flex flex-column">
                                <picture class="darkSection__elements-item-picture" sx-video="">
                                    <video playsinline="" autoplay="" loop="" muted="" disableremoteplayback="">
                                        <source ng-src="styles/assets/app/video/plan_2.mp4" type="video/mp4" src="styles/assets/app/video/plan_2.mp4">
                                    </video>
                                </picture>
                                <div class="darkSection__elements-item-author d-flex align-items-center">
                                    <picture class="darkSection__elements-item-author-pic me-2">
                                        <source ng-srcset="styles/assets/app/img/plan/a/2.jpeg 1x, styles/assets/app/img/plan/a/2@2x.jpeg 2x" srcset="styles/assets/app/img/plan/a/2.jpeg 1x, styles/assets/app/img/plan/a/2@2x.jpeg 2x">
                                        <img ng-src="styles/assets/app/img/plan/a/2.jpeg" alt="" src="styles/assets/app/img/plan/a/2.jpeg">
                                    </picture>
                                    <div class="darkSection__elements-item-author-info d-flex flex-column justify-content-center">
                                        <div class="darkSection__elements-item-author-info-title notranslate ng-binding">Epic</div>
                                        <p class="darkSection__elements-item-author-info-category notranslate ng-binding">By OZQ</p>
                                    </div>
                                </div>
                                <div class="darkSection__elements-item-information d-flex flex-column" sx-tooltip="For next tariff you shall buy from <b>100.02 {include file="token.tpl"}</b> at stock exchange and top up your balance with them." title="" data-bs-offset="10,10" data-show="true" data-bs-original-title="Information">
                                    <table class="table darkSection__elements-item-information-table mb-0">
                                        <tbody>
                                            <tr>
                                                <td class="nowrap">Total ROI:</td>
                                                <td class="yellow nowrap notranslate ng-binding">388.00%</td>
                                            </tr>
                                        </tbody>
                                    </table>
                                    <!-- ngIf: ::plan.id > 1 -->
                                    <div class="darkSection__elements-item-information-btn ng-scope">
                                        <svg width="15px" height="15px">
                                            <use xlink:href="#info"></use>
                                        </svg>
                                    </div><!-- end ngIf: ::plan.id > 1 -->
                                </div>

                                <div class="darkSection__elements-item-invest d-flex flex-column">
                                    <div class="darkSection__elements-item-invest-row d-flex justify-content-between">
                                        <span>Min investment:</span>
                                        <span class="upper notranslate ng-binding">
                                            <sum class="ng-binding">101</sum> usd
                                        </span>
                                    </div>
                                    <div class="darkSection__elements-item-invest-row d-flex justify-content-between">
                                        <span>Max investment:</span>
                                        <span class="upper notranslate nowrap ng-binding">
                                            <!-- ngSwitchWhen: true -->
                                            <sum class="ng-binding ng-scope">10,000</sum><!-- end ngSwitchWhen: -->
                                            <!-- ngSwitchWhen: false -->
                                            usd
                                        </span>
                                    </div>
                                    <div class="darkSection__elements-item-invest-row d-flex justify-content-between">
                                        <span>Investment time:</span>
                                        <span class="ng-binding">8 months</span>
                                    </div>
                                </div>
                                <div class="darkSection__elements-item-profit d-flex align-items-center justify-content-between">
                                    <span class="darkSection__elements-item-profit-text">Guaranteed income per hour</span>
                                    <span class="darkSection__elements-item-profit-percent notranslate ng-binding">0.05%</span>
                                </div>
                                {if $userinfo.logged != 1}
                                <a class="darkSection__elements-item-btn btn btn-primary btn_ico" href="?a=signup">
                                    <svg>
                                        <use xlink:href="#arr_right"></use>
                                    </svg>
                                    <span class="align-self-center">Register</span>
                                </a>
                                {else}
                                <a class="darkSection__elements-item-btn btn btn-primary btn_ico" href="?a=deposit">
                                    <svg>
                                        <use xlink:href="#arr_right"></use>
                                    </svg>
                                    <span class="align-self-center">Investment</span>
                                </a>
                                {/if}
                            </div>
                        </div><!-- end ngRepeat: plan in ::vm.plans | limitTo:4:0 -->
                        <div class="col-12 col-sm-6 col-lg-4 col-xl-3 mb-lg-3 mb-xl-0 ng-scope">
                            <div class="darkSection__elements-item d-flex flex-column">
                                <picture class="darkSection__elements-item-picture" sx-video="">
                                    <video playsinline="" autoplay="" loop="" muted="" disableremoteplayback="">
                                        <source ng-src="styles/assets/app/video/plan_3.mp4" type="video/mp4" src="styles/assets/app/video/plan_3.mp4">
                                    </video>
                                </picture>
                                <div class="darkSection__elements-item-author d-flex align-items-center">
                                    <picture class="darkSection__elements-item-author-pic me-2">
                                        <source ng-srcset="styles/assets/app/img/plan/a/3.jpeg 1x, styles/assets/app/img/plan/a/3@2x.jpeg 2x" srcset="styles/assets/app/img/plan/a/3.jpeg 1x, styles/assets/app/img/plan/a/3@2x.jpeg 2x">
                                        <img ng-src="styles/assets/app/img/plan/a/3.jpeg" alt="" src="styles/assets/app/img/plan/a/3.jpeg">
                                    </picture>
                                    <div class="darkSection__elements-item-author-info d-flex flex-column justify-content-center">
                                        <div class="darkSection__elements-item-author-info-title notranslate ng-binding">Legendary</div>
                                        <p class="darkSection__elements-item-author-info-category notranslate ng-binding">By Hcosen</p>
                                    </div>
                                </div>
                                <div class="darkSection__elements-item-information d-flex flex-column" sx-tooltip="For next tariff you shall buy from <b>250.04 {include file="token.tpl"}</b> at stock exchange and top up your balance with them." title="" data-bs-offset="10,10" data-show="true" data-bs-original-title="Information">
                                    <table class="table darkSection__elements-item-information-table mb-0">
                                        <tbody>
                                            <tr>
                                                <td class="nowrap">Total ROI:</td>
                                                <td class="yellow nowrap notranslate ng-binding">345.60%</td>
                                            </tr>
                                        </tbody>
                                    </table>
                                    <!-- ngIf: ::plan.id > 1 -->
                                    <div class="darkSection__elements-item-information-btn ng-scope">
                                        <svg width="15px" height="15px">
                                            <use xlink:href="#info"></use>
                                        </svg>
                                    </div><!-- end ngIf: ::plan.id > 1 -->
                                </div>

                                <div class="darkSection__elements-item-invest d-flex flex-column">
                                    <div class="darkSection__elements-item-invest-row d-flex justify-content-between">
                                        <span>Min investment:</span>
                                        <span class="upper notranslate ng-binding">
                                            <sum class="ng-binding">10,001</sum> usd
                                        </span>
                                    </div>
                                    <div class="darkSection__elements-item-invest-row d-flex justify-content-between">
                                        <span>Max investment:</span>
                                        <span class="upper notranslate nowrap ng-binding">
                                            <!-- ngSwitchWhen: true -->
                                            <sum class="ng-binding ng-scope">20,000</sum><!-- end ngSwitchWhen: -->
                                            <!-- ngSwitchWhen: false -->
                                            usd
                                        </span>
                                    </div>
                                    <div class="darkSection__elements-item-invest-row d-flex justify-content-between">
                                        <span>Investment time:</span>
                                        <span class="ng-binding">8 months</span>
                                    </div>
                                </div>
                                <div class="darkSection__elements-item-profit d-flex align-items-center justify-content-between">
                                    <span class="darkSection__elements-item-profit-text">Guaranteed income per hour</span>
                                    <span class="darkSection__elements-item-profit-percent notranslate ng-binding">0.06%</span>
                                </div>
                                {if $userinfo.logged != 1}
                                <a class="darkSection__elements-item-btn btn btn-primary btn_ico" href="?a=signup">
                                    <svg>
                                        <use xlink:href="#arr_right"></use>
                                    </svg>
                                    <span class="align-self-center">Register</span>
                                </a>
                                {else}
                                <a class="darkSection__elements-item-btn btn btn-primary btn_ico" href="?a=deposit">
                                    <svg>
                                        <use xlink:href="#arr_right"></use>
                                    </svg>
                                    <span class="align-self-center">Investment</span>
                                </a>
                                {/if}
                            </div>
                        </div><!-- end ngRepeat: plan in ::vm.plans | limitTo:4:0 -->
                        <div class="col-12 col-sm-6 col-lg-4 col-xl-3 mb-lg-3 mb-xl-0 ng-scope">
                            <div class="darkSection__elements-item d-flex flex-column">
                                <picture class="darkSection__elements-item-picture" sx-video="">
                                    <video playsinline="" autoplay="" loop="" muted="" disableremoteplayback="">
                                        <source ng-src="styles/assets/app/video/plan_4.mp4" type="video/mp4" src="styles/assets/app/video/plan_4.mp4">
                                    </video>
                                </picture>
                                <div class="darkSection__elements-item-author d-flex align-items-center">
                                    <picture class="darkSection__elements-item-author-pic me-2">
                                        <source ng-srcset="styles/assets/app/img/plan/a/4.jpeg 1x, styles/assets/app/img/plan/a/4@2x.jpeg 2x" srcset="styles/assets/app/img/plan/a/4.jpeg 1x, styles/assets/app/img/plan/a/4@2x.jpeg 2x">
                                        <img ng-src="styles/assets/app/img/plan/a/4.jpeg" alt="" src="styles/assets/app/img/plan/a/4.jpeg">
                                    </picture>
                                    <div class="darkSection__elements-item-author-info d-flex flex-column justify-content-center">
                                        <div class="darkSection__elements-item-author-info-title notranslate ng-binding">Genesis</div>
                                        <p class="darkSection__elements-item-author-info-category notranslate ng-binding">By Kepler</p>
                                    </div>
                                </div>
                                <div class="darkSection__elements-item-information d-flex flex-column" sx-tooltip="For next tariff you shall buy from <b>500.09 {include file="token.tpl"}</b> at stock exchange and top up your balance with them." title="Information" data-bs-offset="10,10" data-show="true">
                                    <table class="table darkSection__elements-item-information-table mb-0">
                                        <tbody>
                                            <tr>
                                                <td class="nowrap">Total ROI:</td>
                                                <td class="yellow nowrap notranslate ng-binding">445.60%</td>
                                            </tr>
                                        </tbody>
                                    </table>
                                    <!-- ngIf: ::plan.id > 1 -->
                                    <div class="darkSection__elements-item-information-btn ng-scope">
                                        <svg width="15px" height="15px">
                                            <use xlink:href="#info"></use>
                                        </svg>
                                    </div><!-- end ngIf: ::plan.id > 1 -->
                                </div>

                                <div class="darkSection__elements-item-invest d-flex flex-column">
                                    <div class="darkSection__elements-item-invest-row d-flex justify-content-between">
                                        <span>Min investment:</span>
                                        <span class="upper notranslate ng-binding">
                                            <sum class="ng-binding">20,001</sum> usd
                                        </span>
                                    </div>
                                    <div class="darkSection__elements-item-invest-row d-flex justify-content-between">
                                        <span>Max investment:</span>
                                        <span class="upper notranslate nowrap ng-binding">
                                            <!-- ngSwitchWhen: true -->
                                            <sum class="ng-binding ng-scope">50,000</sum><!-- end ngSwitchWhen: -->
                                            <!-- ngSwitchWhen: false -->
                                            usd
                                        </span>
                                    </div>
                                    <div class="darkSection__elements-item-invest-row d-flex justify-content-between">
                                        <span>Investment time:</span>
                                        <span class="ng-binding">8 months</span>
                                    </div>
                                </div>
                                <div class="darkSection__elements-item-profit d-flex align-items-center justify-content-between">
                                    <span class="darkSection__elements-item-profit-text">Guaranteed income per hour</span>
                                    <span class="darkSection__elements-item-profit-percent notranslate ng-binding">0.06%</span>
                                </div>
                                {if $userinfo.logged != 1}
                                <a class="darkSection__elements-item-btn btn btn-primary btn_ico" href="?a=signup">
                                    <svg>
                                        <use xlink:href="#arr_right"></use>
                                    </svg>
                                    <span class="align-self-center">Register</span>
                                </a>
                                {else}
                                <a class="darkSection__elements-item-btn btn btn-primary btn_ico" href="?a=deposit">
                                    <svg>
                                        <use xlink:href="#arr_right"></use>
                                    </svg>
                                    <span class="align-self-center">Investment</span>
                                </a>
                                {/if}
                            </div>
                        </div><!-- end ngRepeat: plan in ::vm.plans | limitTo:4:0 -->
                    </div>
                    <div class="darkSection__stat d-flex justify-content-center">
                        <div class="darkSection__stat-item d-flex align-items-center wow animate__fadeInUp" data-wow-offset="80" data-wow-duration="1s" style="visibility: visible; animation-duration: 1s; animation-name: fadeInUp;">
                            <div class="darkSection__stat-item-ico me-3">
                                <svg width="50px" height="50px">
                                    <use xlink:href="#invest"></use>
                                </svg>
                            </div>
                            <div class="darkSection__stat-item-info ms-1 d-flex flex-column">
                                <span>Invested:</span>
                                <span class="notranslate ng-binding">{$currency_sign} {$settings.info_box_deposit_funds_generated|number_format:2} USD</span>
                            </div>
                        </div>
                        <div class="darkSection__stat-item d-flex align-items-center wow animate__fadeInUp" data-wow-offset="80" data-wow-duration="1.1s" style="visibility: visible; animation-duration: 1.1s; animation-name: fadeInUp;">
                            <div class="darkSection__stat-item-ico me-3">
                                <svg width="50px" height="50px">
                                    <use xlink:href="#pay"></use>
                                </svg>
                            </div>
                            <div class="darkSection__stat-item-info ms-1 d-flex flex-column">
                                <span>Paid:</span>
                                <span class="notranslate ng-binding">{$currency_sign} {$settings.info_box_withdraw_funds_generated|number_format:2} USD</span>
                            </div>
                        </div>
                        <div class="darkSection__stat-item d-flex align-items-center wow animate__fadeInUp" data-wow-offset="80" data-wow-duration="1.2s" style="visibility: visible; animation-duration: 1.2s; animation-name: fadeInUp;">
                            <div class="darkSection__stat-item-ico me-3">
                                <svg width="50px" height="50px">
                                    <use xlink:href="#users"></use>
                                </svg>
                            </div>
                            <div class="darkSection__stat-item-info ms-1 d-flex flex-column">
                                <span>Investors:</span>
                                <span class="notranslate ng-binding">{($settings.info_box_total_accounts_generated+198656)|number_format}</span>
                            </div>
                        </div>
                        <div class="darkSection__stat-item d-flex align-items-center wow animate__fadeInUp" data-wow-offset="80" data-wow-duration="1.3s" style="visibility: visible; animation-duration: 1.3s; animation-name: fadeInUp;">
                            <div class="darkSection__stat-item-ico me-3">
                                <svg width="50px" height="50px">
                                    <use xlink:href="#works"></use>
                                </svg>
                            </div>
                            <div class="darkSection__stat-item-info ms-1 d-flex flex-column">
                                <span>Working days:</span>
                                <span class="notranslate ng-binding">{$settings.site_days_online_generated}</span>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </section>
        <section class="cryptocurrency" ng-controller="PaymentsSystemsCtrl as vm">
            <div class="container__app container__app_px-15">
                <div class="cryptocurrency__list">
                    <div class="row">
                        <div class="col-6 col-sm-4 col-lg-3 col-xl-2 d-flex align-items-center wow animate__fadeIn" ng-repeat="system in vm.systems" data-wow-offset="40" data-wow-duration="[[ ::system.animation ]]">
                            <div class="cryptocurrency__list-item">
                                <div class="cryptocurrency__list-item-ico">
                                    <svg width="40px" height="40px">
                                        <use ng-href="#[[ ::system.code ]]" xlink:href></use>
                                    </svg>
                                </div>
                                <span class="cryptocurrency__list-item-name notranslate" ng-bind="::system.name"></span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <section class="panthers">
            <div class="container__app container__app_px-15">
                <div class="app__box d-flex flex-column flex-xl-row">
                    <div class="d-flex d-xl-none justify-content-center">
                        <img src="styles/assets/app/img/panthers_mobile.svg" alt="" class="panthers__img-mobile" />
                    </div>
                    <div class="app__box-info d-flex flex-column">
                        <p class="app__box-subtitle wow animate__fadeInUp" data-wow-offset="80" data-wow-duration="1s">
                            <svg width="7px" height="8px">
                                <use xlink:href="#circle"></use>
                            </svg>
                            <span>Component of success</span>
                        </p>
                        <h2 class="app__box-title wow animate__fadeInUp" data-wow-offset="80" data-wow-duration="1.1s">Partner program</h2>
                        <p class="app__box-text-border wow animate__fadeInUp" data-wow-offset="80" data-wow-duration="1.3s">Partner program is an important component of any success. It is clear for us that development of any business requires advertisement and promotion.</p>
                        <p class="app__box-text wow animate__fadeInUp" data-wow-offset="80" data-wow-duration="1.4s">For promotion we specially developed 4 partner programs where everyone can find the most convenient terms and participate in our marketing.</p>
                        <h3 class="app__box-subtitle2 wow animate__fadeInUp" data-wow-offset="80" data-wow-duration="1.5s">To participate in one of them you should:</h3>
                        <div class="app__box-steps wow animate__fadeInUp" data-wow-offset="80" data-wow-duration="1.6s">
                            <div class="row">
                                <div class="col-12 col-sm-6 col-lg-4">
                                    <div class="app__box-steps-item app__box-steps-item_arrow d-flex flex-column">
                                        <div class="app__box-steps-item-ico app__box-steps-item-ico_panthers">
                                            <svg width="50px" height="50px">
                                                <use xlink:href="#pincle"></use>
                                            </svg>
                                        </div>
                                        {if $userinfo.logged != 1}
                                        <div class="app__box-steps-item-text">Register at our website</div>
                                        <a href="?a=signup" class="btn btn-primary btn_ico app__box-steps-item-btn btn_ico_small">
                                            <svg width="17px" height="17px">
                                                <use xlink:href="#arr_right_transparent"></use>
                                            </svg>
                                            <span>Register</span>
                                        </a>
                                        {else}
                                        <div class="app__box-steps-item-text">Dashboard Partner program</div>
                                        <a href="?a=referals" class="btn btn-primary btn_ico app__box-steps-item-btn btn_ico_small">
                                            <svg width="17px" height="17px">
                                                <use xlink:href="#arr_right_transparent"></use>
                                            </svg>
                                            <span>My Partner program</span>
                                        </a>
                                        {/if}
                                    </div>
                                </div>
                                <div class="col-12 col-sm-6 col-lg-4">
                                    <div class="app__box-steps-item app__box-steps-item_arrow d-flex flex-column">
                                        <div class="app__box-steps-item-ico app__box-steps-item-ico_panthers">
                                            <svg width="50px" height="50px">
                                                <use xlink:href="#link"></use>
                                            </svg>
                                        </div>
                                        {if $userinfo.logged != 1}
                                        <div class="app__box-steps-item-text">Copy your link in personal account</div>
                                        <a class="btn btn-primary btn_ico app__box-steps-item-btn btn_ico_small" href="?a=cust&page=partners">
                                            <svg width="17px" height="17px">
                                                <use xlink:href="#arr_right_transparent"></use>
                                            </svg>
                                            <span>Obtain link</span>
                                        </a>
                                        {else}
                                        <div class="app__box-steps-item-text">Copy your link in personal account</div>
                                        <a class="btn btn-primary btn_ico app__box-steps-item-btn btn_ico_small" href="?a=referallinks">
                                            <svg width="17px" height="17px">
                                                <use xlink:href="#arr_right_transparent"></use>
                                            </svg>
                                            <span>Obtain link</span>
                                        </a>
                                        {/if}
                                    </div>
                                </div>
                                <div class="col-12 col-sm-6 col-lg-4">
                                    <div class="app__box-steps-item d-flex flex-column">
                                        <div class="app__box-steps-item-ico app__box-steps-item-ico_panthers">
                                            <svg width="50px" height="50px">
                                                <use xlink:href="#megafon"></use>
                                            </svg>
                                        </div>
                                        <div class="app__box-steps-item-text">Select partner program</div>
                                        <a class="btn btn-primary btn_ico app__box-steps-item-btn btn_ico_small" href="?a=cust&page=partners">
                                            <svg width="17px" height="17px">
                                                <use xlink:href="#arr_right_transparent"></use>
                                            </svg>
                                            <span>Select marketing</span>
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <p class="app__box-text-line wow animate__fadeInUp" data-wow-offset="80" data-wow-duration="1.7s">Publish your unique referral link at crypto currency forums, distribute it in social nets, at websites and in weblogs for maximum number of people could know about our project and its investment possibilities.</p>
                        <div class="app__box-information d-flex flex-column flex-lg-row align-items-center justify-content-center justify-content-lg-between wow animate__fadeInUp" data-wow-offset="80" data-wow-duration="1.7s">
                            <div class="app__box-information-text d-flex flex-column flex-sm-row align-items-center">
                                <svg width="20px" height="20px">
                                    <use xlink:href="#info2"></use>
                                </svg>
                                <p class="mb-0 mt-2 mt-sm-0 mx-auto ms-sm-2">View all details about our partner program</p>
                            </div>
                            <div class="app__box-information-btn">
                                <a href="?a=cust&page=partners" class="btn btn-primary btn_ico btn_ico_small">
                                    <svg>
                                        <use xlink:href="#arr_right_transparent"></use>
                                    </svg>
                                    <span>Learn more</span>
                                </a>
                            </div>
                        </div>
                    </div>
                    <div class="app__box-pic app__box-pic_left panthers__pic">
                        <div class="app__box-pic-figure app__box-pic-figure_left wow animate__fadeInRight" data-wow-offset="50" data-wow-duration="1.25s">
                            <div class="app__box-pic-figure-box app__box-pic-figure-box_left">
                                <svg width="577" height="501" viewBox="0 0 577 501" fill="none" xmlns="http://www.w3.org/2000/svg">
                                    <path d="M127.859 478.62L8.95916 272.92C4.23836 264.753 1.87796 260.669 0.954137 256.327C0.136739 252.485 0.136739 248.515 0.954137 244.673C1.87796 240.331 4.23837 236.247 8.95919 228.08L127.859 22.3803L127.859 22.3801C132.572 14.2268 134.929 10.1501 138.224 7.1853C141.139 4.56201 144.573 2.58051 148.304 1.36911C152.519 1.86647e-06 157.228 1.92263e-06 166.646 2.03493e-06L410.354 4.94112e-06C419.772 5.05343e-06 424.481 5.10958e-06 428.696 1.36912C432.427 2.58051 435.861 4.56202 438.776 7.18531C442.071 10.1501 444.428 14.2269 449.141 22.3804L568.041 228.08C572.762 236.247 575.122 240.331 576.046 244.673C576.863 248.515 576.863 252.485 576.046 256.327C575.122 260.669 572.762 264.753 568.041 272.92L449.141 478.62C444.428 486.773 442.071 490.85 438.776 493.815C435.861 496.438 432.427 498.42 428.696 499.631C424.481 501 419.772 501 410.354 501L166.646 501C157.228 501 152.519 501 148.304 499.631C144.573 498.419 141.139 496.438 138.224 493.815C134.929 490.85 132.572 486.773 127.859 478.62Z" fill="white" />
                                </svg>
                            </div>
                            <img class="app__box-pic-figure-arrow app__box-pic-figure-arrow_left" src="styles/assets/app/img/app_arrow_left.svg" alt="NFT" />
                            <img class="app__box-pic-figure-green app__box-pic-figure-green_left" src="styles/assets/app/img/app_figure_green.svg" alt="NFT" />
                        </div>
                        <div class="app__box-pic-images">
                            <img src="styles/assets/app/img/panthers_pic1.svg" class="wow animate__zoomIn" data-wow-offset="0" data-wow-duration="1.3s" alt>
                            <img src="styles/assets/app/img/panthers_pic2.svg" class="wow animate__zoomIn" data-wow-offset="0" data-wow-duration="1.35s" alt>
                            <img src="styles/assets/app/img/panthers_pic3.svg" class="wow animate__zoomIn" data-wow-offset="0" data-wow-duration="1.4s" alt>
                            <img src="styles/assets/app/img/panthers_pic4.svg" class="wow animate__zoomIn" data-wow-offset="0" data-wow-duration="1.45s" alt>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <section class="start">
            <div class="container__app container__app_px-15">
                <div class="start__box">
                    <h3 class="start__box-title wow animate__fadeInUp" data-wow-offset="80" data-wow-duration="1.1s">Just 4 simple steps to start:</h3>
                    <div class="start__list d-flex justify-content-center">
                        <div class="start__list-item d-flex flex-column align-items-center wow animate__fadeIn" data-wow-offset="200" data-wow-duration="2s">
                            <div class="start__list-item-ico">
                                <svg width="68px" height="68px">
                                    <use xlink:href="#log-in"></use>
                                </svg>
                            </div>
                            {if $userinfo.logged != 1}
                            <div class="start__list-item-title">Register</div>
                            <div class="start__list-item-text">Quick registration</div>
                            <a class="btn btn-primary btn_ico" href="?a=signup">
                                <svg>
                                    <use xlink:href="#arr_right"></use>
                                </svg>
                                <span class="nowrap">Registration</span>
                            </a>
                            {else}
                            <div class="start__list-item-title">Dashboard Account</div>
                            <div class="start__list-item-text">Buy legendary NFT</div>
                            <a class="btn btn-primary btn_ico" href="?a=account">
                                <svg>
                                    <use xlink:href="#arr_right"></use>
                                </svg>
                                <span class="nowrap">My account</span>
                            </a>
                            {/if}
                        </div>
                        <div class="start__list-item d-flex flex-column align-items-center wow animate__fadeIn" data-wow-offset="200" data-wow-duration="2.2s">
                            <div class="start__list-item-ico">
                                <svg width="68px" height="68px">
                                    <use xlink:href="#money"></use>
                                </svg>
                            </div>
                            <div class="start__list-item-title">Top up</div>
                            <div class="start__list-item-text">Top up account in any way convenient for you</div>
                            {if $userinfo.logged != 1}
                            <a class="btn btn-primary btn_ico" href="?a=login">
                                <svg>
                                    <use xlink:href="#arr_right"></use>
                                </svg>
                                <span class="nowrap">Top up</span>
                            </a>
                            {else}
                            <a class="btn btn-primary btn_ico" href="?a=deposit">
                                <svg>
                                    <use xlink:href="#arr_right"></use>
                                </svg>
                                <span class="nowrap">Top up</span>
                            </a>
                            {/if}
                        </div>
                        <div class="start__list-item d-flex flex-column align-items-center wow animate__fadeIn" data-wow-offset="200" data-wow-duration="2.6s">
                            <div class="start__list-item-ico">
                                <svg width="68px" height="68px">
                                    <use xlink:href="#profit2"></use>
                                </svg>
                            </div>
                            <div class="start__list-item-title">Profit</div>
                            <div class="start__list-item-text">Your profit is charged automatically</div>
                            {if $userinfo.logged != 1}
                            <a class="btn btn-primary btn_ico" href="?a=login">
                                <svg>
                                    <use xlink:href="#arr_right"></use>
                                </svg>
                                <span class="nowrap">Check</span>
                            </a>
                            {else}
                            <a class="btn btn-primary btn_ico" href="?a=deposit_history">
                                <svg>
                                    <use xlink:href="#arr_right"></use>
                                </svg>
                                <span class="nowrap">Check</span>
                            </a>
                            {/if}
                        </div>
                        <div class="start__list-item d-flex flex-column align-items-center wow animate__fadeIn" data-wow-offset="200" data-wow-duration="2.8s">
                            <div class="start__list-item-ico">
                                <svg width="68px" height="68px">
                                    <use xlink:href="#give-money"></use>
                                </svg>
                            </div>
                            <div class="start__list-item-title">Profit withdrawal</div>
                            <div class="start__list-item-text">Request Withdrawal is executed instantly</div>
                            {if $userinfo.logged != 1}
                            <a class="btn btn-primary btn_ico" href="?a=login">
                                <svg>
                                    <use xlink:href="#arr_right"></use>
                                </svg>
                                <span class="nowrap">Withdraw</span>
                            </a>
                            {else}
                            <a class="btn btn-primary btn_ico" href="?a=withdraw">
                                <svg>
                                    <use xlink:href="#arr_right"></use>
                                </svg>
                                <span class="nowrap">Withdraw</span>
                            </a>
                            {/if}
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <section class="token">
            <div class="container__app container__app_px-15">
                <div class="app__box d-flex flex-column flex-xl-row justify-content-lg-between">
                    <div class="d-flex d-xl-none justify-content-center">
                        <img src="styles/assets/app/img/token_mobile.svg" class="token__img-mobile" alt>
                    </div>
                    <div class="app__box-pic app__box-pic_right token__pic">
                        <div class="app__box-pic-figure app__box-pic-figure_right wow animate__fadeInLeft" data-wow-offset="50" data-wow-duration="1.25s">
                            <div class="app__box-pic-figure-box app__box-pic-figure-box_right">
                                <svg width="577" height="501" viewBox="0 0 577 501" fill="none" xmlns="http://www.w3.org/2000/svg">
                                    <path d="M127.859 478.62L8.95916 272.92C4.23836 264.753 1.87796 260.669 0.954137 256.327C0.136739 252.485 0.136739 248.515 0.954137 244.673C1.87796 240.331 4.23837 236.247 8.95919 228.08L127.859 22.3803L127.859 22.3801C132.572 14.2268 134.929 10.1501 138.224 7.1853C141.139 4.56201 144.573 2.58051 148.304 1.36911C152.519 1.86647e-06 157.228 1.92263e-06 166.646 2.03493e-06L410.354 4.94112e-06C419.772 5.05343e-06 424.481 5.10958e-06 428.696 1.36912C432.427 2.58051 435.861 4.56202 438.776 7.18531C442.071 10.1501 444.428 14.2269 449.141 22.3804L568.041 228.08C572.762 236.247 575.122 240.331 576.046 244.673C576.863 248.515 576.863 252.485 576.046 256.327C575.122 260.669 572.762 264.753 568.041 272.92L449.141 478.62C444.428 486.773 442.071 490.85 438.776 493.815C435.861 496.438 432.427 498.42 428.696 499.631C424.481 501 419.772 501 410.354 501L166.646 501C157.228 501 152.519 501 148.304 499.631C144.573 498.419 141.139 496.438 138.224 493.815C134.929 490.85 132.572 486.773 127.859 478.62Z" fill="white" />
                                </svg>
                            </div>
                            <img class="app__box-pic-figure-arrow app__box-pic-figure-arrow_right" src="styles/assets/app/img/app_arrow_left.svg" alt>
                            <img class="app__box-pic-figure-green app__box-pic-figure-green_right" src="styles/assets/app/img/app_figure_green.svg" alt>
                        </div>
                        <div class="app__box-pic-images d-none alt">
                            <img src="styles/assets/app/img/token_pic1.svg" class="wow animate__zoomIn" data-wow-offset="0" data-wow-duration="1.3s" alt>
                            <img src="styles/assets/app/img/token_pic2.svg" class="wow animate__zoomIn" data-wow-offset="0" data-wow-duration="1.35s" alt>
                            <img src="styles/assets/app/img/token_pic3.svg" class="wow animate__zoomIn" data-wow-offset="0" data-wow-duration="1.4s" alt>
                            <img src="styles/assets/app/img/token_pic4_green.svg" class="wow animate__zoomIn" data-wow-offset="0" data-wow-duration="1.45s" alt>
                            <img src="styles/assets/app/img/token_pic5_white.svg" class="wow animate__zoomIn" data-wow-offset="0" data-wow-duration="1.5s" alt>
                        </div>
                    </div>
                    <div class="app__box-info ms-xl-auto d-flex flex-column">
                        <p class="app__box-subtitle wow animate__fadeInUp" data-wow-offset="80" data-wow-duration="1s">
                            <svg width="7px" height="8px">
                                <use xlink:href="#circle"></use>
                            </svg>
                            <span>Our own token</span>
                        </p>
                        <h2 class="app__box-title wow animate__fadeInUp" data-wow-offset="80" data-wow-duration="1.1s">Token of {$settings.site_name} project - {include file="token.tpl"}</h2>
                        <p class="app__box-text-border wow animate__fadeInUp" data-wow-offset="80" data-wow-duration="1.2s">To broad range of possibilities to increase income of investors we developed our own {include file="token.tpl"} token. It shall allow our investors both to increase their profit in the project and earn from token price rise.</p>
                        <p class="app__box-text wow animate__fadeInUp" data-wow-offset="80" data-wow-duration="1.3s">As demand for {include file="token.tpl"} token depends on {$settings.site_name} development, we shall actively develop the project and add new aspects for {include file="token.tpl"} token application that shall have positive consequences for dynamics of its price at stock exchanges.</p>
                        <div class="app__box-steps wow animate__fadeInUp" data-wow-offset="80" data-wow-duration="1.4s">
                            <div class="row">
                                <div class="col-12 col-lg-4">
                                    <div class="app__box-steps-item d-flex flex-xl-column flex-row align-items-center align-items-xl-start justify-content-between">
                                        <div class="app__box-steps-item-ico app__box-steps-item-ico_token">											
                                            <svg id="figure" width="50px" height="50px" viewBox="0 0 50 50"><defs><linearGradient id="Degradado_sin_nombre" x1="50.55" y1="26.42" x2="-0.18" y2="27.57" gradientTransform="matrix(1, 0, 0, -1, 0, 52)" gradientUnits="userSpaceOnUse"><stop offset="0" stop-color="#fedb63"/><stop offset="1" stop-color="#f0ba0d"/></linearGradient></defs><rect width="50" height="50" rx="10" style="fill:url(#Degradado_sin_nombre)"/><path d="M27.49,12.21l-5.64,3.28-2.77-1.61L14,16.75V20l-3,1.57v9.3l13.64,7.78,13.54-7.84V18.49ZM36,29.4l-5.44-3.2,0-2.87,2.64,1.47h0l.25.14.89.49,1.65.92Zm-19.78-8V18l2.86-1.62L21.86,18l5.63-3.27,2.78,1.63,0,3.2-2.3,1.34-.26.15-.15.08L26,22l-1,.57h0l-.25.14h0l-2.5,1.46-.37.21h0l-3.35,1.95,3.31,1.88,3-1.75h0l2.71-1.59h0l.13-.08.12-.07.19-.11,2.23-1.31,0,2.86L18.89,32.85l-5.67-3.24V22.92Zm17.26,3.23,0,0,.06-3.07,1.94,1ZM21.89,27.93l-2.76-1.57,2.81-1.63L22,27.31l0,.53Zm8.82-4.8,2.46-1.77.06,0,0,1.83,0,1.27-1-.57Zm-.19-.2V20.05l2.31,1.14Zm-1.8-2.14,1.52-.88v2.91l-2.11-1.68Zm.2,3-.91.53-.07-1.1-.13-1.9.07,0,2.19,1.84Zm-1.38-2.32.21,3-.16.09-2.3-1.79.63-.37Zm-5.24,6-.09-2.91h0l0,0,2.34,1.79-2.27,1.34,0,0ZM25.11,26l0-.58L25,23l.08,0,2.3,1.79Zm-.41-2.91.14,3-2.31-1.77,2-1.14ZM19.16,33,30.4,26.44l5.45,3.2L24.64,36.13ZM36,26.05l-2.32-1.29.18-.17L35.7,22.7l.28.12Zm0-3.6L30.51,19.6l0-3L36,19.76Z" style="fill:#22293b"/><rect x="18.01" y="19.38" width="3.46" height="3.77" transform="translate(-6.83 32.91) rotate(-70.79)" style="fill:#22293b"/></svg>
									   </div>
                                        <div class="app__box-steps-item-text">Planned price<br>of {include file="token.tpl"} token</div>
                                        <div class="btn btn-success app__box-steps-item-btn btn_nolink">
                                            <span class="notranslate">1 {include file="token.tpl"} = 500 USD</span>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-12 col-lg-4">
                                    <div class="app__box-steps-item d-flex flex-xl-column flex-row align-items-center align-items-xl-start justify-content-between">
                                        <div class="app__box-steps-item-ico app__box-steps-item-ico_token">
                                            <svg id="figure" width="50px" height="50px" viewBox="0 0 50 50"><defs><linearGradient id="Degradado_sin_nombre" x1="50.55" y1="26.42" x2="-0.18" y2="27.57" gradientTransform="matrix(1, 0, 0, -1, 0, 52)" gradientUnits="userSpaceOnUse"><stop offset="0" stop-color="#fedb63"/><stop offset="1" stop-color="#f0ba0d"/></linearGradient></defs><rect width="50" height="50" rx="10" style="fill:url(#Degradado_sin_nombre)"/><path d="M27.49,12.21l-5.64,3.28-2.77-1.61L14,16.75V20l-3,1.57v9.3l13.64,7.78,13.54-7.84V18.49ZM36,29.4l-5.44-3.2,0-2.87,2.64,1.47h0l.25.14.89.49,1.65.92Zm-19.78-8V18l2.86-1.62L21.86,18l5.63-3.27,2.78,1.63,0,3.2-2.3,1.34-.26.15-.15.08L26,22l-1,.57h0l-.25.14h0l-2.5,1.46-.37.21h0l-3.35,1.95,3.31,1.88,3-1.75h0l2.71-1.59h0l.13-.08.12-.07.19-.11,2.23-1.31,0,2.86L18.89,32.85l-5.67-3.24V22.92Zm17.26,3.23,0,0,.06-3.07,1.94,1ZM21.89,27.93l-2.76-1.57,2.81-1.63L22,27.31l0,.53Zm8.82-4.8,2.46-1.77.06,0,0,1.83,0,1.27-1-.57Zm-.19-.2V20.05l2.31,1.14Zm-1.8-2.14,1.52-.88v2.91l-2.11-1.68Zm.2,3-.91.53-.07-1.1-.13-1.9.07,0,2.19,1.84Zm-1.38-2.32.21,3-.16.09-2.3-1.79.63-.37Zm-5.24,6-.09-2.91h0l0,0,2.34,1.79-2.27,1.34,0,0ZM25.11,26l0-.58L25,23l.08,0,2.3,1.79Zm-.41-2.91.14,3-2.31-1.77,2-1.14ZM19.16,33,30.4,26.44l5.45,3.2L24.64,36.13ZM36,26.05l-2.32-1.29.18-.17L35.7,22.7l.28.12Zm0-3.6L30.51,19.6l0-3L36,19.76Z" style="fill:#22293b"/><rect x="18.01" y="19.38" width="3.46" height="3.77" transform="translate(-6.83 32.91) rotate(-70.79)" style="fill:#22293b"/></svg>
                                        </div>
                                        <div class="app__box-steps-item-text">Total emission<br>of {include file="token.tpl"} token</div>
                                        <div class="btn btn-secondary app__box-steps-item-btn btn_nolink">
                                            <span class="notranslate">500,000 {include file="token.tpl"}</span>
                                        </div>
                                        <button type="button" class="app__box-steps-item-information btn" sx-tooltip-alt="With this emission and demand the price shall grow very quickly. Out token does not depend on bitcoin rate and other altcoins. With each new investor {include file="token.tpl"} token shall grow up and that shall make it attractive for longterm investments." title="Information">
                                            <svg width="15px" height="15px">
                                                <use xlink:href="#info3"></use>
                                            </svg>
                                        </button>
                                    </div>
                                </div>
                                <div class="col-12 col-lg-4">
                                    <div class="app__box-steps-item d-flex flex-xl-column flex-row align-items-center align-items-xl-start justify-content-between">
                                        <div class="app__box-steps-item-ico app__box-steps-item-ico_token">
                                            <svg id="figure" width="50px" height="50px" viewBox="0 0 50 50"><defs><linearGradient id="Degradado_sin_nombre" x1="50.55" y1="26.42" x2="-0.18" y2="27.57" gradientTransform="matrix(1, 0, 0, -1, 0, 52)" gradientUnits="userSpaceOnUse"><stop offset="0" stop-color="#fedb63"/><stop offset="1" stop-color="#f0ba0d"/></linearGradient></defs><rect width="50" height="50" rx="10" style="fill:url(#Degradado_sin_nombre)"/><path d="M27.49,12.21l-5.64,3.28-2.77-1.61L14,16.75V20l-3,1.57v9.3l13.64,7.78,13.54-7.84V18.49ZM36,29.4l-5.44-3.2,0-2.87,2.64,1.47h0l.25.14.89.49,1.65.92Zm-19.78-8V18l2.86-1.62L21.86,18l5.63-3.27,2.78,1.63,0,3.2-2.3,1.34-.26.15-.15.08L26,22l-1,.57h0l-.25.14h0l-2.5,1.46-.37.21h0l-3.35,1.95,3.31,1.88,3-1.75h0l2.71-1.59h0l.13-.08.12-.07.19-.11,2.23-1.31,0,2.86L18.89,32.85l-5.67-3.24V22.92Zm17.26,3.23,0,0,.06-3.07,1.94,1ZM21.89,27.93l-2.76-1.57,2.81-1.63L22,27.31l0,.53Zm8.82-4.8,2.46-1.77.06,0,0,1.83,0,1.27-1-.57Zm-.19-.2V20.05l2.31,1.14Zm-1.8-2.14,1.52-.88v2.91l-2.11-1.68Zm.2,3-.91.53-.07-1.1-.13-1.9.07,0,2.19,1.84Zm-1.38-2.32.21,3-.16.09-2.3-1.79.63-.37Zm-5.24,6-.09-2.91h0l0,0,2.34,1.79-2.27,1.34,0,0ZM25.11,26l0-.58L25,23l.08,0,2.3,1.79Zm-.41-2.91.14,3-2.31-1.77,2-1.14ZM19.16,33,30.4,26.44l5.45,3.2L24.64,36.13ZM36,26.05l-2.32-1.29.18-.17L35.7,22.7l.28.12Zm0-3.6L30.51,19.6l0-3L36,19.76Z" style="fill:#22293b"/><rect x="18.01" y="19.38" width="3.46" height="3.77" transform="translate(-6.83 32.91) rotate(-70.79)" style="fill:#22293b"/></svg>
                                        </div>
                                        <div class="app__box-steps-item-text">{include file="token.tpl"} token price<br>at sales start</div>
                                        <div class="btn btn-light app__box-steps-item-btn btn_nolink">
                                            <span class="notranslate">1 {include file="token.tpl"} = 0.5 USD</i></span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="app__box-double-link d-flex flex-column flex-sm-row align-items-center  justify-content-sm-between wow animate__fadeInUp" data-wow-offset="80" data-wow-duration="1.5s">
                            <div class="app__box-information flex-grow-1 d-flex flex-column flex-sm-row justify-content-sm-between mx-0">
                                <div class="app__box-information-text d-flex flex-column flex-sm-row align-items-center">
                                    <svg width="20px" height="20px">
                                        <use xlink:href="#info2"></use>
                                    </svg>
                                    <p class="mb-0 mt-2 mt-sm-0 mx-auto ms-sm-2">Read the instructions for buying a {include file="token.tpl"} token</p>
                                </div>
                                <div class="app__box-information-btn">
                                    <a href="?a=cust&page=instructions" class="btn btn-primary btn_ico btn_ico_small">
                                        <svg width="17px" height="17px">
                                            <use xlink:href="#arr_right_transparent"></use>
                                        </svg>
                                        <span>Learn more</span>
                                    </a>
                                </div>
                            </div>
                            <!--
                            <a class="btn btn-success btn_ico mx-0 ms-lg-1" target="_blank" href="https://pancakeswap.finance/swap?inputCurrency=0xdac17f958d2ee523a2206206994597c13d831ec7">                              
								<svg id="green_btn" width="17px" height="17px" viewBox="0 0 25 25"><path d="M0,6.4C0,4.16,0,3,.44,2.18A4,4,0,0,1,2.18.44C3,0,4.16,0,6.4,0H18.6C20.84,0,22,0,22.82.44a4,4,0,0,1,1.74,1.74C25,3,25,4.16,25,6.4V18.6c0,2.24,0,3.36-.44,4.22a4,4,0,0,1-1.74,1.74c-.86.44-2,.44-4.22.44H6.4C4.16,25,3,25,2.18,24.56A4,4,0,0,1,.44,22.82C0,22,0,20.84,0,18.6Z" style="fill:#1cba6e"/><g style="opacity:0.78"><path d="M14.25,4.69l-3.41,2-1.68-1L6.08,7.43v2l-1.81.95V16l8.26,4.71L20.73,16V8.49ZM19.39,15.1,16.1,13.16l0-1.74,1.61.89h0l.15.08.54.3,1,.56Zm-12-4.88v-2l1.74-1,1.69,1,3.41-2,1.68,1,0,1.93L14.52,10l-.16.09-.09.06-.9.52-.59.34h0l-.15.08h0L11.11,12l-.22.13h0l-2,1.18,2,1.14,1.8-1.06h0l1.64-1h0l.08-.05.07,0,.12-.07,1.35-.79v1.73L9,17.19l-3.43-2V11.18Zm10.46,2h0l0-1.86,1.18.64Zm-7,2-1.67-1,1.7-1,0,1.56v.33ZM16.2,11.3l1.49-1.07,0,0,0,1.1,0,.78-.62-.35Zm-.12-.12V9.44l1.41.68ZM15,9.89l.92-.54v1.76l-1.28-1Zm.12,1.82-.55.32-.05-.67-.08-1.15,0,0,1.33,1.12Zm-.84-1.41.13,1.82-.1.06-1.39-1.09.38-.22Zm-3.17,3.63-.06-1.75h0l1.42,1.08-1.38.81h0Zm1.7-.87,0-.35-.07-1.5,0,0,1.4,1.09Zm-.25-1.76.09,1.84-1.4-1.07,1.18-.69Zm-3.35,6,6.81-4,3.29,1.93-6.79,3.93Zm10.18-4.21L18,12.29l.1-.11L19.22,11l.17.08Zm0-2.18L16.08,9.16l0-1.84,3.29,1.94Z" style="fill:#fff"/><rect x="8.51" y="9.03" width="2.1" height="2.29" transform="translate(-3.19 15.85) rotate(-70.79)" style="fill:#fff"/></g></svg>
                                <span class="nowrap">Buy {include file="token.tpl"}</span>
                            </a>
                            -->
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <section class="darkSection">
            <video width="100%" height="962px" class="darkSection__video" playsinline autoplay muted loop preload="metadata">
                <source src="styles/assets/app/video/videobg2.mp4" type="video/mp4">
                <source src="styles/assets/app/video/videobg2.webm" type="video/webm">
                <source src="styles/assets/app/video/videobg2.ogg" type="video/ogg">
            </video>
            <div class="container__app container__app_px-15">
                <div class="darkSection__box darkSection__box_arrows d-flex flex-column">
                    <h2 class="darkSection__title wow animate__fadeInUp" data-wow-offset="80" data-wow-duration="1s">Usage of token</h2>
                    <p class="darkSection__desc wow animate__fadeInUp" data-wow-offset="80" data-wow-duration="1s">Our token provides you the best possibilities to earn. Moving forward we shall continue developing our eco system adding new functions and methods of usage of our token to increase its liquidity and price.</p>
                    <div class="darkSection__token d-flex flex-column flex-lg-row justify-content-lg-between">
                        <div class="darkSection__token-list d-flex flex-column">
                            <div class="darkSection__token-list-item d-flex align-items-center wow animate__fadeInLeft" data-wow-offset="80" data-wow-duration="1s">
                                <div class="darkSection__token-list-item-ico">
                                    <svg width="50px" height="50px">
                                        <use xlink:href="#procent"></use>
                                    </svg>
                                </div>
                                <p class="darkSection__token-list-item-text my-0">Increased income from tariff plans of the Company</p>
                            </div>
                            <div class="darkSection__token-list-item d-flex align-items-center wow animate__fadeInLeft" data-wow-offset="80" data-wow-duration="1.1s">
                                <div class="darkSection__token-list-item-ico">
                                    <svg width="50px" height="50px">
                                        <use xlink:href="#pay2"></use>
                                    </svg>
                                </div>
                                <p class="darkSection__token-list-item-text my-0">Trade at crypto currency stock exchanges</p>
                            </div>
                            <div class="darkSection__token-list-item d-flex align-items-center wow animate__fadeInLeft" data-wow-offset="80" data-wow-duration="1.2s">
                                <div class="darkSection__token-list-item-ico">
                                    <svg width="50px" height="50px">
                                        <use xlink:href="#gift"></use>
                                    </svg>
                                </div>
                                <p class="darkSection__token-list-item-text my-0">Payment for BOUNTY participants</p>
                            </div>
                            <div class="darkSection__token-list-item d-flex align-items-center wow animate__fadeInLeft" data-wow-offset="80" data-wow-duration="1.3s">
                                <div class="darkSection__token-list-item-ico">
                                    <svg width="50px" height="50px">
                                        <use xlink:href="#pay3"></use>
                                    </svg>
                                </div>
                                <p class="darkSection__token-list-item-text my-0">Giveaway of unique gifts for {include file="token.tpl"} holders {include file="token.tpl"}</p>
                            </div>
                        </div>
                        <picture class="darkSection__token-earth mb-4 mb-lg-0 d-flex align-items-center justify-content-center">
                            <source media="(min-width: 992.00001px)" srcset="styles/assets/app/img/earth.svg">
                            <source media="(max-width: 992px)" srcset="styles/assets/app/img/earth_mob.svg">
                            <img src="styles/assets/app/img/earth.svg" alt>
                        </picture>
                        <div class="darkSection__token-list d-flex flex-column">
                            <div class="darkSection__token-list-item d-flex align-items-center wow animate__fadeInRight" data-wow-offset="80" data-wow-duration="1s">
                                <div class="darkSection__token-list-item-ico">
                                    <svg width="50px" height="50px">
                                        <use xlink:href="#users2"></use>
                                    </svg>
                                </div>
                                <p class="darkSection__token-list-item-text my-0">Increased income with partner program</p>
                            </div>
                            <div class="darkSection__token-list-item d-flex align-items-center wow animate__fadeInRight" data-wow-offset="80" data-wow-duration="1.1s">
                                <div class="darkSection__token-list-item-ico">
                                    <svg width="50px" height="50px">
                                        <use xlink:href="#finance"></use>
                                    </svg>
                                </div>
                                <p class="darkSection__token-list-item-text my-0">Bonus awards for project leaders</p>
                            </div>
                            <div class="darkSection__token-list-item d-flex align-items-center wow animate__fadeInRight" data-wow-offset="80" data-wow-duration="1.2s">
                                <div class="darkSection__token-list-item-ico">
                                    <svg width="50px" height="50px">
                                        <use xlink:href="#nft2"></use>
                                    </svg>
                                </div>
                                <p class="darkSection__token-list-item-text my-0">Buy legendary NFT just for {include file="token.tpl"} token</p>
                            </div>
                            <div class="darkSection__token-list-item d-flex align-items-center wow animate__fadeInRight" data-wow-offset="80" data-wow-duration="1.3s">
                                <div class="darkSection__token-list-item-ico">
                                    <svg width="50px" height="50px">
                                        <use xlink:href="#pay4"></use>
                                    </svg>
                                </div>
                                <p class="darkSection__token-list-item-text my-0">Withdrawal fee decrease</p>
                            </div>
                        </div>
                    </div>
                    <div class="darkSection__action d-flex flex-column flex-lg-row justify-content-lg-between">
                        <div class="darkSection__action-box d-flex flex-column">
                            <h3 class="darkSection__action-box-title darkSection__action-box-title_color wow animate__fadeInUp" data-wow-offset="80" data-wow-duration="1s">Install crypto currency wallet:</h3>
                            <p class="darkSection__action-box-text wow animate__fadeInUp" data-wow-offset="80" data-wow-duration="1.1s">Keep crypto currency at secure wallets only, so we recommend to use MetaMask or Binance Chain Wallet.</p>
                            <div class="darkSection__action-box-cards d-flex flex-column flex-lg-row wow animate__fadeInUp" data-wow-offset="80" data-wow-duration="1.2s">
                                <a class="darkSection__action-box-cards-item d-flex" target="_blank" href="https://metamask.io/download.html">
                                    <div class="darkSection__action-box-cards-item-ico me-3">
                                        <svg width="50px" height="50px">
                                            <use xlink:href="#fox"></use>
                                        </svg>
                                    </div>
                                    <p class="darkSection__action-box-cards-item-text ms-1 notranslate">Install<br>MetaMask</p>
                                </a>
                                <a class="darkSection__action-box-cards-item d-flex" target="_blank" href="https://www.binance.com/en/download">
                                    <div class="darkSection__action-box-cards-item-ico me-3">
                                        <svg width="50px" height="50px">
                                            <use xlink:href="#wallet"></use>
                                        </svg>
                                    </div>
                                    <p class="darkSection__action-box-cards-item-text ms-1 notranslate">Install<br>Binance Wallet</p>
                                </a>
                            </div>
                        </div>
                        <div class="darkSection__action-box d-flex flex-column">
                            <h3 class="darkSection__action-box-title wow animate__fadeInUp" data-wow-offset="80" data-wow-duration="1s">Recommended browsers:</h3>
                            <p class="darkSection__action-box-text wow animate__fadeInUp" data-wow-offset="80" data-wow-duration="1.1s">For correct wallets operation we recommend the following browsers according to your choice.</p>
                            <div class="darkSection__action-box-browser wow animate__fadeInUp" data-wow-offset="80" data-wow-duration="1.2s">
                                <div class="row">
                                    <div class="col-6 col-sm-3">
                                        <a class="darkSection__action-box-browser-item d-flex flex-column align-items-center" href="https://www.google.com/chrome/" target="_blank">
                                            <div class="darkSection__action-box-browser-item-icon">
                                                <svg width="40px" height="40px">
                                                    <use xlink:href="#chrome"></use>
                                                </svg>
                                            </div>
                                            <span class="darkSection__action-box-browser-item-title notranslate">Chrome</span>
                                        </a>
                                    </div>
                                    <div class="col-6 col-sm-3">
                                        <a class="darkSection__action-box-browser-item d-flex flex-column align-items-center" href="https://www.mozilla.org/ru/firefox/new/" target="_blank">
                                            <div class="darkSection__action-box-browser-item-icon">
                                                <svg width="40px" height="40px">
                                                    <use xlink:href="#firefox"></use>
                                                </svg>
                                            </div>
                                            <span class="darkSection__action-box-browser-item-title notranslate">Firefox</span>
                                        </a>
                                    </div>
                                    <div class="col-6 col-sm-3">
                                        <a class="darkSection__action-box-browser-item d-flex flex-column align-items-center" href="https://brave.com/download/" target="_blank">
                                            <div class="darkSection__action-box-browser-item-icon">
                                                <svg width="32px" height="40px">
                                                    <use xlink:href="#brave"></use>
                                                </svg>
                                            </div>
                                            <span class="darkSection__action-box-browser-item-title notranslate">Brave</span>
                                        </a>
                                    </div>
                                    <div class="col-6 col-sm-3">
                                        <a class="darkSection__action-box-browser-item d-flex flex-column align-items-center" href="https://vivaldi.com/en/download/" target="_blank">
                                            <div class="darkSection__action-box-browser-item-icon">
                                                <svg width="40px" height="40px">
                                                    <use xlink:href="#vivaldi"></use>
                                                </svg>
                                            </div>
                                            <span class="darkSection__action-box-browser-item-title notranslate">Vivaldi</span>
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <section class="cards">
            <div class="container__app container__app_px-15">
                <div class="cards__box row">
                    <div class="col-12 col-lg-6 wow animate__fadeInLeft" data-wow-offset="80" data-wow-duration="1s">
                        <div class="cards__box-item d-flex flex-column">
                            <h3 class="cards__box-item-title">Possibilities to earn</h3>
                            <p class="cards__box-item-text">Except for basic functions, {include file="token.tpl"} can be sold and bought at stock exchanges earning from rate increase.<br> We shall continue developing eco system adding new functions and methods of {include file="token.tpl"} usage to increase its liquidity and price.</p>
                            <p class="cards__box-item-text_line d-flex">Follow updates and news to be aware of stay up-to-date with the latest events.</p>
                        </div>
                    </div>
                    <div class="col-12 col-lg-6 wow animate__fadeInRight" data-wow-offset="80" data-wow-duration="1s">
                        <div class="cards__box-item d-flex flex-column mt-3 mt-lg-0">
                            <h3 class="cards__box-item-title">Our own NFT</h3>
                            <p class="cards__box-item-text">As the Company develops we plan to start launch of our own NFT and sell them at auctions in future.<br> Such lots are distributed at Christies platform as well - it is one of the most famous auction house.</p>
                            <p class="cards__box-item-text_line d-flex">Looking ahead the established reputation and the team of talented authors shall help us to promote at the market easily.</p>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <section class="papper">
            <div class="container__app container__app_px-15">
                <div class="papper__box d-flex flex-column flex-lg-row justify-content-lg-between wow animate__fadeInUp" data-wow-offset="80" data-wow-duration="1s">
                    <div class="papper__box-info d-flex flex-column">
                        <div class="papper__box-info-logo">
                            <img src="styles/assets/app/img/logo-dark.svg" height="48px" alt>
                        </div>
                        <p class="app__box-subtitle">
                            <svg width="10px" height="11px">
                                <use xlink:href="#circle2"></use>
                            </svg>
                            <span>For your information</span>
                        </p>
                        <h3 class="papper__box-title">Official <b>Certificate Of Registration</b></h3>
                        <a class="btn btn-light papper__box-btn btn_ico" target="_blank" href="styles/docs/Certificate_Of_Registration.pdf">
                            <svg width="25px" height="25px">
                                <use xlink:href="#arr_right_transparent"></use>
                            </svg>
                            <span>Follow</span>
                        </a>
                    </div>
                    <div class="papper__box-picture d-flex align-items-center justify-content-center">
                        <img src="styles/assets/app/img/paper.svg" width="378px" height="276.98px" alt>
                    </div>
                </div>
            </div>
        </section>
        <section class="map">
            <div class="container__app">
                <div class="map-box wow animate__fadeInUp" data-wow-offset="80" data-wow-duration="1s">
                    <div class="map-list">
                        <div class="map-item">
                            <svg width="36px" height="36px">
                                <use xlink:href="#map-icon-1"></use>
                            </svg>
                            <p>Company number (ACN)</p>
                            <span>14669000</span>
                        </div>
                        <div class="map-item">
                            <svg width="36px" height="36px">
                                <use xlink:href="#map-icon-2"></use>
                            </svg>
                            <p>Company title</p>
                            <span>ORA HOLDINGS LTD</span>
                        </div>
                        <div class="map-item">
                            <svg width="36px" height="36px">
                                <use xlink:href="#map-icon-3"></use>
                            </svg>
                            <p>Company address</p>
                            <span>United Kingdom</span>
                        </div>
                        <div class="map-item">
                            <svg width="36px" height="36px">
                                <use xlink:href="#map-icon-4"></use>
                            </svg>
                            <p>Registration date</p>
                            <span>2/16/2023</span>
                        </div>
                    </div>
                    <div class="map-docs">
                        <img src="styles/assets/app/img/docs@2x.png" alt>
                        <a class="btn btn-secondary btn_ico" target="_blank" href="styles/docs/Certificate_Of_Registration.pdf">
                            <svg width="17px" height="17px">
                                <use xlink:href="#arr_right_transparent_white"></use>
                            </svg>
                            <span>Show documents</span>
                        </a>
                        <a class="btn btn-secondary btn_ico mt-2" target="_blank" href="https://find-and-update.company-information.service.gov.uk/company/14669000">
                            <svg width="17px" height="17px">
                                <use xlink:href="#arr_right_transparent_white"></use>
                            </svg>
                            <span>Verify company</span>
                        </a>
                    </div>
                    <div class="map-marker">
                     <a class="text-decoration-underline text-primary notranslate ng-binding ng-scope" target="_blank" href="https://maps.app.goo.gl/4jzxBfLBXxzjaPjp9">105 , 2, LOCAL CRESCENT, BLOCK A HULME STREET, SALFORD, GREATER MANCHESTER, UNITED KINGDOM M5 4ZB</a>
                    </div>
                </div>
            </div>
        </section>
        <section class="application">
            <div class="container__app container__app_px-15">
                <div class="application__box">
                    <h2 class="application__box-title wow animate__fadeInUp" data-wow-offset="80" data-wow-duration="1s">Short term goals of {$settings.site_name}:</h2>
                    <div class="row">
                        <div class="col-12 col-lg-6">
                            <div class="application__box-main d-flex flex-column wow animate__fadeInLeft" data-wow-offset="80" data-wow-duration="1s">
                                <h3 class="application__box-main-name wow animate__fadeInLeft" data-wow-offset="80" data-wow-duration="2.1s">Being available soon at <br><b>iOS</b> and <b>Android</b></h3>
                                <p class="application__box-main-desc wow animate__fadeInLeft" data-wow-offset="80" data-wow-duration="2.1s">Synchronize data between desktop and mobile application and manage your means wherever you are.</p>
                                <div class="mb-3 wow animate__fadeInLeft" data-wow-offset="80" data-wow-duration="2.2s">
                                    <img src="styles/assets/app/img/IosDownload.svg" height="44px" alt="App Store">
                                </div>
                                <div class="mt-1 wow animate__fadeInLeft" data-wow-offset="80" data-wow-duration="2.3s">
                                    <img src="styles/assets/app/img/GooglePlayDownload.svg" height="44px" alt="Google Play">
                                </div>
                            </div>
                        </div>
                        <div class="col-12 col-lg-6">
                            <div class="row">
                                <div class="col-12 col-sm-6 wow animate__fadeInRight" data-wow-offset="80" data-wow-duration="1s">
                                    <div class="application__box-variables">
                                        <div class="application__box-variables-ico">
                                            <img src="styles/assets/app/img/certik-logotype.svg" alt>
                                        </div>
                                        <h4 class="application__box-variables-title">Audit from Certik</h4>
                                        <p class="my-0 application__box-variables-text">We plan to pass total audit for reliability and security</p>
                                    </div>
                                </div>
                                <div class="col-12 col-sm-6 wow animate__fadeInRight" data-wow-offset="80" data-wow-duration="1.1s">
                                    <div class="application__box-variables">
                                        <div class="application__box-variables-ico">
                                            <img src="styles/assets/app/img/Quantstamp.svg" alt>
                                        </div>
                                        <h4 class="application__box-variables-title">Audit from Quantstamp</h4>
                                        <p class="my-0 application__box-variables-text">We plan to pass total audit for reliability and security</p>
                                    </div>
                                </div>
                                <div class="col-12 col-sm-6 wow animate__fadeInRight" data-wow-offset="80" data-wow-duration="1.2s">
                                    <div class="application__box-variables">
                                        <div class="application__box-variables-ico">
                                            <img src="styles/assets/app/img/huobi.svg" alt>
                                        </div>
                                        <h4 class="application__box-variables-title">Listing at Huobi</h4>
                                        <p class="my-0 application__box-variables-text">We plan to place {include file="token.tpl"} at centralized Huobi stock exchange</p>
                                    </div>
                                </div>
                                <div class="col-12 col-sm-6 wow animate__fadeInRight" data-wow-offset="80" data-wow-duration="1.3s">
                                    <div class="application__box-variables">
                                        <div class="application__box-variables-ico">
                                            <img src="styles/assets/app/img/19.png" srcset="styles/assets/app/img/19.png 1x, styles/assets/app/img/19@2x.png 2x" alt>
                                        </div>
                                        <h4 class="application__box-variables-title">Listing at Bit-Z</h4>
                                        <p class="my-0 application__box-variables-text">We plan to place {include file="token.tpl"} at centralized Bit-Z stock exchange</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
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
        <section class="news" ng-controller="HomeNewsCtrl as vm">
            <div class="container__app container__app_px-15" ng-if="vm.news.length">
                <div class="news__box">
                    <div class="news__box-head d-flex flex-column flex-sm-row align-items-center justify-content-sm-between">
                        <h4 class="news__box-head-title wow animate__fadeInLeft">News:</h4>
                        <a href="?a=news" class="news__box-head-link d-flex align-items-center">
                            <span>All news</span>
                            <svg width="25px" height="25px">
                                <use xlink:href="#arrorw_right_link"></use>
                            </svg>
                        </a>
                    </div>
                    <div class="news__box-list">
                        <div class="row">
                            <article class="col-12 col-sm-6 col-lg-4 col-xl-3 ng-scope ng-isolate-scope">
                                <a class="news__box-list-item pointer js-read_more">
                                    <picture class="news__box-list-item-picture">
                                        <img alt="" src="styles/assets/app/img/News-1-eng.png">
                                    </picture>
                                </a>
                            </article>
                            <article class="col-12 col-sm-6 col-lg-4 col-xl-3 ng-scope ng-isolate-scope">
                                <a class="news__box-list-item pointer js-read_more">
                                    <picture class="news__box-list-item-picture">
                                        <img alt="" src="styles/assets/app/img/News-2-eng.png">
                                    </picture>
                                </a>
                            </article>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </main>
    {include file="footer_home.tpl"}
    {include file="data_home.tpl"}


    <script>
        document.write("<script type='text/javascript' src='styles/assets/app/swiper-6.8.4.min.js?v=" + Date.now() + "'><\/script>");
    </script>
    <script>
        $(document).ready(function() {
            // Swiper: Slider


            const swiper = new Swiper('.swiper', {
                // Optional parameters
                //direction: 'vertical',
                loop: true,
                slidesPerView: 2,
                spaceBetween: 20,

                // Navigation arrows
                navigation: {
                    nextEl: '.swiper-button-next',
                    prevEl: '.swiper-button-prev',
                },

                // Autplay News
                autoplay: {
                    delay: 5500,
                    disableOnInteraction: true,
                },

                // And if we need scrollbar
                scrollbar: {
                    el: '.swiper-scrollbar',
                },
            });

        });
    </script>

</body>



</html>
