{include file="account_head.tpl"}

<body data-new-gr-c-s-check-loaded="14.1029.0" data-gr-ext-installed="" style="position: relative; min-height: 100%; top: 0px;">

    <section class="dashboard d-flex ng-scope" ng-controller="AccountLayoutCtrl as alc">
        <aside id="menuflexcolumnz" class="menu d-flex flex-column">
            <div class="menu__logo-box d-flex justify-content-between">
                <a href="/" class="menu__logo d-flex align-items-center justify-content-lg-start">
                    <img class="header__logo-svg" src="styles/assets/app/img/18.png" srcset="styles/assets/app/img/18.png 1x, styles/assets/app/img/18@2x.png 2x" alt="">
                </a>
                <button id="btnmenulogoclosejs" class="btn menu__logo-close js-burger d-flex d-lg-none" ng-click="alc.toggleAside(false)">
                    <svg width="22" height="22" viewBox="0 0 22 22" fill="none" xmlns="http://www.w3.org/2000/svg">
                        <path d="M1.13713 22.0001C0.84734 22.0001 0.557546 21.8898 0.337369 21.668C-0.104644 21.226 -0.104644 20.5094 0.337369 20.0674L20.0732 0.331509C20.5152 -0.110503 21.2318 -0.110503 21.6739 0.331509C22.1159 0.773521 22.1159 1.49013 21.6739 1.93242L1.93828 21.668C1.71645 21.8884 1.42665 22.0001 1.13713 22.0001Z" fill="white"></path>
                        <path d="M20.8744 22.0001C20.5846 22.0001 20.2951 21.8898 20.0746 21.668L0.337369 1.93242C-0.104644 1.49013 -0.104644 0.773521 0.337369 0.331509C0.779381 -0.110503 1.49599 -0.110503 1.93828 0.331509L21.6739 20.0674C22.1159 20.5094 22.1159 21.226 21.6739 21.668C21.452 21.8884 21.1625 22.0001 20.8744 22.0001Z" fill="white"></path>
                    </svg>
                </button>
            </div>
            {include file="account_lang.tpl"}
            <div sx-menu="active">
                <h2 class="menu__title">Information</h2>
                <div class="menu__box d-flex flex-column">
                    <a class="menu__box-el d-flex align-items-center" href="?a=account">
                        <svg width="20px" height="20px">
                            <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 20 20" id="panel">
                                <g clip-path="url(#panel_a)" fill="#F8CC3D">
                                    <path d="M4.792 15a.625.625 0 0 1-.625-.625V2.292a.625.625 0 0 1 1.25 0v12.083c0 .345-.28.625-.625.625z"></path>
                                    <path d="M19.375 7.083H4.792a.625.625 0 0 1 0-1.25h14.583a.625.625 0 0 1 0 1.25zM19.375 11.25H4.792a.625.625 0 0 1 0-1.25h14.583a.625.625 0 0 1 0 1.25z"></path>
                                    <path d="M18.542 15H1.458A1.46 1.46 0 0 1 0 13.542V3.125a1.46 1.46 0 0 1 1.458-1.458h17.084A1.46 1.46 0 0 1 20 3.125v10.417A1.46 1.46 0 0 1 18.542 15zM1.458 2.917a.208.208 0 0 0-.208.208v10.417c0 .115.093.208.208.208h17.084a.208.208 0 0 0 .208-.208V3.125a.208.208 0 0 0-.208-.208H1.458zM13.541 18.333H6.458a.625.625 0 0 1 0-1.25h7.083a.625.625 0 0 1 0 1.25z"></path>
                                    <path d="M10 18.333a.625.625 0 0 1-.625-.625v-3.333a.625.625 0 0 1 1.25 0v3.333c0 .345-.28.625-.625.625z"></path>
                                </g>

                            </svg>
                        </svg> <span>Control panel</span>
                    </a>
                    <a class="menu__box-el d-flex align-items-center active" href="?a=deposit_list">
                        <svg width="20px" height="20px">
                            <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 20 20" id="invest2">
                                <path d="M8.125 0A.625.625 0 0 0 7.5.625v1.874C3.251 3.106 0 6.815 0 11.2 0 16.052 3.926 20 8.75 20c4.334 0 8.02-3.251 8.649-7.5h1.976c.345 0 .625-.28.625-.625C20 5.327 14.672 0 8.125 0zm.625 18.75c-4.136 0-7.5-3.386-7.5-7.55 0-3.701 2.696-6.847 6.25-7.444v8.119c0 .345.28.625.625.625h8.016c-.616 3.555-3.738 6.25-7.391 6.25zm0-7.5V1.269c5.361.312 9.669 4.619 9.981 9.981H8.75z" fill="#F8CC3D"></path>
                            </svg>
                        </svg> <span>Investments records</span>
                    </a>
                </div>
                <h2 class="menu__title">Finances</h2>
                <div class="menu__box d-flex flex-column">
                    <a class="menu__box-el d-flex align-items-center pointer" href="?a=deposit">
                        <svg width="20px" height="20px">
                            <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 20 20" id="money2">
                                <path d="M16.875 1.875H3.125a.625.625 0 0 0 0 1.25h13.75a.625.625 0 0 0 0-1.25zM18.75 4.375H1.25c-.689 0-1.25.561-1.25 1.25v11.25c0 .689.561 1.25 1.25 1.25h17.5c.689 0 1.25-.561 1.25-1.25V5.625c0-.689-.561-1.25-1.25-1.25zm0 1.25v2.436a3.132 3.132 0 0 1-2.436-2.436h2.436zm-17.5 0h2.436A3.132 3.132 0 0 1 1.25 8.061V5.625zm0 11.25v-2.436a3.132 3.132 0 0 1 2.436 2.436H1.25zm13.814 0H4.936a4.357 4.357 0 0 0-3.686-3.686V9.31a4.357 4.357 0 0 0 3.686-3.686h10.127a4.36 4.36 0 0 0 3.687 3.686v3.877a4.36 4.36 0 0 0-3.686 3.687zm3.686.625v-.625h-2.436a3.132 3.132 0 0 1 2.436-2.436v2.436h.001l-.001.625z" fill="#F8CC3D"></path>
                                <path d="M10 8.75a2.503 2.503 0 0 0-2.5 2.5c0 1.379 1.121 2.5 2.5 2.5s2.5-1.121 2.5-2.5-1.121-2.5-2.5-2.5zm0 3.75c-.689 0-1.25-.561-1.25-1.25S9.311 10 10 10s1.25.561 1.25 1.25-.561 1.25-1.25 1.25z" fill="#F8CC3D"></path>
                            </svg>
                        </svg> <span>Open deposit</span>
                    </a>
                    <a class="menu__box-el d-flex align-items-center" href="?a=withdraw">
                        <svg width="20px" height="20px">
                            <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 20 20" id="wallet2">
                                <path d="M19.375 8.75h-.625V5.625A.625.625 0 0 0 18.125 5H16.25V3.125a.625.625 0 0 0-.625-.625H1.875A1.877 1.877 0 0 0 0 4.375v11.25C0 16.659.841 17.5 1.875 17.5h16.25c.345 0 .625-.28.625-.625V13.75h.625c.345 0 .625-.28.625-.625v-3.75a.625.625 0 0 0-.625-.625zm-17.5-5H15V5H1.875a.625.625 0 0 1 0-1.25zM17.5 16.25H1.875a.625.625 0 0 1-.625-.625v-9.49c.196.07.405.115.625.115H17.5v2.5H15a2.503 2.503 0 0 0-2.5 2.5c0 1.379 1.121 2.5 2.5 2.5h2.5v2.5zm1.25-3.75H15c-.689 0-1.25-.561-1.25-1.25S14.311 10 15 10h3.75v2.5z" fill="#F8CC3D"></path>
                            </svg>
                        </svg> <span>Request Withdrawal</span>
                    </a>
                    {if $settings.use_add_funds}
                    <a class="menu__box-el d-flex align-items-center" href="?a=add_funds">
                        <svg width="23px" height="23px">
                            <svg id="wallet2" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 22.19 17.1">
                                <path d="M4.48,16.25h2.7a2.6,2.6,0,0,0,.06-.56,2.91,2.91,0,0,0-2.91-2.91,3.73,3.73,0,0,0-.48,0v2.81A.63.63,0,0,0,4.48,16.25Z" transform="translate(-0.41 -2.5)" style="fill:none" />
                                <path d="M2.6,15.63V13.35a2.9,2.9,0,1,0,4,4.15H4.48A1.88,1.88,0,0,1,2.6,15.63Z" transform="translate(-0.41 -2.5)" style="fill:none" />
                                <path d="M8.24,15.69a3.55,3.55,0,0,1-.06.56H20.1v-2.5H17.6a2.5,2.5,0,0,1,0-5h2.5V6.25H4.48a1.9,1.9,0,0,1-.63-.11v5.68a3.73,3.73,0,0,1,.48,0A3.92,3.92,0,0,1,8.24,15.69Z" transform="translate(-0.41 -2.5)" style="fill:none" />
                                <path d="M3.85,4.38A.63.63,0,0,0,4.48,5H17.6V3.75H4.48A.63.63,0,0,0,3.85,4.38Z" transform="translate(-0.41 -2.5)" style="fill:none" />
                                <path d="M16.35,11.25A1.25,1.25,0,0,0,17.6,12.5h3.75V10H17.6A1.25,1.25,0,0,0,16.35,11.25Z" transform="translate(-0.41 -2.5)" style="fill:none" />
                                <path d="M22,8.75h-.63V5.63A.63.63,0,0,0,20.73,5H18.85V3.13a.63.63,0,0,0-.62-.63H4.48A1.88,1.88,0,0,0,2.6,4.38v7.81a4.11,4.11,0,0,1,1.25-.37V6.14a1.9,1.9,0,0,0,.63.11H20.1v2.5H17.6a2.5,2.5,0,0,0,0,5h2.5v2.5H8.18a3.75,3.75,0,0,1-.41,1.25h13a.62.62,0,0,0,.62-.62V13.75H22a.62.62,0,0,0,.62-.62V9.38A.63.63,0,0,0,22,8.75ZM17.6,5H4.48a.63.63,0,1,1,0-1.25H17.6Zm3.75,7.5H17.6a1.25,1.25,0,0,1,0-2.5h3.75Z" transform="translate(-0.41 -2.5)" style="fill:#f8cc3d" />
                                <polygon points="4.32 12.79 4.32 11.13 3.51 11.13 3.51 12.79 1.91 12.79 1.91 13.57 3.51 13.57 3.51 15.25 4.32 15.25 4.32 13.57 5.92 13.57 5.92 12.79 4.32 12.79" style="fill:#f8cc3d" />
                                <path d="M8.24,15.69a3.92,3.92,0,0,0-3.91-3.91,3.73,3.73,0,0,0-.48,0,4.11,4.11,0,0,0-1.25.37A3.9,3.9,0,1,0,7.77,17.5a3.75,3.75,0,0,0,.41-1.25A3.55,3.55,0,0,0,8.24,15.69ZM4.33,18.6A2.91,2.91,0,0,1,2.6,13.35a3,3,0,0,1,1.25-.53,3.73,3.73,0,0,1,.48,0,2.91,2.91,0,0,1,2.91,2.91,2.6,2.6,0,0,1-.06.56,2.84,2.84,0,0,1-.59,1.25A2.93,2.93,0,0,1,4.33,18.6Z" transform="translate(-0.41 -2.5)" style="fill:#f8cc3d" /></svg>
                        </svg> <span>Top up Account</span>
                    </a>
                    {/if}
                    <a class="menu__box-el d-flex align-items-center" href="?a=deposit_history">
                        <svg width="20px" height="20px">
                            <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 20 20" id="history">
                                <path d="M10 20C4.486 20 0 15.514 0 10S4.486 0 10 0s10 4.486 10 10-4.486 10-10 10zm0-18.75c-4.825 0-8.75 3.925-8.75 8.75s3.925 8.75 8.75 8.75 8.75-3.925 8.75-8.75S14.825 1.25 10 1.25z" fill="#F8CC3D"></path>
                                <path d="M14.375 15.417a.62.62 0 0 1-.442-.184l-4.375-4.375a.625.625 0 0 1-.183-.441V4.583a.625.625 0 0 1 1.25 0v5.574l4.192 4.192a.625.625 0 0 1-.442 1.068z" fill="#F8CC3D"></path>
                            </svg>
                        </svg> <span>Transaction History</span>
                    </a>
                </div>
                <h2 class="menu__title">Management</h2>
                <div class="menu__box d-flex flex-column">
                    <a class="menu__box-el d-flex align-items-center" href="?a=cust&page=address">
                        <svg width="20px" height="20px">
                            <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 20 20" id="address">
                                <g clip-path="url(#address_a)" fill="#F8CC3D">
                                    <path d="M17.709 20H3.126a2.294 2.294 0 0 1-2.292-2.292V2.292A2.294 2.294 0 0 1 3.126 0h12.916c.345 0 .625.28.625.625v2.708h1.042c.345 0 .625.28.625.625v15.417c0 .345-.28.625-.625.625zM2.084 4.332v13.376c0 .575.467 1.042 1.042 1.042h13.958V4.583H3.126c-.375 0-.73-.09-1.042-.25zM3.126 1.25c-.575 0-1.042.468-1.042 1.042 0 .574.467 1.041 1.042 1.041h12.291V1.25H3.126z"></path>
                                    <path d="M10.208 15.833a.63.63 0 0 1-.329-.092L7.5 14.276 5.12 15.74a.627.627 0 0 1-.953-.533V3.958h1.25V14.09l1.755-1.08a.628.628 0 0 1 .656 0l1.755 1.08V3.958h1.25v11.25a.625.625 0 0 1-.624.625z"></path>
                                </g>

                            </svg>
                        </svg> <span>Wallet Addresses</span>
                    </a>
                    <a class="menu__box-el d-flex align-items-center" href="?a=referals">
                        <svg width="20px" height="20px">
                            <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 20 20" id="links">
                                <path d="m18.047 11.877-2.735-.603v-.853c1.86-.194 2.6-.561 2.6-1.258 0-1.405-.914-4.63-1.077-5.197-.023-.835-.183-1.312-.583-1.746-.286-.303-.691-.37-1.016-.424-.11-.018-.276-.046-.323-.07a3.775 3.775 0 0 0-1.815-.476c-1.075.048-2.138.516-2.85 1.254a.626.626 0 0 0 .902.867c.486-.506 1.252-.84 1.96-.871.448.01.807.106 1.206.325.23.124.489.166.715.205.116.02.287.044.307.045.117.126.237.256.248.999.001.056.01.112.026.166.271.925.946 3.434 1.039 4.669-.271.096-.888.232-2.013.32a.625.625 0 0 0-.576.623v1.925c0 .293.204.548.49.61l3.226.713c.563.123.972.633.972 1.213V15H15.5a.625.625 0 0 0 0 1.25h3.875c.345 0 .625-.28.625-.625v-1.313a2.508 2.508 0 0 0-1.953-2.434zM11.781 14.181l-2.746-.596v-.81c.144-.209.279-.473.418-.749.103-.205.26-.514.325-.587.444-.437.92-.979 1.067-1.695.147-.713-.039-1.079-.145-1.224 0-.502 0-1.419-.175-2.091-.021-.812-.18-1.294-.56-1.709-.287-.31-.69-.377-1.015-.433-.105-.017-.262-.043-.31-.067-.546-.304-1.103-.452-1.789-.47-1.387.053-3.094.935-3.666 2.521-.163.45-.163 1.123-.146 1.893v.305c-.1.196-.287.562-.139 1.275.147.72.623 1.261 1.063 1.691.07.079.23.39.335.596.138.274.273.538.417.744v.811l-2.746.596A2.513 2.513 0 0 0 0 16.625v1.5c0 .345.28.625.625.625h12.5c.345 0 .625-.28.625-.625v-1.5a2.515 2.515 0 0 0-1.969-2.444zM12.5 17.5H1.25v-.875c0-.584.414-1.098.985-1.221l3.239-.703a.626.626 0 0 0 .492-.611v-1.534a.673.673 0 0 0-.185-.443c-.081-.085-.262-.44-.37-.65-.197-.387-.367-.72-.57-.917-.31-.303-.639-.666-.719-1.055-.058-.284-.023-.352.03-.455.057-.111.142-.281.142-.516l-.004-.381c-.01-.439-.025-1.175.072-1.443C4.742 5.641 5.954 5.035 6.86 5c.449.011.801.105 1.175.313.227.126.482.168.707.207.111.019.28.048.302.048.1.107.223.24.233.958.002.056.01.113.027.168.147.506.147 1.397.147 1.826 0 .235.085.404.143.516.052.104.087.171.027.457-.077.386-.391.733-.717 1.053-.203.198-.372.532-.567.917-.106.21-.285.565-.365.647a.624.624 0 0 0-.186.446v1.534c0 .294.205.549.492.611l3.24.703c.57.123.983.637.983 1.221v.875z" fill="#F8CC3D"></path>
                            </svg>
                        </svg> <span>Referral Program</span>
                    </a>
                    <!--
                    <a class="menu__box-el d-flex align-items-center" href="?a=referallinks">
                        <svg width="20px" height="20px">
                            <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 20 20" id="ads">
                                <path d="M19.586.036a.63.63 0 0 0-.694.191A13.157 13.157 0 0 1 9.352 5H3.125a.625.625 0 0 0-.625.625v.625H.625A.625.625 0 0 0 0 6.875v3.75c0 .346.28.625.625.625H2.5v.625c0 .345.28.625.625.625h.38l2.511 6.698A1.243 1.243 0 0 0 7.185 20c.334 0 .651-.132.879-.37l1.502-1.488c.384-.384.475-.984.23-1.446L7.7 12.5h1.655c3.705.17 7.181 1.91 9.54 4.772a.62.62 0 0 0 .692.191.628.628 0 0 0 .414-.588V.625a.628.628 0 0 0-.414-.59zM2.5 10H1.25V7.5H2.5V10zm6.185 7.256-1.5 1.499L4.84 12.5h1.461l2.384 4.756zm.065-6.006h-5v-5h5v5zm10 4.028A14.412 14.412 0 0 0 10 11.305v-5.11a14.413 14.413 0 0 0 8.75-3.974v13.057z" fill="#F8CC3D"></path>
                            </svg>
                        </svg> <span>Ads &amp; banners</span>
                    </a>-->
                    <a class="menu__box-el d-flex align-items-center" href="?a=edit_account">
                        <svg width="20px" height="20px">
                            <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 20 20" id="sett">
                                <path d="M10.012 14.167A4.171 4.171 0 0 1 5.846 10a4.171 4.171 0 0 1 4.166-4.167A4.171 4.171 0 0 1 14.18 10a4.171 4.171 0 0 1-4.167 4.167zm0-7.084A2.92 2.92 0 0 0 7.096 10a2.92 2.92 0 0 0 2.916 2.917A2.92 2.92 0 0 0 12.93 10a2.92 2.92 0 0 0-2.917-2.917z" fill="#F8CC3D"></path>
                                <path d="M11.398 20H8.626a1.445 1.445 0 0 1-1.4-1.126l-.351-1.56a7.656 7.656 0 0 1-1.629-.946l-1.519.48a1.444 1.444 0 0 1-1.686-.657L.659 13.8a1.457 1.457 0 0 1 .268-1.778l1.177-1.082a8.435 8.435 0 0 1 0-1.882L.931 7.982a1.455 1.455 0 0 1-.277-1.776l1.39-2.404c.322-.577 1.032-.851 1.68-.652l1.521.48a7.667 7.667 0 0 1 1.629-.945l.351-1.562A1.444 1.444 0 0 1 8.626 0h2.772c.667 0 1.256.473 1.4 1.126l.352 1.56c.572.242 1.117.559 1.628.946l1.52-.48c.653-.201 1.36.074 1.686.657l1.382 2.39c.33.591.219 1.32-.268 1.778l-1.177 1.082a8.64 8.64 0 0 1 0 1.882l1.171 1.076a1.453 1.453 0 0 1 .277 1.776l-1.39 2.405c-.322.576-1.03.852-1.68.65l-1.522-.48a7.667 7.667 0 0 1-1.628.945l-.352 1.562A1.442 1.442 0 0 1 11.398 20zm-6.024-4.95c.143 0 .284.048.397.142.573.47 1.197.834 1.858 1.077.2.074.347.243.393.45l.425 1.883c.019.086.094.148.18.148H11.4a.186.186 0 0 0 .18-.147l.425-1.885a.625.625 0 0 1 .393-.449 6.432 6.432 0 0 0 1.858-1.077.623.623 0 0 1 .586-.114l1.834.579c.087.027.18-.005.22-.077l1.39-2.404a.204.204 0 0 0-.04-.241l-1.406-1.293a.625.625 0 0 1-.195-.553c.055-.369.083-.736.083-1.09 0-.354-.028-.72-.083-1.09a.625.625 0 0 1 .195-.552l1.41-1.297a.204.204 0 0 0 .032-.245L16.9 4.425a.191.191 0 0 0-.227-.082l-1.831.578a.624.624 0 0 1-.586-.114 6.42 6.42 0 0 0-1.858-1.078.624.624 0 0 1-.393-.449l-.424-1.883a.191.191 0 0 0-.183-.147H8.626a.186.186 0 0 0-.18.147l-.425 1.885a.626.626 0 0 1-.393.449 6.413 6.413 0 0 0-1.857 1.077.627.627 0 0 1-.585.114L3.35 4.343c-.085-.026-.18.005-.22.077L1.74 6.823a.204.204 0 0 0 .042.244l1.405 1.29c.153.14.226.348.195.553-.055.37-.082.736-.082 1.09 0 .354.027.72.082 1.09a.626.626 0 0 1-.195.553l-1.41 1.296a.204.204 0 0 0-.032.245l1.381 2.39c.044.079.14.11.227.083l1.832-.579a.608.608 0 0 1 .188-.029z" fill="#F8CC3D"></path>
                            </svg>
                        </svg> <span>Account settings</span>
                    </a>
                    {if $settings.use_tfa}
                    <a class="menu__box-el d-flex align-items-center" href="?a=security">
                        <svg width="20px" height="20px" id="2fa" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 17.4 19.83">
                            <path d="M6.59,9.14a.64.64,0,0,0-.92,0,.65.65,0,0,0,0,.93l3.25,3.25a.64.64,0,0,0,.46.19.63.63,0,0,0,.46-.2l5.68-5.68a.65.65,0,0,0,0-.93.68.68,0,0,0-.92,0L9.38,11.92Z" transform="translate(-1.49 -0.09)" style="fill:#f8cc3d" />
                            <path d="M18.48,2.55,10.36.12a.5.5,0,0,0-.34,0L1.91,2.55a.58.58,0,0,0-.42.56V12C1.49,15.72,7,19,10,19.9a.5.5,0,0,0,.17,0,.47.47,0,0,0,.17,0c3-.93,8.53-4.18,8.53-7.86V3.11A.59.59,0,0,0,18.48,2.55Zm-.75,1V12c0,2.73-4.44,5.67-7.54,6.7-3.1-1-7.54-4-7.54-6.7V3.54l7.54-2.26Z" transform="translate(-1.49 -0.09)" style="fill:#f8cc3d" /></svg>
                        <span>Security Settings</span>
                    </a>
                    {/if}
                    <a class="menu__box-el d-flex align-items-center" href="?a=logout">
                        <svg width="20px" height="20px">
                            <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 20 20" id="exit">
                                <g clip-path="url(#exit_a)" fill="#F8CC3D">
                                    <path d="M19.348 10.652H6.739a.652.652 0 0 1 0-1.304h12.609a.652.652 0 0 1 0 1.304z"></path>
                                    <path d="M10.218 14.13a.647.647 0 0 1-.461-.19L6.278 10.46a.653.653 0 0 1 0-.923L9.757 6.06a.653.653 0 0 1 .922.923L7.662 10l3.017 3.018a.652.652 0 0 1-.461 1.112z"></path>
                                    <path d="M9.565 19.565C4.291 19.565 0 15.274 0 10 0 4.726 4.291.435 9.565.435A9.516 9.516 0 0 1 18.468 6.5a.653.653 0 0 1-1.214.477A8.219 8.219 0 0 0 9.565 1.74c-4.555 0-8.26 3.706-8.26 8.261s3.705 8.26 8.26 8.26a8.22 8.22 0 0 0 7.689-5.237.653.653 0 0 1 1.214.477 9.516 9.516 0 0 1-8.903 6.065z"></path>
                                </g>

                            </svg>
                        </svg> <span>Logout</span>
                    </a>
                </div>
            </div>
            <div class="menu-banner">
                <img src="styles/assets/app/img/menu-banner-bg.png" alt="">
                <h3>Send</h3>
                <span>your feedback</span>
                <p>about our platform</p> <a class="btn btn-primary" href="?a=support">Send feedback</a>
            </div>
            <p class="menu__vers ng-binding" ng-bind="::appVersion">ver 2.0.7.1.1</p>
        </aside>
        <div class="dashboard__box">
            <div class="row flex-nowrap">
                <div class="dashboard__col1">
                    <div class="dashboard__main flex-grow-1">
                        <div class="dashboard__main-head d-flex flex-column">
                            <div class="dashboard__main-head-mobile d-flex justify-content-between">
                                <button id="dashboardMenuhead" class="btn dashboard__main-head-btn dashboard__main-head-btn_menu js-open-menu js-burger d-flex d-lg-none justify-content-start" ng-click="alc.toggleAside(true)">
                                    <svg width="22" height="24" viewBox="0 0 22 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                                        <path d="M22 19.5H0V22.5H22V19.5Z" fill="#fff"></path>
                                        <path d="M22 10.5H0V13.5H22V10.5Z" fill="#fff"></path>
                                        <path d="M22 1.5H0V4.50003H22V1.5Z" fill="#fff"></path>
                                    </svg>
                                </button>
                                <a href="/" class="dashboard__logo d-flex d-lg-none align-items-center justify-content-lg-start m-0">
                                    <img class="header__logo-svg" src="styles/assets/app/img/18.png" srcset="styles/assets/app/img/18.png 1x, styles/assets/app/img/18@2x.png 2x" alt="">
                                </a>
                                <button id="AccountdeState" type="button" class="btn dashboard__main-head-btn dashboard__main-head-btn_user js-sidebar" ng-click="alc.toggleBside()">
                                    <!-- ngSwitchWhen: true -->
                                    <!-- ngSwitchWhen: false --><span ng-switch-when="false" class="ng-scope">Open</span>
                                    <!-- end ngSwitchWhen: -->
                                    <svg width="12px" height="12px">
                                        <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 12 12" id="arr_right_grey">
                                            <path d="M9.334 5.532 3.994.192A.652.652 0 0 0 3.528 0a.652.652 0 0 0-.464.192l-.393.393a.657.657 0 0 0 0 .928l4.484 4.485-4.49 4.489a.652.652 0 0 0-.19.464c0 .176.067.34.19.464l.394.393a.652.652 0 0 0 .464.192c.176 0 .34-.068.464-.192l5.346-5.345a.653.653 0 0 0 .191-.465.652.652 0 0 0-.191-.466z" fill="#5C677D"></path>
                                        </svg>
                                    </svg>
                                </button>
                            </div>
                            <div class="d-flex flex-column flex-grow-1">
                                <p class="app__box-subtitle vis">
                                    <svg width="12px" height="12px">
                                        <svg id="circle" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" viewBox="0 0 7 8">
                                            <defs>
                                                <linearGradient id="Degradado_sin_nombre_12" y1="4" x2="7" y2="4" gradientUnits="userSpaceOnUse">
                                                    <stop offset="0" stop-color="#f2bf19" />
                                                    <stop offset="1" stop-color="#fed85d" />
                                                </linearGradient>
                                            </defs>
                                            <path d="M.66,1.61,2.84.27A1.71,1.71,0,0,1,3.33,0a.65.65,0,0,1,.34,0,1.71,1.71,0,0,1,.49.25L6.34,1.61a2.07,2.07,0,0,1,.45.33A.94.94,0,0,1,7,2.25a2.13,2.13,0,0,1,0,.58V5.17a2,2,0,0,1,0,.57.76.76,0,0,1-.17.32,2.07,2.07,0,0,1-.45.33L4.16,7.73A1.71,1.71,0,0,1,3.67,8a.65.65,0,0,1-.34,0,1.71,1.71,0,0,1-.49-.25L.66,6.39a2.07,2.07,0,0,1-.45-.33A.94.94,0,0,1,0,5.75a2.13,2.13,0,0,1,0-.58V2.83a2,2,0,0,1,0-.57.76.76,0,0,1,.17-.32A2.07,2.07,0,0,1,.66,1.61Z" transform="translate(0 0)" style="fill:url(#Degradado_sin_nombre_12)" />
                                        </svg>
                                    </svg> <span>Information</span>
                                </p>
                                <div class="app__box-title-wrap">
                                    <h2 class="app__box-title vis mb-0">Investments records</h2>
                                    {include file="account_coin.tpl"}
                                </div>
                            </div>
                        </div>

                        <div id="mainwalletbox-set" class="dashboard__wallet d-flex flex-column ng-scope">
                            <!-- end Empty Zone -->
                        </div>

                        <script defer src="styles/assets/app/video.js"></script>

                        <div class="dashboard__box ng-scope" ng-controller="DepositsCtrl as vm">
                            <!-- ngIf: vm.ready -->
                            
                            {if $totals.active_deposit == "0.00"}
                            <div class="animated fadeIn ng-scope" ng-if="vm.ready">


                                <!-- ngIf: !vm.deposits.length -->
                                <div class="row ng-scope" ng-if="!vm.deposits.length">
                                    <div class="col-12">
                                        <div class="withdraw-banner withdraw-banner_nft">
                                            <img src="styles/assets/app/img/nft-bg.png" alt="">
                                            <h3>Unfortunately you do not have open deposits yet</h3>
                                            <span>Fix it!</span>
                                            <a href="?a=deposit" class="btn">Investment</a>
                                        </div>
                                    </div>
                                </div>
                                <!-- end ngIf: !vm.deposits.length -->


                            </div>

                            {else}
							
                            <div class="animated fadeIn ng-scope" ng-if="vm.ready">

                                <!-- content -->                             
                                <div class="row ng-scope" ng-if="vm.deposits.length">
                                    
                                    <!-- list --> 
									{counter name=rex_10 start=0 print=0}
									<h2 class="dashboard__box-subtitle">Active deposits:</h2>
									{foreach from=$plans item=p}
									{foreach from=$p.deposits item=d}
                                    <div class="col-12 col-xl-6">
                                        
										
										
										
                                      
                                        <div class="card dashboard_card ng-scope">
                                            <div class="deposits__item">
											   {foreach from=$p.plans item=o}
                                                <div class="row">
                                                    <div class="col-12 col-sm-3">
                                                        <picture class="deposits__item-picture" sx-video="">
                                                            <video width="100%" playsinline="" autoplay="" loop="" muted="" disableremoteplayback="">
                                                                <source type="video/mp4" src="styles/assets/app/video/{if $o.name == "Rare" || $o.name=="RARE" || $o.name=="rare" }plan_1{elseif $o.name=="Epic" || $o.name=="EPIC" || $o.name=="epic" }plan_2{elseif $o.name=="Legendary" || $o.name=="LEGENDARY" || $o.name=="legendary" }plan_3{elseif $o.name=="Genesis" || $o.name=="GENESIS" || $o.name=="genesis" }plan_4{else}plan_{counter name=rex_10}{/if}.mp4">
                                                            </video>
                                                        </picture>    
                                                        {if $p.use_compound}
                                                        <a href="{"?a=change_compound&deposit=`$d.id`"|encurl}">														
														<button class="deposits__item-btn btn btn-primary btn_ico ng-scope" title="Change Compounding Percent {$d.compound}%">
                                                            <svg width="25px" height="25px">
                                                                <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 25 25" id="add">
                                                                    <path d="M0 6.4c0-2.24 0-3.36.436-4.216A4 4 0 0 1 2.184.436C3.04 0 4.16 0 6.4 0h12.2c2.24 0 3.36 0 4.216.436a4 4 0 0 1 1.748 1.748C25 3.04 25 4.16 25 6.4v12.2c0 2.24 0 3.36-.436 4.216a4 4 0 0 1-1.748 1.748C21.96 25 20.84 25 18.6 25H6.4c-2.24 0-3.36 0-4.216-.436a4 4 0 0 1-1.748-1.748C0 21.96 0 20.84 0 18.6V6.4z" fill="#FFDC67"></path>
                                                                    <g opacity=".7" fill="#1E2026">
                                                                        <path d="M12.5 4C7.813 4 4 7.813 4 12.5c0 4.687 3.813 8.5 8.5 8.5 4.687 0 8.5-3.813 8.5-8.5C21 7.813 17.187 4 12.5 4zm0 15.786c-4.017 0-7.286-3.269-7.286-7.286 0-4.017 3.269-7.286 7.286-7.286 4.017 0 7.286 3.269 7.286 7.286 0 4.017-3.269 7.286-7.286 7.286z"></path>
                                                                        <path d="M12.5 8.452a.607.607 0 0 0-.607.608v6.88a.607.607 0 1 0 1.214 0V9.06a.607.607 0 0 0-.607-.608z"></path>
                                                                        <path d="M15.94 11.893H9.06a.607.607 0 1 0 0 1.214h6.88a.607.607 0 1 0 0-1.214z"></path>
                                                                    </g>
                                                                </svg>
                                                            </svg>
                                                        </button>
														</a>
														{/if}
														{if $d.can_withdraw}
														<a href="{"?a=withdraw_principal&deposit=`$d.id`"|encurl}">	                  
														<button class="deposits__item-btn btn btn-secondary btn_ico ng-scope" title="Release Deposit">
                                                            <svg width="25px" height="25px">
                                                                <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 25 25" id="add">
                                                                    <path d="M0 6.4c0-2.24 0-3.36.436-4.216A4 4 0 0 1 2.184.436C3.04 0 4.16 0 6.4 0h12.2c2.24 0 3.36 0 4.216.436a4 4 0 0 1 1.748 1.748C25 3.04 25 4.16 25 6.4v12.2c0 2.24 0 3.36-.436 4.216a4 4 0 0 1-1.748 1.748C21.96 25 20.84 25 18.6 25H6.4c-2.24 0-3.36 0-4.216-.436a4 4 0 0 1-1.748-1.748C0 21.96 0 20.84 0 18.6V6.4z" fill="#FFDC67"></path>
                                                                    <g opacity=".7" fill="#1E2026">
                                                                        <path d="M12.5 4C7.813 4 4 7.813 4 12.5c0 4.687 3.813 8.5 8.5 8.5 4.687 0 8.5-3.813 8.5-8.5C21 7.813 17.187 4 12.5 4zm0 15.786c-4.017 0-7.286-3.269-7.286-7.286 0-4.017 3.269-7.286 7.286-7.286 4.017 0 7.286 3.269 7.286 7.286 0 4.017-3.269 7.286-7.286 7.286z"></path>
                                                                        <path d="M12.5 8.452a.607.607 0 0 0-.607.608v6.88a.607.607 0 1 0 1.214 0V9.06a.607.607 0 0 0-.607-.608z"></path>
                                                                        <path d="M15.94 11.893H9.06a.607.607 0 1 0 0 1.214h6.88a.607.607 0 1 0 0-1.214z"></path>
                                                                    </g>
                                                                </svg>
                                                            </svg>
                                                        </button>
														</a>
														{/if}
                                                    </div>
                                                    <div class="col-12 col-sm-9">
                                                        <div class="row">
                                                            <div class="col-12 col-sm-6">
                                                                <div class="dashboard__data-item dashboard__data-item_dark d-flex flex-column justify-content-center mt-0">
                                                                    <h2 class="dashboard__data-item-head d-flex align-items-center">
                                                                        <svg width="11px" height="11px">
                                                                            <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 11 11" id="user3">
                                                                                <g clip-path="url(#user3_a)" fill="#5C677D">
                                                                                    <path d="M5.5 0a2.542 2.542 0 0 0-2.54 2.538c0 1.4 1.14 2.539 2.54 2.539 1.399 0 2.538-1.139 2.538-2.539C8.038 1.138 6.898 0 5.499 0zm0 4.23a1.694 1.694 0 0 1-1.693-1.692c0-.933.76-1.692 1.692-1.692.934 0 1.693.76 1.693 1.692 0 .934-.76 1.693-1.693 1.693zM10.574 8.02c-.001-.03-.01-.058-.018-.086-.006-.025-.01-.05-.02-.073-.01-.023-.028-.042-.043-.063-.018-.024-.033-.049-.056-.07-.005-.003-.007-.01-.012-.014a7.66 7.66 0 0 0-9.851 0l-.012.015c-.022.02-.038.045-.056.07-.014.021-.031.04-.042.062-.01.023-.014.048-.02.073-.008.028-.017.056-.018.087.001.006-.002.01-.002.017v2.116c0 .466.38.846.846.846h8.462c.466 0 .846-.38.846-.846V8.038c0-.006-.004-.011-.004-.017zm-.842 2.134H1.27V8.247a6.803 6.803 0 0 1 8.462 0v1.907z"></path>
                                                                                </g>
                                                                                <defs>
                                                                                    <clipPath id="user3_a">
                                                                                        <path fill="#fff" d="M0 0h11v11H0z"></path>
                                                                                    </clipPath>
                                                                                </defs>
                                                                            </svg>
                                                                        </svg>
                                                                        <span class="notranslate ng-binding">{if $o.name == "Rare" || $o.name == "RARE" || $o.name == "rare" }pantlink{elseif $o.name == "Epic" || $o.name == "EPIC" || $o.name == "epic"}OZQ{elseif $o.name == "Legendary" || $o.name == "LEGENDARY" || $o.name == "legendary"}Hcosen{elseif $o.name == "Genesis" || $o.name == "GENESIS" || $o.name == "genesis" }Kepler{else}{counter|replace:'1':'pantlink'|replace:'2':'OZQ'|replace:'3':'Hcosen'|replace:'4':'Kepler'|replace:'5':'pantlink'|replace:'6':'OZQ'|replace:'7':'Hcosen'|replace:'8':'Kepler'}{/if}</span>
                                                                    </h2>
                                                                    <span class="dashboard__data-item-name notranslate ng-binding">{if $o.name == "Rare" || $o.name == "RARE" || $o.name == "rare" }Rare{elseif $o.name == "Epic" || $o.name == "EPIC" || $o.name == "epic"}Epic{elseif $o.name == "Legendary" || $o.name == "LEGENDARY" || $o.name == "legendary"}Legendary{elseif $o.name == "Genesis" || $o.name == "GENESIS" || $o.name == "genesis" }Genesis{else}{$o.name}{/if} #{*$d.date*}{$d.date|md5|regex_replace:'/[^0-9]+/':''|truncate:5:"":true}</span>
                                                                </div>
                                                            </div>
                                                            <div class="col-12 col-sm-6">
                                                                <div class="dashboard__data-item dashboard__data-item_green mt-0">
                                                                    <span class="dashboard__data-item-name">Profit per {$p.period}:</span>
                                                                    <span class="dashboard__data-item-percent notranslate ng-binding">{$o.percent}%</span>
                                                                </div>
                                                            </div>
                                                            <div class="col-12 col-sm-4">
                                                                <div class="dashboard__data-item dashboard__data-item_light d-flex flex-column justify-content-center mt-0">
                                                                    <span class="dashboard__data-item-label">Amount:</span>
                                                                    <span class="dashboard__data-item-money upper notranslate ng-binding">
                                                                       {$d.deposit|number_format:2:".":","} usd
                                                                    </span>
                                                                </div>
                                                            </div>
                                                            <div class="col-12 col-sm-4">
                                                                <div class="dashboard__data-item dashboard__data-item_light d-flex flex-column justify-content-center mt-0">
                                                                    <span class="dashboard__data-item-label">Earnings:</span>
                                                                    <span class="dashboard__data-item-money upper notranslate ng-binding">
                                                                        {$d.total_profit} usd
                                                                    </span>
                                                                </div>
                                                            </div>
                                                            <div class="col-12 col-sm-4">
                                                                <div class="dashboard__data-item dashboard__data-item_light d-flex flex-column justify-content-center mt-0">
                                                                    <span class="dashboard__data-item-label">Remained:</span>
                                                                    <span class="dashboard__data-item-money nowrap ng-binding">
                                                                        {$d.fexpire} </span>
                                                                </div>
                                                            </div>
                                                            <!-- ngIf: ::deposit.plan.id <= 4 -->
                                                            <div class="col-12 ng-scope">
                                                                <div class="deposits__item-progress" data-count="{$d.duration_progress|number_format:0:".":","}%">
                                                                    <span class="deposits__item-progress-line" data-count="{$d.duration_progress|number_format:0:".":","}%" style="width: {$d.duration_progress|number_format:0:".":","}%;"></span>
                                                                </div>
                                                            </div><!-- end ngIf: ::deposit.plan.id <= 4 -->
                                                        </div>
                                                    </div>
                                                    <!-- ngIf: ::deposit.plan.id => 5 -->
                                                </div>
												{/foreach}
                                            </div>
                                        </div>
										
										
										
                                    </div>
									{/foreach}
									{/foreach}
                                    <!-- //list -->
									
                                </div>
                                <!-- //content -->

                            </div><!-- end ngIf: vm.ready -->
							
                            {/if}
							
							
                        </div>
                    </div>
                </div>

                <!-- start menu account -->
                {include file="account_menu.tpl"}
                <!-- end menu account -->

            </div>
            <div class="row">
                <div class="col-12">
                    <div class="dashboard__footer d-flex flex-column flex-lg-row align-items-center justify-content-lg-between">
                        <p class="m-0">© {'Y'|date} {$settings.site_name}, All rights reserved.</p>
                        <p class="m-0 d-flex align-items-center">
                            <svg width="14" height="14" viewBox="0 0 14 14" fill="none" xmlns="http://www.w3.org/2000/svg">
                                <path d="M7 14C3.14005 14 0 10.86 0 7C0 3.14005 3.14005 0 7 0C10.86 0 14 3.14005 14 7C14 10.86 10.86 14 7 14ZM7 0.875C3.62251 0.875 0.875 3.62251 0.875 7C0.875 10.3775 3.62251 13.125 7 13.125C10.3775 13.125 13.125 10.3775 13.125 7C13.125 3.62251 10.3775 0.875 7 0.875Z" fill="#5C677D"></path>
                                <path d="M10.0625 10.7917C9.95045 10.7917 9.83852 10.7491 9.75328 10.6633L6.69078 7.60083C6.60854 7.51859 6.5625 7.40718 6.5625 7.29172V3.20831C6.5625 2.96681 6.7585 2.77081 7 2.77081C7.2415 2.77081 7.4375 2.96681 7.4375 3.20831V7.11024L10.3717 10.0445C10.5426 10.2154 10.5426 10.4924 10.3717 10.6633C10.2865 10.7491 10.1745 10.7917 10.0625 10.7917Z" fill="#5C677D"></path>
                            </svg> <span ng-bind="time | date:format:zone" class="ms-1 ng-binding" sx-time="">{$smarty.now|date_format:"%m/%e/%Y %H:%M:%S"}</span>
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </section>


    {include file="account_footer.tpl"}


</body>

</html>
