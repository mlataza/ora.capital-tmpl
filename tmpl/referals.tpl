{include file="account_head.tpl"}

<body data-new-gr-c-s-check-loaded="14.1049.0" data-gr-ext-installed="" style="position: relative; min-height: 100%; top: 0px;">

    {include file="account_svg.tpl"}

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
                    <a class="menu__box-el d-flex align-items-center" href="?a=deposit_list">
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
                        </svg> <span>Means withdrawal</span>
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
                        </svg> <span>Operations history</span>
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
                        </svg> <span>Address book</span>
                    </a>
                    <a class="menu__box-el d-flex align-items-center active" href="?a=referals">
                        <svg width="20px" height="20px">
                            <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 20 20" id="links">
                                <path d="m18.047 11.877-2.735-.603v-.853c1.86-.194 2.6-.561 2.6-1.258 0-1.405-.914-4.63-1.077-5.197-.023-.835-.183-1.312-.583-1.746-.286-.303-.691-.37-1.016-.424-.11-.018-.276-.046-.323-.07a3.775 3.775 0 0 0-1.815-.476c-1.075.048-2.138.516-2.85 1.254a.626.626 0 0 0 .902.867c.486-.506 1.252-.84 1.96-.871.448.01.807.106 1.206.325.23.124.489.166.715.205.116.02.287.044.307.045.117.126.237.256.248.999.001.056.01.112.026.166.271.925.946 3.434 1.039 4.669-.271.096-.888.232-2.013.32a.625.625 0 0 0-.576.623v1.925c0 .293.204.548.49.61l3.226.713c.563.123.972.633.972 1.213V15H15.5a.625.625 0 0 0 0 1.25h3.875c.345 0 .625-.28.625-.625v-1.313a2.508 2.508 0 0 0-1.953-2.434zM11.781 14.181l-2.746-.596v-.81c.144-.209.279-.473.418-.749.103-.205.26-.514.325-.587.444-.437.92-.979 1.067-1.695.147-.713-.039-1.079-.145-1.224 0-.502 0-1.419-.175-2.091-.021-.812-.18-1.294-.56-1.709-.287-.31-.69-.377-1.015-.433-.105-.017-.262-.043-.31-.067-.546-.304-1.103-.452-1.789-.47-1.387.053-3.094.935-3.666 2.521-.163.45-.163 1.123-.146 1.893v.305c-.1.196-.287.562-.139 1.275.147.72.623 1.261 1.063 1.691.07.079.23.39.335.596.138.274.273.538.417.744v.811l-2.746.596A2.513 2.513 0 0 0 0 16.625v1.5c0 .345.28.625.625.625h12.5c.345 0 .625-.28.625-.625v-1.5a2.515 2.515 0 0 0-1.969-2.444zM12.5 17.5H1.25v-.875c0-.584.414-1.098.985-1.221l3.239-.703a.626.626 0 0 0 .492-.611v-1.534a.673.673 0 0 0-.185-.443c-.081-.085-.262-.44-.37-.65-.197-.387-.367-.72-.57-.917-.31-.303-.639-.666-.719-1.055-.058-.284-.023-.352.03-.455.057-.111.142-.281.142-.516l-.004-.381c-.01-.439-.025-1.175.072-1.443C4.742 5.641 5.954 5.035 6.86 5c.449.011.801.105 1.175.313.227.126.482.168.707.207.111.019.28.048.302.048.1.107.223.24.233.958.002.056.01.113.027.168.147.506.147 1.397.147 1.826 0 .235.085.404.143.516.052.104.087.171.027.457-.077.386-.391.733-.717 1.053-.203.198-.372.532-.567.917-.106.21-.285.565-.365.647a.624.624 0 0 0-.186.446v1.534c0 .294.205.549.492.611l3.24.703c.57.123.983.637.983 1.221v.875z" fill="#F8CC3D"></path>
                            </svg>
                        </svg> <span>Partners and links</span>
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
                        <span>Security</span>
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
                        </svg> <span>Exit from account</span>
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
                                        <use xlink:href="#circle"></use>
                                    </svg> <span>Information</span>
                                </p>                                
								<div class="app__box-title-wrap">
                                    <h2 class="app__box-title vis mb-0">Partners and links</h2>
                                    {include file="account_coin.tpl"}
                                </div>
                            </div>
                        </div>
                        <div ng-controller="PartnersCtrl as vm" class="ng-scope">
                            <div class="dashboard__ref">
                                <!-- link -->
                                <div class="dashboard__ref-preview d-flex flex-column">
                                    <h2 class="dashboard__ref-preview-title">Invite friends<br><span>Create structure</span></h2>
                                    <span class="dashboard__ref-preview-subtitle">Get additional bonuses</span>
                                    <form action="" class="ng-pristine ng-valid">
                                        <div class="dashboard__ref-form d-flex flex-row flex-sm-column align-items-end align-items-sm-start">
                                            <div class="login__form-input">
                                                <svg width="25px" height="25px">
                                                    <use xlink:href="#link2"></use>
                                                </svg>
                                                <label for="ref" class="form-label">Your referral link:</label>
                                                <input type="text" class="form-control" ng-value="::global.user.link" readonly="" value="{$settings.site_url}/?ref={$userinfo.username}">
                                            </div>
                                            <button type="button" class="btn btn-primary btn-copy" title="Copy to clipboard" data-clipboard-text="{$settings.site_url}/?ref={$userinfo.username}">
                                                <svg width="18px" height="18px">
                                                    <use xlink:href="#copy5"></use>
                                                </svg>
                                            </button>
                                        </div>
                                    </form>
                                </div>
                                <!-- //link -->
                                <!-- upline -->
                                <!-- ngIf: vm.ready && vm.upline -->
                                {if $upline.email != ""}
                                <div class="dashboard__ref-bar d-flex flex-column flex-lg-row justify-content-lg-between align-items-lg-center animated fadeIn ng-scope" ng-if="vm.ready &amp;&amp; vm.upline"> <span class="dashboard__ref-bar-text">You were invited by:</span>
                                    <div class="dashboard__ref-bar-social d-flex flex-column flex-lg-row">

                                        <div class="dashboard__ref-bar-social-item">
                                            <svg width="25px" height="25px">
                                                <use xlink:href="#profile"></use>
                                            </svg> <span ng-bind="::vm.upline.username" class="ng-binding">{$upline.name}</span>
                                        </div>

                                    </div>
                                </div>
                                {/if}
                                <!-- end ngIf: vm.ready && vm.upline -->
                                <!-- //upline -->
                            </div>
                            <div class="dashboard__box">
                                <!-- ngIf: vm.ready -->
                                <div class="row animated fadeIn ng-scope" ng-if="vm.ready">
                                    <!-- stats -->
                                    <div class="col-12">
                                        <h2 class="dashboard__box-subtitle">Partner statistics:</h2>
                                        <div class="row">
                                            <div class="col-12 col-sm-6 col-lg-3">
                                                <div class="dashboard__dynamic-profit card dashboard_card">
                                                    <div class="dashboard__dynamic-profit-graph dashboard__dynamic-profit-graph_orange pt-0 d-flex justify-content-between">
                                                        <div class="dashboard__dynamic-profit-graph-col"> <span style="height: 38px;opacity: 0.15"></span>
                                                        </div>
                                                        <div class="dashboard__dynamic-profit-graph-col"> <span style="height: 25px;opacity: 0.2"></span>
                                                        </div>
                                                        <div class="dashboard__dynamic-profit-graph-col"> <span style="height: 84px;opacity: 0.35"></span>
                                                        </div>
                                                        <div class="dashboard__dynamic-profit-graph-col"> <span style="height: 67px; opacity: 1"></span>
                                                        </div>
                                                        <div class="dashboard__dynamic-profit-graph-col"> <span style="height: 67px;opacity: 0.35"></span>
                                                        </div>
                                                        <div class="dashboard__dynamic-profit-graph-col"> <span style="height: 55px"></span>
                                                        </div>
                                                        <div class="dashboard__dynamic-profit-graph-col"> <span style="height: 70px"></span>
                                                        </div>
                                                        <div class="dashboard__dynamic-profit-graph-col"> <span style="height: 55px"></span>
                                                        </div>
                                                        <div class="dashboard__dynamic-profit-graph-col"> <span style="height: 93px"></span>
                                                        </div>
                                                        <div class="dashboard__dynamic-profit-graph-col"> <span style="height: 75px"></span>
                                                        </div>
                                                        <div class="dashboard__dynamic-profit-graph-col"> <span style="height: 55px"></span>
                                                        </div>
                                                    </div>
                                                    <p class="dashboard__dynamic-profit-text dashboard__dynamic-profit-text_mb2">Partners in total:</p>
                                                    <p class="dashboard__dynamic-profit-count ng-binding" ng-bind="::vm.stats.partners.total | number">{$total_ref}</p>
                                                </div>
                                            </div>
                                            <div class="col-12 col-sm-6 col-lg-3">
                                                <div class="dashboard__dynamic-profit card dashboard_card">
                                                    <div class="dashboard__dynamic-profit-graph dashboard__dynamic-profit-graph_pupr pt-0 d-flex justify-content-between">
                                                        <div class="dashboard__dynamic-profit-graph-col"> <span style="height: 38px;opacity: 0.15"></span>
                                                        </div>
                                                        <div class="dashboard__dynamic-profit-graph-col"> <span style="height: 25px;opacity: 0.2"></span>
                                                        </div>
                                                        <div class="dashboard__dynamic-profit-graph-col"> <span style="height: 84px;opacity: 0.35"></span>
                                                        </div>
                                                        <div class="dashboard__dynamic-profit-graph-col"> <span style="height: 67px; opacity: 1"></span>
                                                        </div>
                                                        <div class="dashboard__dynamic-profit-graph-col"> <span style="height: 67px;opacity: 0.35"></span>
                                                        </div>
                                                        <div class="dashboard__dynamic-profit-graph-col"> <span style="height: 55px"></span>
                                                        </div>
                                                        <div class="dashboard__dynamic-profit-graph-col"> <span style="height: 70px"></span>
                                                        </div>
                                                        <div class="dashboard__dynamic-profit-graph-col"> <span style="height: 55px"></span>
                                                        </div>
                                                        <div class="dashboard__dynamic-profit-graph-col"> <span style="height: 93px"></span>
                                                        </div>
                                                        <div class="dashboard__dynamic-profit-graph-col"> <span style="height: 75px"></span>
                                                        </div>
                                                        <div class="dashboard__dynamic-profit-graph-col"> <span style="height: 55px"></span>
                                                        </div>
                                                    </div>
                                                    <p class="dashboard__dynamic-profit-text dashboard__dynamic-profit-text_mb2">Active partners:</p>
                                                    <p class="dashboard__dynamic-profit-count ng-binding" ng-bind="::vm.stats.partners.active | number">{$active_ref}</p>
                                                </div>
                                            </div>
                                            <div class="col-12 col-sm-6 col-lg-3">
                                                <div class="dashboard__dynamic-profit dashboard__dynamic-profit_mob card">
                                                    <div class="dashboard__dynamic-profit-graph dashboard__dynamic-profit-graph_blue pt-0 d-flex justify-content-between">
                                                        <div class="dashboard__dynamic-profit-graph-col"> <span style="height: 38px;opacity: 0.15"></span>
                                                        </div>
                                                        <div class="dashboard__dynamic-profit-graph-col"> <span style="height: 25px;opacity: 0.2"></span>
                                                        </div>
                                                        <div class="dashboard__dynamic-profit-graph-col"> <span style="height: 84px;opacity: 0.35"></span>
                                                        </div>
                                                        <div class="dashboard__dynamic-profit-graph-col"> <span style="height: 67px; opacity: 1"></span>
                                                        </div>
                                                        <div class="dashboard__dynamic-profit-graph-col"> <span style="height: 67px;opacity: 0.35"></span>
                                                        </div>
                                                        <div class="dashboard__dynamic-profit-graph-col"> <span style="height: 55px"></span>
                                                        </div>
                                                        <div class="dashboard__dynamic-profit-graph-col"> <span style="height: 70px"></span>
                                                        </div>
                                                        <div class="dashboard__dynamic-profit-graph-col"> <span style="height: 55px"></span>
                                                        </div>
                                                        <div class="dashboard__dynamic-profit-graph-col"> <span style="height: 93px"></span>
                                                        </div>
                                                        <div class="dashboard__dynamic-profit-graph-col"> <span style="height: 75px"></span>
                                                        </div>
                                                        <div class="dashboard__dynamic-profit-graph-col"> <span style="height: 55px"></span>
                                                        </div>
                                                    </div>
                                                    <p class="dashboard__dynamic-profit-text dashboard__dynamic-profit-text_mb2">Profit partners:</p>
                                                    <p class="dashboard__dynamic-profit-count ng-binding" ng-bind="::vm.stats.partners.active | number">{$currency_sign}{$commissions}</p>
                                                </div>
                                            </div>
                                            <div class="col-12 col-sm-6 col-lg-3">
                                                <div class="dashboard__dynamic-profit card">
                                                    <div class="dashboard__dynamic-profit-graph dashboard__dynamic-profit-graph_yellow pt-0 d-flex justify-content-between">
                                                        <div class="dashboard__dynamic-profit-graph-col"> <span style="height: 38px;opacity: 0.15"></span>
                                                        </div>
                                                        <div class="dashboard__dynamic-profit-graph-col"> <span style="height: 25px;opacity: 0.2"></span>
                                                        </div>
                                                        <div class="dashboard__dynamic-profit-graph-col"> <span style="height: 84px;opacity: 0.35"></span>
                                                        </div>
                                                        <div class="dashboard__dynamic-profit-graph-col"> <span style="height: 67px; opacity: 1"></span>
                                                        </div>
                                                        <div class="dashboard__dynamic-profit-graph-col"> <span style="height: 67px;opacity: 0.35"></span>
                                                        </div>
                                                        <div class="dashboard__dynamic-profit-graph-col"> <span style="height: 55px"></span>
                                                        </div>
                                                        <div class="dashboard__dynamic-profit-graph-col"> <span style="height: 70px"></span>
                                                        </div>
                                                        <div class="dashboard__dynamic-profit-graph-col"> <span style="height: 55px"></span>
                                                        </div>
                                                        <div class="dashboard__dynamic-profit-graph-col"> <span style="height: 93px"></span>
                                                        </div>
                                                        <div class="dashboard__dynamic-profit-graph-col"> <span style="height: 75px"></span>
                                                        </div>
                                                        <div class="dashboard__dynamic-profit-graph-col"> <span style="height: 55px"></span>
                                                        </div>
                                                    </div>
                                                    <p class="dashboard__dynamic-profit-text dashboard__dynamic-profit-text_mb2">2-10 level partners:</p>
                                                    <p class="dashboard__dynamic-profit-count ng-binding" ng-bind="::vm.stats.partners.active | number">{$cnt_other}</p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- //stats -->
                                    <!-- info -->


                                    {if $settings.show_referals}
                                    <!-- //progress -->
                                    <!-- content -->
                                    <div class="col-12 ref__form">
                                        <h2 class="dashboard__box-subtitle">List of partners:</h2>
                                        <!-- empty -->
                                        <!-- ngIf: ::(!vm.partners.length) -->
                                        {if $show_referals}
                                        <div class="ref__table" ng-show="vm.filtered.length">
                                            <div class="card dashboard__table">
                                                <table class="table table-striped table_long">
                                                    <thead>
                                                        <tr>
                                                            <th scope="col">Login</th>
                                                            <th scope="col">Registration date</th>
                                                            <th scope="col">E-mail</th>
                                                            <th scope="col">Investments amount</th>
                                                            <th scope="col">Your bonus</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                        <!-- ngRepeat: partner in vm.filtered = (vm.partners | filter:vm.filter) | limitTo:vm.limit -->
                                                        {section name=s loop=$referals}
                                                        <tr class="animated-fast fadeIn ng-scope" ng-repeat="partner in vm.filtered = (vm.partners | filter:vm.filter) | limitTo:vm.limit">
                                                            <td data-title="Login">
                                                                <svg width="25px" height="25px">
                                                                    <use xlink:href="#profile"></use>
                                                                </svg>
                                                                <span class="nowrap notranslate ng-binding" ng-bind="::partner.username">{$referals[s].username}</span>
                                                            </td>
                                                            <td data-title="Registration date" class="fw-normal nowrap ng-binding" ng-bind="::partner.created.full">{$referals[s].date_register}</td>
                                                            <td data-title="E-mail">
                                                                <a class="notranslate ng-binding" href="mailto:{$referals[s].email}" ng-bind="::partner.email" title="Write to e-mail">{$referals[s].email}</a>
                                                            </td>
                                                            <td data-title="Investments amount">
                                                                <span class="nowrap notranslate ng-binding" ng-bind="::partner.username">{$currency_sign}{$referals[s].amount_deposited|number_format:2:".":","|default:"0.00"}</span>
                                                            </td>
                                                            <td data-title="Your bonus">
                                                                <span class="nowrap notranslate ng-binding" ng-bind="::partner.username">{if $referals[s].q_deposits > 0}Partner Active{else}Not have investments{/if}</span>
                                                            </td>
                                                        </tr><!-- end ngRepeat: partner in vm.filtered = (vm.partners | filter:vm.filter) | limitTo:vm.limit -->
                                                        {/section}
                                                    </tbody>
                                                </table>
                                            </div>
                                        </div>
                                        {else}
                                        <div class="dashboard__table-text ng-scope" ng-if="::(!vm.partners.length)">
                                            <p>You have no partners</p>
                                        </div>
                                        {/if}
                                        <!-- end ngIf: ::(!vm.partners.length) -->
                                        <!-- //empty -->
                                        <!-- list -->
                                        <!-- ngIf: ::vm.partners.length -->
                                        <!-- //list -->
                                    </div>
                                    <!-- //content -->
                                    {/if}


                                    {if $settings.show_referals}
                                    {if $show_referals}
                                    <!-- progress -->
                                    <!-- ngIf: ::vm.progress[0].id < 4 -->
                                    <div class="col-12 col-xl-6 ref-col-custom ng-scope" ng-if="::vm.progress[0].id < 4">
                                        <h2 class="dashboard__box-subtitle">Partner program progress:</h2>
                                        <div class="card dashboard_card ">
                                            <div class="card__head d-flex justify-content-between align-items-center">
                                                <span class="card__head_dark">
                                                    <svg width="45" height="45" viewBox="0 0 45 45" fill="none" xmlns="http://www.w3.org/2000/svg">
                                                        <rect width="45" height="45" rx="8" fill="#41464F"></rect>
                                                        <path d="M34.5 34.9998H11.5C11.224 34.9998 11 34.7758 11 34.4998C11 34.2238 11.224 33.9998 11.5 33.9998H34.5C34.776 33.9998 35 34.2238 35 34.4998C35 34.7758 34.776 34.9998 34.5 34.9998Z" fill="white"></path>
                                                        <path d="M17.5002 34.9996H12.5002C12.2242 34.9996 12.0002 34.7756 12.0002 34.4996V28.9996C12.0002 28.4486 12.4492 27.9996 13.0002 27.9996H17.0002C17.5512 27.9996 18.0002 28.4486 18.0002 28.9996V34.4996C18.0002 34.7756 17.7762 34.9996 17.5002 34.9996ZM13.0002 33.9996H17.0002V28.9996H13.0002V33.9996Z" fill="white"></path>
                                                        <path d="M25.5 34.9997H20.5C20.224 34.9997 20 34.7757 20 34.4997V22.9998C20 22.4488 20.449 21.9998 21 21.9998H25C25.551 21.9998 26 22.4488 26 22.9998V34.4997C26 34.7757 25.776 34.9997 25.5 34.9997ZM21 33.9997H25V22.9998H21V33.9997Z" fill="white"></path>
                                                        <path d="M33.4998 34.9996H28.4998C28.2238 34.9996 27.9998 34.7756 27.9998 34.4996V16.9996C27.9998 16.4486 28.4488 15.9996 28.9998 15.9996H32.9998C33.5508 15.9996 33.9998 16.4486 33.9998 16.9996V34.4996C33.9998 34.7756 33.7758 34.9996 33.4998 34.9996ZM28.9998 33.9996H32.9998V16.9996H28.9998V33.9996Z" fill="white"></path>
                                                        <path d="M13.5003 21.9997C13.3723 21.9997 13.2443 21.9507 13.1463 21.8537C12.9512 21.6587 12.9512 21.3417 13.1463 21.1467L22.1463 12.1467C22.3413 11.9517 22.6583 11.9517 22.8533 12.1467C23.0483 12.3417 23.0483 12.6587 22.8533 12.8537L13.8533 21.8537C13.7563 21.9507 13.6283 21.9997 13.5003 21.9997Z" fill="#F8CC3D"></path>
                                                        <path d="M22.5002 17.0002C22.2242 17.0002 22.0002 16.7762 22.0002 16.5002V13.0002H18.5002C18.2242 13.0002 18.0002 12.7762 18.0002 12.5002C18.0002 12.2242 18.2242 12.0002 18.5002 12.0002H22.5002C22.7762 12.0002 23.0002 12.2242 23.0002 12.5002V16.5002C23.0002 16.7762 22.7762 17.0002 22.5002 17.0002Z" fill="#F8CC3D"></path>
                                                    </svg>
                                                </span>
                                            </div>
                                            <div class="card__box">
                                                <div class="row row_20">
                                                    <div class="col-12 col-lg-6">
                                                        <div class="row row_10">
                                                            <div class="col-12">
                                                                <div class="ref__card-nextlevel ref__card-nextlevel_gray d-flex align-items-center">
                                                                    <div class="ref__card-nextlevel-ico">
                                                                        <svg width="44" height="44" viewBox="0 0 44 44" fill="none" xmlns="http://www.w3.org/2000/svg">
                                                                            <rect y="-0.000366211" width="44" height="44" rx="8" fill="#5C677D"></rect>
                                                                            <path d="M33.4865 24.34L31.5965 23.8675L31.5031 23.494C31.9959 22.9585 32.3435 22.27 32.4819 21.5545C32.8081 21.397 33.0477 21.0809 33.095 20.7006L33.23 19.6251C33.2694 19.3146 33.1737 19.0019 32.969 18.7668C32.8981 18.6858 32.8171 18.616 32.7271 18.5598L32.762 17.8499L32.8891 17.7228C33.1962 17.3954 33.6125 16.6957 32.9499 15.6832C32.6337 15.1994 31.979 14.6223 30.6661 14.6223C30.2757 14.6223 29.3904 14.6223 28.5354 15.1646C27.3305 15.2028 26.534 15.5313 26.1031 16.1636C26.0761 16.203 26.0536 16.2468 26.0379 16.2918C25.9895 16.4268 25.9276 16.5562 25.8601 16.6844C25.8376 16.726 25.8219 16.7711 25.8106 16.8172C25.7555 17.0489 25.7285 17.3077 25.7285 17.6069C25.7285 17.8151 25.7667 18.2178 25.8027 18.5418C25.7049 18.5992 25.6148 18.6734 25.5372 18.7612C25.3291 18.9974 25.2312 19.3136 25.2706 19.6263L25.4056 20.7018C25.4551 21.0944 25.7093 21.4184 26.084 21.5714C26.2201 22.2566 26.5486 22.9203 27.011 23.4435L26.9052 23.8687L25.0141 24.3412C24.86 24.3794 24.7138 24.4334 24.5709 24.4908C24.2829 24.6078 24.1434 24.9352 24.2593 25.2232C24.3763 25.5123 24.7048 25.6495 24.9917 25.5348C25.0884 25.4966 25.1852 25.4583 25.2876 25.4324L27.5049 24.8778C27.7063 24.8272 27.865 24.6697 27.9144 24.4684L28.1777 23.4131C28.2272 23.2151 28.1653 23.0058 28.0168 22.8663C27.524 22.4051 27.1989 21.7301 27.146 21.0596C27.1224 20.7671 26.8153 20.5635 26.5217 20.5635L26.4181 19.515C26.5801 19.515 26.7331 19.4463 26.84 19.3248C26.9469 19.2045 26.9964 19.0436 26.9761 18.8827C26.9289 18.507 26.8535 17.8286 26.8535 17.6081C26.8535 17.4269 26.8659 17.274 26.8917 17.1412C26.957 17.013 27.0177 16.8836 27.0684 16.752C27.3136 16.4516 27.8682 16.2953 28.7176 16.2873C28.8324 16.2862 28.946 16.2502 29.0394 16.1827C29.6446 15.7496 30.3342 15.7496 30.665 15.7496C31.3254 15.7496 31.7641 15.9295 32.0071 16.302C32.2839 16.7238 32.159 16.8566 32.0803 16.9409L31.8114 17.2098C31.7124 17.3088 31.6539 17.4404 31.6471 17.58L31.5819 18.9266C31.5751 19.0796 31.6179 19.2135 31.7225 19.3248C31.8283 19.4373 31.9611 19.4868 32.114 19.488L31.9768 20.5432C31.6831 20.5432 31.439 20.7693 31.4154 21.0619C31.3625 21.7425 31.0127 22.449 30.5042 22.9046C30.3489 23.043 30.2837 23.2567 30.3343 23.4592L30.5874 24.4695C30.6381 24.6709 30.7956 24.8295 30.9969 24.8789L33.2143 25.4335C34.0051 25.6316 34.6025 26.2402 34.8028 26.9995H29.108V28.1245L35.4372 28.1212C35.7477 28.1212 35.9998 27.8691 35.9998 27.5586C35.9998 26.0332 34.9659 24.7102 33.4865 24.34Z" fill="white"></path>
                                                                            <path d="M25.5983 27.3844L22.4989 26.6104L22.2694 25.6913C23.0906 24.852 23.6576 23.727 23.8466 22.566C24.3293 22.3928 24.6949 21.9596 24.7624 21.4253L24.9705 19.7625C25.02 19.3687 24.8985 18.9728 24.6386 18.6747C24.5104 18.5273 24.354 18.4103 24.1808 18.3293L24.2505 16.923L24.5239 16.6485C25.029 16.1119 25.4486 15.195 24.5846 13.8766C23.9321 12.8798 22.8319 12.3746 21.312 12.3746C20.7259 12.3746 19.3815 12.3746 18.1148 13.2094C14.463 13.3005 13.9894 15.1061 13.9894 16.6789C13.9894 17.0366 14.0681 17.7859 14.1278 18.3022C13.9343 18.3832 13.7599 18.5058 13.6182 18.6667C13.3526 18.966 13.23 19.3654 13.2796 19.7625L13.4877 21.4253C13.5586 21.9968 13.9714 22.4524 14.5036 22.5975C14.6915 23.7102 15.2292 24.7957 15.9998 25.6159L15.7512 26.6104L12.6518 27.3844C10.5008 27.921 9 29.8447 9 32.0621C9 32.2117 9.05848 32.3557 9.16427 32.4604C9.27 32.565 9.41402 32.6246 9.56252 32.6246L28.6875 32.6224C28.998 32.6224 29.2501 32.3703 29.2501 32.0598C29.25 29.8447 27.7481 27.9222 25.5983 27.3844ZM10.1678 31.4974C10.3894 30.0439 11.4604 28.8413 12.9251 28.4757L16.3519 27.6195C16.5532 27.5689 16.7119 27.4114 16.7613 27.21L17.1686 25.5788C17.2192 25.3808 17.1562 25.1715 17.0077 25.032C16.1943 24.2693 15.6554 23.1499 15.5666 22.0395C15.543 21.747 15.2989 21.522 15.0052 21.522H14.8702C14.7352 21.522 14.6205 21.4208 14.6036 21.2869L14.3955 19.6241C14.382 19.5195 14.4303 19.4464 14.4607 19.4126C14.4911 19.3789 14.5575 19.3215 14.7487 19.3215C14.9107 19.3215 15.0637 19.2529 15.1706 19.1314C15.2774 19.011 15.3269 18.849 15.3067 18.6893C15.2538 18.2663 15.1143 17.0794 15.1143 16.6811C15.1143 15.6484 15.1143 14.3648 18.2992 14.3332C18.4139 14.3321 18.5276 14.2961 18.6209 14.2286C19.5164 13.5885 20.4839 13.5019 21.3131 13.5019C22.4291 13.5019 23.2132 13.836 23.6441 14.4952C24.1368 15.2479 23.9512 15.618 23.7161 15.8678L23.3009 16.284C23.2019 16.383 23.1434 16.5146 23.1367 16.6541L23.0354 18.7354C23.0287 18.8884 23.0838 19.0369 23.1884 19.1483C23.2919 19.2596 23.4381 19.3238 23.5911 19.3249C23.6969 19.326 23.7621 19.3833 23.7914 19.4171C23.8206 19.4508 23.8679 19.5217 23.8555 19.6252L23.6473 21.288C23.6305 21.4219 23.5157 21.5232 23.3402 21.5232C23.0466 21.5232 22.8025 21.7482 22.7789 22.0406C22.6877 23.1859 22.1241 24.3266 21.2691 25.0927C21.1139 25.2311 21.0486 25.4448 21.0993 25.6473L21.4897 27.21C21.5403 27.4114 21.6978 27.57 21.8991 27.6195L25.3259 28.4756C26.7884 28.8412 27.8594 30.045 28.0821 31.4996L10.1678 31.4974Z" fill="white"></path>
                                                                        </svg>
                                                                    </div>
                                                                    <div class="ref__card-nextlevel-info d-flex flex-column"> <span class="ref__card-nextlevel-info-title">Current program:</span>
                                                                        <span class="ref__card-nextlevel-info-text notranslate ng-binding" ng-bind="::vm.progress[0].name">Standard</span>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="col-12 col-sm-6">
                                                                <div class="ref__card-nextlevel-price ref__card-nextlevel_trans d-flex flex-column align-items-center">
                                                                    <div class="ref__card-nextlevel-price-title">Hold:</div>
                                                                    <div class="ref__card-nextlevel-price-text nowrap">
                                                                        <span class="upper notranslate ng-binding">{$cnt_other}</span>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="col-12 col-sm-6">
                                                                <div class="ref__card-nextlevel-price ref__card-nextlevel_green d-flex flex-column align-items-center" ng-switch="::vm.progress[0].id"> <span>Bonus:</span>
                                                                    <!-- ngSwitchWhen: 1 --><span class="nowrap ng-scope" ng-switch-when="1">Level 2-10</span>
                                                                    <!-- end ngSwitchWhen: -->
                                                                    <!-- ngSwitchWhen: 2 -->
                                                                    <!-- ngSwitchWhen: 3 -->
                                                                    <!-- ngSwitchWhen: 4 -->
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-12 col-lg-6 mb-1">
                                                        <div class="row row_10">
                                                            <div class="col-12">
                                                                <div class="ref__card-nextlevel ref__card-nextlevel_yellow d-flex align-items-center">
                                                                    <div class="ref__card-nextlevel-ico">
                                                                        <svg width="44" height="44" viewBox="0 0 44 44" fill="none" xmlns="http://www.w3.org/2000/svg">
                                                                            <rect y="-0.000366211" width="44" height="44" rx="8" fill="#FFDC67"></rect>
                                                                            <path d="M12.87 26.9994L10.197 26.996C10.3984 26.2377 10.9958 25.6291 11.7855 25.4311L14.0029 24.8765C14.2043 24.8259 14.3629 24.6683 14.4124 24.467L14.6756 23.4117C14.7252 23.2137 14.6632 23.0045 14.5147 22.865C14.022 22.4037 13.6969 21.7287 13.644 21.0582C13.6204 20.7657 13.3132 20.5621 13.0196 20.5621L12.9173 19.5136C13.0793 19.5136 13.2322 19.445 13.3391 19.3235C13.446 19.2031 13.4955 19.0423 13.4752 18.8814C13.4269 18.5045 13.3515 17.8261 13.3515 17.6067C13.3515 16.9666 13.3515 16.304 15.2156 16.286C15.3303 16.2849 15.444 16.2489 15.5373 16.1814C15.8535 15.9552 16.2134 15.8259 16.6702 15.7775C16.9796 15.7448 17.2024 15.467 17.1697 15.1587C17.1382 14.8505 16.8637 14.6255 16.5521 14.6592C15.9716 14.7211 15.4732 14.8876 15.0344 15.1655C12.5212 15.2476 12.2264 16.592 12.2264 17.6067C12.2264 17.8149 12.2647 18.2176 12.3007 18.5416C12.2028 18.599 12.114 18.6732 12.0352 18.761C11.827 18.9972 11.7292 19.3134 11.7686 19.6261L11.9036 20.7027C11.9531 21.0953 12.2073 21.4193 12.5819 21.5724C12.718 22.2575 13.0466 22.9212 13.5089 23.4444L13.4032 23.8696L11.5132 24.3421C10.0339 24.7123 9 26.0364 9 27.5619C9 27.8724 9.25202 28.1244 9.56252 28.1244H12.87C13.1805 28.1244 13.4325 27.8724 13.4325 27.5619C13.4325 27.2514 13.1805 26.9994 12.87 26.9994Z" fill="#1E2026"></path>
                                                                            <path d="M33.4866 24.344L31.5966 23.8715L31.5032 23.4979C31.9959 22.9624 32.3436 22.2739 32.4819 21.5584C32.8082 21.4009 33.0478 21.0848 33.0951 20.7045L33.2301 19.629C33.2695 19.3185 33.1738 19.0058 32.9691 18.7707C32.8982 18.6897 32.8172 18.6199 32.7272 18.5637L32.7621 17.8538L32.8892 17.7267C33.1963 17.3993 33.6126 16.6996 32.9499 15.6871C32.6338 15.2033 31.9791 14.6262 30.6662 14.6262C30.1329 14.6262 29.6627 14.6982 29.2284 14.8479C28.9348 14.948 28.7785 15.2686 28.8797 15.5623C28.9798 15.8548 29.2982 16.0111 29.5941 15.911C29.9091 15.803 30.2579 15.7501 30.6651 15.7501C31.3255 15.7501 31.7642 15.9301 32.0072 16.3025C32.284 16.7244 32.1591 16.8571 32.0804 16.9415L31.8115 17.2104C31.7125 17.3093 31.654 17.441 31.6472 17.5805L31.582 18.9271C31.5752 19.0801 31.618 19.214 31.7226 19.3254C31.8283 19.4379 31.9611 19.4874 32.1141 19.4885L31.9768 20.5438C31.6832 20.5438 31.4391 20.7699 31.4155 21.0624C31.3626 21.743 31.0128 22.4495 30.5042 22.9052C30.349 23.0435 30.2838 23.2573 30.3344 23.4598L30.5875 24.47C30.6381 24.6714 30.7956 24.83 30.997 24.8795L33.2144 25.4341C34.0052 25.6321 34.6026 26.2407 34.8029 27.0001H32.131V28.1251H35.4374C35.7479 28.1251 35.9999 27.8731 35.9999 27.5626C35.9998 26.0371 34.966 24.7141 33.4866 24.344Z" fill="#1E2026"></path>
                                                                            <path d="M28.2285 26.7453L25.5319 26.0715L25.3474 25.3346C26.0584 24.5977 26.5522 23.6178 26.7255 22.6065C27.1564 22.4377 27.4804 22.0429 27.5399 21.5602L27.7233 20.0932C27.7694 19.7276 27.6569 19.3597 27.4151 19.0818C27.306 18.9558 27.1743 18.8546 27.0292 18.7803L27.0866 17.6081L27.3116 17.382C27.6896 16.9804 28.1992 16.1175 27.3724 14.8541C26.784 13.9553 25.794 13.4996 24.4305 13.4996C23.9096 13.4996 22.7182 13.4996 21.5876 14.2388C18.3251 14.3254 17.9021 15.9499 17.9021 17.3651C17.9021 17.6722 17.9673 18.3023 18.0191 18.7567C17.856 18.831 17.7097 18.939 17.5894 19.0751C17.3441 19.3541 17.2294 19.7242 17.2755 20.0932L17.4589 21.5602C17.523 22.0755 17.8875 22.4906 18.3634 22.638C18.5366 23.6043 19.0035 24.5471 19.6695 25.2671L19.4681 26.0715L16.7715 26.7453C14.8455 27.2269 13.5 28.9503 13.5 30.9371C13.5 31.0867 13.5585 31.2307 13.6643 31.3354C13.7701 31.44 13.9129 31.4996 14.0625 31.4996L30.9375 31.4985C31.248 31.4985 31.5 31.2465 31.5 30.936C31.5 28.9492 30.1556 27.2269 28.2285 26.7453ZM14.6745 30.3735C14.8916 29.1506 15.8051 28.146 17.0438 27.8366L20.0677 27.0806C20.2691 27.03 20.4278 26.8724 20.4772 26.6711L20.8372 25.2322C20.8879 25.0342 20.8249 24.825 20.6764 24.6855C19.9699 24.0229 19.5019 23.0509 19.4253 22.0867C19.4017 21.7942 19.1576 21.5693 18.864 21.5693H18.7448C18.6581 21.5693 18.585 21.5051 18.5749 21.4197L18.3926 19.9526C18.3848 19.8862 18.4152 19.8402 18.4342 19.8176C18.4534 19.7963 18.495 19.7603 18.639 19.7603C18.801 19.7603 18.954 19.6917 19.0609 19.5702C19.1678 19.4498 19.2173 19.2889 19.197 19.128C19.1498 18.7557 19.0282 17.7128 19.0282 17.364C19.0282 16.4831 19.0283 15.3863 21.7721 15.3593C21.8869 15.3582 22.0005 15.3221 22.0939 15.2546C22.9725 14.6258 23.958 14.6258 24.4305 14.6258C25.4047 14.6258 26.0595 14.9025 26.4318 15.4718C26.8976 16.1828 26.6343 16.4629 26.505 16.6002L26.1382 16.9669C26.0392 17.0659 25.9807 17.1987 25.9739 17.3382L25.8851 19.1742C25.8783 19.3272 25.9334 19.4757 26.0381 19.587C26.1427 19.6984 26.2878 19.7625 26.4408 19.7636C26.5083 19.7636 26.5499 19.8008 26.5691 19.8221C26.5916 19.848 26.6174 19.8919 26.6096 19.9537L26.4262 21.4219C26.415 21.5073 26.3418 21.5715 26.2203 21.5715C25.9267 21.5715 25.6826 21.7965 25.659 22.089C25.5802 23.0677 25.0785 24.0825 24.3484 24.7372C24.1931 24.8767 24.1279 25.0905 24.1785 25.293L24.5239 26.6723C24.5745 26.8725 24.732 27.0311 24.9333 27.0806L27.9573 27.8366C29.196 28.146 30.1095 29.1518 30.3266 30.3746L14.6745 30.3735Z" fill="#1E2026"></path>
                                                                        </svg>
                                                                    </div>
                                                                    <div class="ref__card-nextlevel-info d-flex flex-column"> <span class="ref__card-nextlevel-info-title">Total partners:</span>
                                                                        <span class="ref__card-nextlevel-info-text notranslate ng-binding" ng-bind="::vm.progress[1].name">{$total_ref}</span>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="col-12 col-sm-6">
                                                                <div class="ref__card-nextlevel-price ref__card-nextlevel_trans d-flex flex-column align-items-center">
                                                                    <div class="ref__card-nextlevel-price-title">Hold:</div>
                                                                    <div class="ref__card-nextlevel-price-text nowrap">
                                                                        <span class="upper notranslate ng-binding">{$cnt_other_active}</span>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="col-12 col-sm-6">
                                                                <div class="ref__card-nextlevel-price ref__card-nextlevel_green d-flex flex-column align-items-center" ng-switch="::vm.progress[1].id"> <span>Bonus:</span>
                                                                    <!-- ngSwitchWhen: 1 -->
                                                                    <!-- ngSwitchWhen: 2 --><span class="nowrap ng-scope" ng-switch-when="2">Level Active 2-10</span>
                                                                    <!-- end ngSwitchWhen: -->
                                                                    <!-- ngSwitchWhen: 3 -->
                                                                    <!-- ngSwitchWhen: 4 -->
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- end ngIf: ::vm.progress[0].id < 4 -->
                                    {/if}
                                    {/if}

                                </div>
                                <!-- end ngIf: vm.ready -->
                            </div>
                        </div>
                    </div>
                </div>
                <!-- ngIf: alc.bsideState -->
				
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
	{include file="tool_copy.tpl"}
	
	
	
</body>

</html>
