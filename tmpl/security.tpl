{include file="account_head.tpl"}
<style>
    .adressnf {
        display: none;
    }
	
	.sidebar {
        margin-left: 15px;
    }
</style>
{if $frm.say eq 'changed'}
<div class="modal-js rex fade active animated-fast fadeIn" tabindex="-1">
    <div class="modal-dialog modal-sm modal-dialog-centered animated-fast pulse">
        <div class="modal-content">
            <div class="modal-header justify-content-center">
                <button type="button" class="btn btn_close sx-close">
                    <svg width="25px" height="25px">
                        <use xlink:href="#close"></use>
                    </svg>
                </button>
            </div>
            <div class="modal-body">
                <div class="modal__msg d-flex flex-column align-items-center">
                    <div class="modal__msg-ico d-flex justify-content-center">
                        <svg width="96" height="96" viewBox="0 0 96 96" fill="none" xmlns="http://www.w3.org/2000/svg">
                            <path d="M21.873 27.5916C21.873 41.998 33.5937 53.7186 48 53.7186C62.4064 53.7186 74.127 41.998 74.127 27.5916C74.127 13.1852 62.4064 1.4646 48 1.4646C33.5937 1.4646 21.873 13.1852 21.873 27.5916ZM36.3985 25.7702L43.3583 32.73L59.6014 16.4869L63.5789 20.4643L43.3585 40.6849L32.4212 29.7477L36.3985 25.7702Z" fill="#1CBA6E"></path>
                            <path d="M56.6355 76.548H39.3652V83.24H21.7031V94.6522H74.4058V83.24H56.6355V76.548Z" fill="#F8CC3D"></path>
                            <path d="M79.7521 27.5917C79.7521 38.4119 74.3105 47.9836 66.0215 53.7187H96.0001V16.3228H77.684C79.0188 19.8268 79.7521 23.6249 79.7521 27.5917Z" fill="#2B2F36"></path>
                            <path d="M65.8535 1.34802C69.4621 3.81083 72.5383 6.99759 74.8727 10.6977H96.0002V1.34802H65.8535Z" fill="#F8CC3D"></path>
                            <path d="M16.248 27.5917C16.248 23.6249 16.9813 19.8268 18.3159 16.3228H0V53.7185H29.9786C21.6898 47.9834 16.248 38.4118 16.248 27.5917Z" fill="#2B2F36"></path>
                            <path d="M30.1466 1.34802H0V10.6977H21.1275C23.4619 6.99777 26.538 3.81083 30.1466 1.34802Z" fill="#F8CC3D"></path>
                            <path d="M0 59.3434H96V70.9228H0V59.3434Z" fill="#F8CC3D"></path>
                        </svg></div>
                    <div class="modal__msg-title">Success</div>
                    <div class="modal__msg-text">Your account data has been updated successfully.</div>
                    <button class="btn btn-primary mb-4 sx-close">Close</button>
                </div>
            </div>
        </div>
    </div>
</div>
{/if}

{if $frm.say eq 'success_tfa'}
<div class="modal-js rex fade active animated-fast fadeIn" tabindex="-1">
    <div class="modal-dialog modal-sm modal-dialog-centered animated-fast pulse">
        <div class="modal-content">
            <div class="modal-header justify-content-center">
                <button type="button" class="btn btn_close sx-close">
                    <svg width="25px" height="25px">
                        <use xlink:href="#close"></use>
                    </svg>
                </button>
            </div>
            <div class="modal-body">
                <div class="modal__msg d-flex flex-column align-items-center">
                    <div class="modal__msg-ico d-flex justify-content-center">
                        <svg width="96" height="96" viewBox="0 0 96 96" fill="none" xmlns="http://www.w3.org/2000/svg">
                            <path d="M21.873 27.5916C21.873 41.998 33.5937 53.7186 48 53.7186C62.4064 53.7186 74.127 41.998 74.127 27.5916C74.127 13.1852 62.4064 1.4646 48 1.4646C33.5937 1.4646 21.873 13.1852 21.873 27.5916ZM36.3985 25.7702L43.3583 32.73L59.6014 16.4869L63.5789 20.4643L43.3585 40.6849L32.4212 29.7477L36.3985 25.7702Z" fill="#1CBA6E"></path>
                            <path d="M56.6355 76.548H39.3652V83.24H21.7031V94.6522H74.4058V83.24H56.6355V76.548Z" fill="#F8CC3D"></path>
                            <path d="M79.7521 27.5917C79.7521 38.4119 74.3105 47.9836 66.0215 53.7187H96.0001V16.3228H77.684C79.0188 19.8268 79.7521 23.6249 79.7521 27.5917Z" fill="#2B2F36"></path>
                            <path d="M65.8535 1.34802C69.4621 3.81083 72.5383 6.99759 74.8727 10.6977H96.0002V1.34802H65.8535Z" fill="#F8CC3D"></path>
                            <path d="M16.248 27.5917C16.248 23.6249 16.9813 19.8268 18.3159 16.3228H0V53.7185H29.9786C21.6898 47.9834 16.248 38.4118 16.248 27.5917Z" fill="#2B2F36"></path>
                            <path d="M30.1466 1.34802H0V10.6977H21.1275C23.4619 6.99777 26.538 3.81083 30.1466 1.34802Z" fill="#F8CC3D"></path>
                            <path d="M0 59.3434H96V70.9228H0V59.3434Z" fill="#F8CC3D"></path>
                        </svg></div>
                    <div class="modal__msg-title">Success</div>
                    <div class="modal__msg-text">Two Factor Authentication is disabled.</div>
                    <button class="btn btn-primary mb-4 sx-close">Close</button>
                </div>
            </div>
        </div>
    </div>
</div>
{/if}

{if $errors}

<div class="modal-js rex fade active animated-fast fadeIn" tabindex="-1">
    <div class="modal-dialog modal-sm modal-dialog-centered animated-fast pulse">
        <div class="modal-content">
            <div class="modal-header justify-content-center">
                <button type="button" class="btn btn_close sx-close">
                    <svg width="25px" height="25px">
                        <use xlink:href="#close"></use>
                    </svg>
                </button>
            </div>
            <div class="modal-body">
                <div class="modal__msg d-flex flex-column align-items-center">
                    <div class="modal__msg-ico d-flex justify-content-center">
                        <svg width="96" height="96" viewBox="0 0 96 96" fill="none" xmlns="http://www.w3.org/2000/svg">
                            <path d="M35.3438 27.9514L23.8856 0H0V83.2943H17.4788C14.9756 78.5475 13.5581 73.1454 13.5581 67.4196C13.5581 48.5651 28.9237 33.2241 47.8125 33.2241C66.7012 33.2241 82.0669 48.5651 82.0669 67.4196C82.0669 73.1454 80.6494 78.5473 78.1462 83.2943H96V27.9514H35.3438Z" fill="#2B2F36"></path>
                            <path d="M29.9648 0L39.1186 22.3359H96.0005V0H29.9648ZM64.1986 14.0179H58.5736V8.40244H64.1986V14.0179ZM75.4486 14.0179H69.8236V8.40244H75.4486V14.0179ZM86.6986 14.0179H81.0736V8.40244H86.6986V14.0179Z" fill="#F8CC3D"></path>
                            <path d="M47.812 38.8395C32.0264 38.8395 19.1826 51.6611 19.1826 67.4197C19.1826 83.1802 32.0264 96 47.812 96C63.5976 96 76.4414 83.1802 76.4414 67.4197C76.4414 51.6611 63.5976 38.8395 47.812 38.8395ZM50.6245 81.417H44.9995V75.8015H50.6245V81.417ZM50.6245 70.1863H44.9995V53.4244H50.6245V70.1863Z" fill="#F12F43"></path>
                        </svg></div>
                    <div class="modal__msg-title">Error</div>
                    <div class="modal__msg-text">

                        {if $errors.invalid_tfa_code}
                        Invalid code.
                        {/if}
                        {if $errors.invalid_tfa_secret}
                        Invalid Secret.
                        {/if}

                    </div>
                    <button class="btn btn-primary mb-4 sx-close">Close</button>
                </div>
            </div>
        </div>
    </div>
</div>


{/if}

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
                    <a class="menu__box-el d-flex align-items-center active" href="?a=security">
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
                                        <h2 class="app__box-title vis mb-0">Security</h2>
                                        {include file="account_coin.tpl"}
                                    </div>
                                </div>
                            </div>

                            <div id="mainwalletbox-set" class="dashboard__wallet d-flex flex-column ng-scope">
                                <!-- end Empty Zone -->
                                HELLO WORLD!
                            </div>

                            <script defer src="styles/assets/app/video.js"></script>

                            <style>
                                .dashboard__box .card {
                                    max-width: 46%;
                                    margin-left: 15px;
                                    margin-right: 15px;
                                }

                                @media (max-width: 600px) {
                                    .dashboard__box .card {
                                        max-width: 92%;
                                    }
                                }

                            </style>
							
							
                            <form method=post name=mainform class="ng-pristine ng-valid ng-valid-required ng-valid-minlength ng-valid-maxlength ng-valid-pattern">
                            <input type=hidden name=a value="security">
                            <input type=hidden name=action value="tfa_save">
                            <input type=hidden name=time>
                            <div class="dashboard__box">
                                <div class="row">
                                    <!-- <div class="col-12 col-xl-6 ng-scope" ng-controller="Settings2FACtrl as vm"> -->
                                    <h2 class="dashboard__box-subtitle">Increase account security:</h2>

                                    {if $tfa_enabled}
									
                                    <div class="row" style="display:none;">
                                        <input type="checkbox" name="tfa_on_login" value=1 {if $tfa_settings.login}checked{/if}> on Login<br>
                                        <input type="checkbox" name="tfa_on_edit_account" value=1 {if $tfa_settings.edit_account}checked{/if}> on Edit Account<br>
                                        <input type="checkbox" name="tfa_on_withdraw" value=1 {if $tfa_settings.withdraw}checked{/if}> on Withdraw<br>
                                        {if $settings.internal_transfer_enabled}
                                        <input type="checkbox" name="tfa_on_internal_transfer" value=1 {if $tfa_settings.internal_transfer}checked{/if}> on Internal Transfer<br>
                                        {/if}
                                        <input type="checkbox" name="tfa_disable" value=1 checked> <b style=color:red>Disable Two Factor Authentication (not recommended)</b><br>
                                    </div>

                                    <div class="card dashboard_card">
                                        <div class="card__head d-flex justify-content-between align-items-center"> <span>2FA authentication:</span>
                                            <span class="card__head_black">
                                                <svg width="45" height="45" viewBox="0 0 45 45" fill="none" xmlns="http://www.w3.org/2000/svg">
                                                    <rect width="45" height="45" rx="8" fill="#41464F"></rect>
                                                    <path d="M29.3528 19.1473C29.1578 18.9523 28.8408 18.9523 28.6458 19.1473L21.9998 25.7933L18.3528 22.1474C18.1578 21.9524 17.8408 21.9524 17.6458 22.1474C17.4508 22.3424 17.4508 22.6594 17.6458 22.8544L21.6457 26.8544C21.7438 26.9513 21.8717 27.0004 21.9997 27.0004C22.1278 27.0004 22.2557 26.9514 22.3528 26.8544L29.3527 19.8544C29.5478 19.6593 29.5478 19.3423 29.3528 19.1473Z" fill="#F8CC3D"></path>
                                                    <path d="M33.143 14.0207L23.143 11.0207C23.049 10.9928 22.95 10.9928 22.856 11.0207L12.856 14.0207C12.645 14.0837 12.5 14.2787 12.5 14.4998V25.4998C12.5 29.9218 19.242 33.8548 22.852 34.9778C22.9 34.9928 22.95 34.9997 23 34.9997C23.05 34.9997 23.1 34.9928 23.148 34.9778C26.758 33.8537 33.5 29.9217 33.5 25.4997V14.4998C33.5 14.2787 33.355 14.0847 33.143 14.0207ZM32.5 25.4997C32.5 29.0107 26.937 32.7027 23 33.9757C19.063 32.7027 13.5 29.0107 13.5 25.4997V14.8718L23 12.0218L32.5 14.8718V25.4997Z" fill="white"></path>
                                                </svg>
                                            </span>
                                        </div>
                                        <div class="card__box">
                                            <p class="mb-0 fw-normal">It is used to enter account, change settings, withdraw means and improve security</p>
                                        </div>
                                    </div>

                                    <div class="card dashboard_card">
                                        <div class="card__head d-flex justify-content-between align-items-center">
                                            <span>Download 2FA application:</span>
                                            <span>1</span>
                                        </div>
                                        <div class="card__box">
                                            <div class="setting__app d-flex flex-column flex-sm-row">
                                                <a class="setting__app-item" target="_blank" href="https://apps.apple.com/us/app/google-authenticator/id388497605">
                                                    <img src="styles/assets/app/img/IosDownload2.svg" alt="">
                                                </a>
                                                <a class="setting__app-item ms-sm-3 mt-3 mt-sm-0" target="_blank" href="https://play.google.com/store/apps/details?id=com.google.android.apps.authenticator2">
                                                    <img src="styles/assets/app/img/GooglePlayDownload2.svg" alt="">
                                                </a>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="card dashboard_card">
                                        <div class="card__head d-flex justify-content-between align-items-center">
                                            <span>2FA deactivate:</span>
                                            <span class="card__head">2</span>
                                        </div>
                                        <div class="card__box">
                                            <div class="setting__qr d-flex flex-column flex-sm-row ">
                                                <div class="setting__qr-pic d-flex justify-content-center mb-3 mb-sm-0">
                                                    <img src="styles/assets/app/img/2fa.svg" alt="" style=" width:101px;">
                                                </div>
                                                <div class="setting__qr-form flex-grow-1 d-flex flex-column justify-content-center">

                                                    <span>Enter 2FA code:</span>
                                                    <div class="setting__qr-form-box-input d-flex flex-column flex-sm-row justify-content-sm-between">
                                                        <svg class="setting__qr-form-box-input-ico" width="40" height="40" viewBox="0 0 40 40" fill="none" xmlns="http://www.w3.org/2000/svg">
                                                            <rect width="40" height="40" rx="8" fill="#F8CC3D"></rect>
                                                            <path d="M21.9053 23.6522C23.5748 23.6522 24.6955 22.2122 24.6955 20.0694V15.8261C24.6955 15.5375 24.4624 15.3044 24.1738 15.3044H23.6521V12.0456C23.6521 9.62571 21.9747 8 19.4782 8H18.4347C15.9382 8 14.2608 9.62571 14.2608 12.0456V15.3044H13.739C13.4505 15.3044 13.2173 15.5375 13.2173 15.8261V20.0694C13.2173 21.8308 14.3881 23.6522 16.3477 23.6522H21.9053ZM15.3042 12.0456C15.3042 10.1939 16.5037 9.04348 18.4347 9.04348H19.4782C21.4091 9.04348 22.6086 10.1939 22.6086 12.0456V15.3044H15.3042V12.0456ZM14.2608 20.0694V16.3478H23.6521V20.0694C23.6521 20.493 23.568 22.6087 21.9053 22.6087H16.3477C15.0413 22.6087 14.2608 21.318 14.2608 20.0694Z" fill="white"></path>
                                                            <path d="M12.6957 30.9566H8.52174C8.23318 30.9566 8 31.1898 8 31.4783C8 31.7669 8.23318 32.0001 8.52174 32.0001H12.6957C12.9842 32.0001 13.2174 31.7669 13.2174 31.4783C13.2174 31.1898 12.9842 30.9566 12.6957 30.9566Z" fill="white"></path>
                                                            <path d="M8.67447 28.7168C8.77617 28.8185 8.90981 28.8696 9.04336 28.8696C9.17692 28.8696 9.31047 28.8185 9.41226 28.7168L10.3477 27.7813L11.2832 28.7168C11.3849 28.8185 11.5184 28.8696 11.6521 28.8696C11.7857 28.8696 11.9192 28.8185 12.021 28.7168C12.2249 28.5128 12.2249 28.183 12.021 27.9791L11.0855 27.0436L12.021 26.1082C12.2249 25.9042 12.2249 25.5744 12.021 25.3704C11.817 25.1665 11.4872 25.1665 11.2832 25.3704L10.3478 26.3059L9.41234 25.3704C9.20837 25.1665 8.8786 25.1665 8.67463 25.3704C8.47065 25.5744 8.47065 25.9042 8.67463 26.1082L9.61007 27.0436L8.67447 27.979C8.47049 28.183 8.47049 28.5127 8.67447 28.7168Z" fill="white"></path>
                                                            <path d="M18.9564 30.9566H14.7825C14.4939 30.9566 14.2607 31.1898 14.2607 31.4783C14.2607 31.7669 14.4939 32.0001 14.7825 32.0001H18.9564C19.2449 32.0001 19.4781 31.7669 19.4781 31.4783C19.4781 31.1898 19.2449 30.9566 18.9564 30.9566Z" fill="white"></path>
                                                            <path d="M14.9352 28.7168C15.0369 28.8185 15.1705 28.8696 15.3041 28.8696C15.4377 28.8696 15.5712 28.8185 15.673 28.7168L16.6084 27.7813L17.5439 28.7168C17.6456 28.8185 17.7792 28.8696 17.9128 28.8696C18.0464 28.8696 18.1799 28.8185 18.2817 28.7168C18.4857 28.5128 18.4857 28.183 18.2817 27.9791L17.3462 27.0436L18.2817 26.1082C18.4857 25.9042 18.4857 25.5744 18.2817 25.3704C18.0777 25.1665 17.7479 25.1665 17.544 25.3704L16.6085 26.3059L15.6731 25.3704C15.4691 25.1665 15.1393 25.1665 14.9353 25.3704C14.7314 25.5744 14.7314 25.9042 14.9353 26.1082L15.8708 27.0436L14.9353 27.9791C14.7312 28.183 14.7312 28.5127 14.9352 28.7168Z" fill="white"></path>
                                                            <path d="M25.2171 30.9566H21.0432C20.7547 30.9566 20.5215 31.1898 20.5215 31.4783C20.5215 31.7669 20.7547 32.0001 21.0432 32.0001H25.2171C25.5057 32.0001 25.7389 31.7669 25.7389 31.4783C25.7389 31.1898 25.5057 30.9566 25.2171 30.9566Z" fill="white"></path>
                                                            <path d="M24.5428 25.3703C24.3388 25.1663 24.009 25.1663 23.8051 25.3703L22.8696 26.3057L21.9342 25.3703C21.7302 25.1663 21.4004 25.1663 21.1964 25.3703C20.9925 25.5742 20.9925 25.904 21.1964 26.108L22.1319 27.0434L21.1964 27.9789C20.9925 28.1829 20.9925 28.5126 21.1964 28.7166C21.2981 28.8183 21.4317 28.8694 21.5653 28.8694C21.699 28.8694 21.8324 28.8183 21.9342 28.7166L22.8697 27.7812L23.8051 28.7166C23.9068 28.8183 24.0405 28.8694 24.174 28.8694C24.3076 28.8694 24.4411 28.8183 24.5429 28.7166C24.7469 28.5126 24.7469 28.1829 24.5429 27.9789L23.6075 27.0434L24.5429 26.108C24.7467 25.904 24.7467 25.5743 24.5428 25.3703Z" fill="white"></path>
                                                            <path d="M31.4784 30.9566H27.3045C27.0159 30.9566 26.7827 31.1898 26.7827 31.4783C26.7827 31.7669 27.0159 32.0001 27.3045 32.0001H31.4784C31.7669 32.0001 32.0001 31.7669 32.0001 31.4783C32.0001 31.1898 31.7669 30.9566 31.4784 30.9566Z" fill="white"></path>
                                                        </svg>
                                                        <input type="text" class="form-control ng-pristine ng-empty ng-invalid ng-invalid-required ng-valid-pattern ng-valid-minlength ng-valid-maxlength ng-touched" name="code" ng-model="vm.data.code" ng-required="true" ng-pattern="/^[\d]+$/" ng-minlength="6" ng-maxlength="6" maxlength="6" placeholder="6 digits" autocomplete="off" required="required">
                                                        <button type="submit" class="setting__qr-form-box-input-btn_2fa btn btn-primary">
                                                            <!-- ngSwitchWhen: false -->
                                                            <!-- ngSwitchWhen: true --><span ng-switch-when="true" class="ng-scope">Off</span><!-- end ngSwitchWhen: -->
                                                        </button>
                                                    </div>

                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    {else}


                                    <div class="card dashboard_card">
                                        <div class="card__head d-flex justify-content-between align-items-center"> <span>2FA authentication:</span>
                                            <span class="card__head_black">
                                                <svg width="45" height="45" viewBox="0 0 45 45" fill="none" xmlns="http://www.w3.org/2000/svg">
                                                    <rect width="45" height="45" rx="8" fill="#41464F"></rect>
                                                    <path d="M29.3528 19.1473C29.1578 18.9523 28.8408 18.9523 28.6458 19.1473L21.9998 25.7933L18.3528 22.1474C18.1578 21.9524 17.8408 21.9524 17.6458 22.1474C17.4508 22.3424 17.4508 22.6594 17.6458 22.8544L21.6457 26.8544C21.7438 26.9513 21.8717 27.0004 21.9997 27.0004C22.1278 27.0004 22.2557 26.9514 22.3528 26.8544L29.3527 19.8544C29.5478 19.6593 29.5478 19.3423 29.3528 19.1473Z" fill="#F8CC3D"></path>
                                                    <path d="M33.143 14.0207L23.143 11.0207C23.049 10.9928 22.95 10.9928 22.856 11.0207L12.856 14.0207C12.645 14.0837 12.5 14.2787 12.5 14.4998V25.4998C12.5 29.9218 19.242 33.8548 22.852 34.9778C22.9 34.9928 22.95 34.9997 23 34.9997C23.05 34.9997 23.1 34.9928 23.148 34.9778C26.758 33.8537 33.5 29.9217 33.5 25.4997V14.4998C33.5 14.2787 33.355 14.0847 33.143 14.0207ZM32.5 25.4997C32.5 29.0107 26.937 32.7027 23 33.9757C19.063 32.7027 13.5 29.0107 13.5 25.4997V14.8718L23 12.0218L32.5 14.8718V25.4997Z" fill="white"></path>
                                                </svg>
                                            </span>
                                        </div>
                                        <div class="card__box">
                                            <p class="mb-0 fw-normal">It is used to enter account, change settings, withdraw means and improve security</p>
                                        </div>
                                    </div>

                                    <div class="card dashboard_card">
                                        <div class="card__head d-flex justify-content-between align-items-center">
                                            <span>Download 2FA application:</span>
                                            <span>1</span>
                                        </div>
                                        <div class="card__box">
                                            <div class="setting__app d-flex flex-column flex-sm-row">
                                                <a class="setting__app-item" target="_blank" href="https://apps.apple.com/us/app/google-authenticator/id388497605">
                                                    <img src="styles/assets/app/img/IosDownload2.svg" alt="">
                                                </a>
                                                <a class="setting__app-item ms-sm-3 mt-3 mt-sm-0" target="_blank" href="https://play.google.com/store/apps/details?id=com.google.android.apps.authenticator2">
                                                    <img src="styles/assets/app/img/GooglePlayDownload2.svg" alt="">
                                                </a>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="card dashboard_card">
                                        <div class="card__head d-flex justify-content-between align-items-center"> <span>Scan QR code with application:</span>
                                            <span>2</span>
                                        </div>
                                        <div class="card__box">
                                            <div class="setting__qr d-flex flex-column flex-sm-row ">
                                                <div class="setting__qr-pic d-flex justify-content-center mb-3 mb-sm-0">
                                                    <img width="120px" alt="" src="{$tfa_secret_url}">
                                                </div>
                                                <div class="setting__qr-form flex-grow-1 d-flex flex-column justify-content-center">
                                                    <div class="setting__qr-form-box d-flex flex-column "> <span>Your key to recover:</span>
                                                        <div class="setting__qr-form-box-input">
                                                            <svg class="setting__qr-form-box-input-ico" width="40" height="40" viewBox="0 0 40 40" fill="none" xmlns="http://www.w3.org/2000/svg">
                                                                <rect width="40" height="40" rx="8" fill="#F8CC3D"></rect>
                                                                <path d="M25.8737 11.4093C25.1481 11.4093 24.4661 11.6918 23.953 12.2049C22.8939 13.264 22.8939 14.9872 23.953 16.0463C24.466 16.5593 25.1481 16.8419 25.8736 16.8419C26.5992 16.8419 27.2813 16.5593 27.7944 16.0463C28.8534 14.9872 28.8534 13.264 27.7944 12.2049C27.2813 11.6918 26.5992 11.4093 25.8737 11.4093ZM26.7447 14.9966C26.512 15.2292 26.2027 15.3574 25.8736 15.3574C25.5446 15.3574 25.2353 15.2292 25.0026 14.9966C24.5223 14.5163 24.5223 13.7348 25.0026 13.2546C25.2353 13.0219 25.5446 12.8938 25.8736 12.8938C26.2027 12.8938 26.512 13.0219 26.7447 13.2546C27.225 13.7348 27.225 14.5163 26.7447 14.9966Z" fill="white"></path>
                                                                <path d="M29.8695 10.1295C28.4963 8.7563 26.6704 8 24.7283 8C22.7862 8 20.9604 8.7563 19.5872 10.1295C17.4978 12.219 16.8909 15.3341 18.0006 18.0318L8.01256 28.02L8.00439 31.9918L15.1577 32V29.2427H17.9142V26.4863H20.6706V23.295L21.9677 21.998C22.8393 22.3544 23.7836 22.5411 24.7287 22.5411C26.6706 22.5411 28.4964 21.7849 29.8695 20.4118C32.7043 17.577 32.7043 12.9644 29.8695 10.1295ZM28.8198 19.3621C27.7271 20.4548 26.2741 21.0566 24.7287 21.0566C23.8315 21.0566 22.9356 20.8456 22.1382 20.4464L21.6596 20.2068L19.1861 22.6802V25.0018H16.4297V27.7582H13.6732V30.5138L9.49195 30.5091L9.49581 28.6362L19.7923 18.3394L19.5527 17.8608C18.4358 15.6298 18.8715 12.9447 20.6369 11.1792C21.7298 10.0863 23.1828 9.48448 24.7283 9.48448C26.2739 9.48448 27.7269 10.0863 28.8198 11.1792C31.0758 13.4352 31.0758 17.1061 28.8198 19.3621Z" fill="white"></path>
                                                            </svg>
                                                            <input type="text" class="form-control" ng-value="::vm.ga.secret" readonly="" value="{$tfa_secret}">
                                                            <input type=hidden name="tfa_secret" value="{$tfa_secret}">
                                                            <a class="setting__qr-form-box-input-btn btn btn-copy" title="Copy code" data-clipboard-text="{$tfa_secret}">
                                                                <svg width="18px" height="18px">
                                                                    <use xlink:href="#copy2"></use>
                                                                </svg>
                                                            </a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>


                                    <div class="card dashboard_card">
                                        <div class="card__head d-flex justify-content-between align-items-center">
                                            <span>2FA activation:</span>
                                            <span class="card__head">3</span>
                                        </div>
                                        <div class="card__box">
                                            <div class="setting__qr d-flex flex-column flex-sm-row ">
                                                <div class="setting__qr-pic d-flex justify-content-center mb-3 mb-sm-0">
                                                    <img src="styles/assets/app/img/2fa.svg" alt="" style=" width:101px;">
                                                </div>
                                                <div class="setting__qr-form flex-grow-1 d-flex flex-column justify-content-center">

                                                    <span>Enter 2FA code:</span>
                                                    <div class="setting__qr-form-box-input d-flex flex-column flex-sm-row justify-content-sm-between">
                                                        <svg class="setting__qr-form-box-input-ico" width="40" height="40" viewBox="0 0 40 40" fill="none" xmlns="http://www.w3.org/2000/svg">
                                                            <rect width="40" height="40" rx="8" fill="#F8CC3D"></rect>
                                                            <path d="M21.9053 23.6522C23.5748 23.6522 24.6955 22.2122 24.6955 20.0694V15.8261C24.6955 15.5375 24.4624 15.3044 24.1738 15.3044H23.6521V12.0456C23.6521 9.62571 21.9747 8 19.4782 8H18.4347C15.9382 8 14.2608 9.62571 14.2608 12.0456V15.3044H13.739C13.4505 15.3044 13.2173 15.5375 13.2173 15.8261V20.0694C13.2173 21.8308 14.3881 23.6522 16.3477 23.6522H21.9053ZM15.3042 12.0456C15.3042 10.1939 16.5037 9.04348 18.4347 9.04348H19.4782C21.4091 9.04348 22.6086 10.1939 22.6086 12.0456V15.3044H15.3042V12.0456ZM14.2608 20.0694V16.3478H23.6521V20.0694C23.6521 20.493 23.568 22.6087 21.9053 22.6087H16.3477C15.0413 22.6087 14.2608 21.318 14.2608 20.0694Z" fill="white"></path>
                                                            <path d="M12.6957 30.9566H8.52174C8.23318 30.9566 8 31.1898 8 31.4783C8 31.7669 8.23318 32.0001 8.52174 32.0001H12.6957C12.9842 32.0001 13.2174 31.7669 13.2174 31.4783C13.2174 31.1898 12.9842 30.9566 12.6957 30.9566Z" fill="white"></path>
                                                            <path d="M8.67447 28.7168C8.77617 28.8185 8.90981 28.8696 9.04336 28.8696C9.17692 28.8696 9.31047 28.8185 9.41226 28.7168L10.3477 27.7813L11.2832 28.7168C11.3849 28.8185 11.5184 28.8696 11.6521 28.8696C11.7857 28.8696 11.9192 28.8185 12.021 28.7168C12.2249 28.5128 12.2249 28.183 12.021 27.9791L11.0855 27.0436L12.021 26.1082C12.2249 25.9042 12.2249 25.5744 12.021 25.3704C11.817 25.1665 11.4872 25.1665 11.2832 25.3704L10.3478 26.3059L9.41234 25.3704C9.20837 25.1665 8.8786 25.1665 8.67463 25.3704C8.47065 25.5744 8.47065 25.9042 8.67463 26.1082L9.61007 27.0436L8.67447 27.979C8.47049 28.183 8.47049 28.5127 8.67447 28.7168Z" fill="white"></path>
                                                            <path d="M18.9564 30.9566H14.7825C14.4939 30.9566 14.2607 31.1898 14.2607 31.4783C14.2607 31.7669 14.4939 32.0001 14.7825 32.0001H18.9564C19.2449 32.0001 19.4781 31.7669 19.4781 31.4783C19.4781 31.1898 19.2449 30.9566 18.9564 30.9566Z" fill="white"></path>
                                                            <path d="M14.9352 28.7168C15.0369 28.8185 15.1705 28.8696 15.3041 28.8696C15.4377 28.8696 15.5712 28.8185 15.673 28.7168L16.6084 27.7813L17.5439 28.7168C17.6456 28.8185 17.7792 28.8696 17.9128 28.8696C18.0464 28.8696 18.1799 28.8185 18.2817 28.7168C18.4857 28.5128 18.4857 28.183 18.2817 27.9791L17.3462 27.0436L18.2817 26.1082C18.4857 25.9042 18.4857 25.5744 18.2817 25.3704C18.0777 25.1665 17.7479 25.1665 17.544 25.3704L16.6085 26.3059L15.6731 25.3704C15.4691 25.1665 15.1393 25.1665 14.9353 25.3704C14.7314 25.5744 14.7314 25.9042 14.9353 26.1082L15.8708 27.0436L14.9353 27.9791C14.7312 28.183 14.7312 28.5127 14.9352 28.7168Z" fill="white"></path>
                                                            <path d="M25.2171 30.9566H21.0432C20.7547 30.9566 20.5215 31.1898 20.5215 31.4783C20.5215 31.7669 20.7547 32.0001 21.0432 32.0001H25.2171C25.5057 32.0001 25.7389 31.7669 25.7389 31.4783C25.7389 31.1898 25.5057 30.9566 25.2171 30.9566Z" fill="white"></path>
                                                            <path d="M24.5428 25.3703C24.3388 25.1663 24.009 25.1663 23.8051 25.3703L22.8696 26.3057L21.9342 25.3703C21.7302 25.1663 21.4004 25.1663 21.1964 25.3703C20.9925 25.5742 20.9925 25.904 21.1964 26.108L22.1319 27.0434L21.1964 27.9789C20.9925 28.1829 20.9925 28.5126 21.1964 28.7166C21.2981 28.8183 21.4317 28.8694 21.5653 28.8694C21.699 28.8694 21.8324 28.8183 21.9342 28.7166L22.8697 27.7812L23.8051 28.7166C23.9068 28.8183 24.0405 28.8694 24.174 28.8694C24.3076 28.8694 24.4411 28.8183 24.5429 28.7166C24.7469 28.5126 24.7469 28.1829 24.5429 27.9789L23.6075 27.0434L24.5429 26.108C24.7467 25.904 24.7467 25.5743 24.5428 25.3703Z" fill="white"></path>
                                                            <path d="M31.4784 30.9566H27.3045C27.0159 30.9566 26.7827 31.1898 26.7827 31.4783C26.7827 31.7669 27.0159 32.0001 27.3045 32.0001H31.4784C31.7669 32.0001 32.0001 31.7669 32.0001 31.4783C32.0001 31.1898 31.7669 30.9566 31.4784 30.9566Z" fill="white"></path>
                                                        </svg>
                                                        <input type="text" class="form-control ng-pristine ng-empty ng-invalid ng-invalid-required ng-valid-pattern ng-valid-minlength ng-valid-maxlength ng-touched" name="code" ng-model="vm.data.code" ng-required="true" ng-pattern="/^[\d]+$/" ng-minlength="6" ng-maxlength="6" maxlength="6" placeholder="6 digits" autocomplete="off" required="required">
                                                        <button type="submit" class="setting__qr-form-box-input-btn_2fa btn btn-primary">
                                                            <!-- ngSwitchWhen: false -->
                                                            <!-- ngSwitchWhen: true --><span ng-switch-when="true" class="ng-scope">Enable</span><!-- end ngSwitchWhen: -->
                                                        </button>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    {/if}

                                    <!-- </div> -->

                                </div>
                            </div>
							</form>
                        </div>
                    </div>
                    <!-- ngIf: alc.bsideState -->
                </div>

           

            <!-- start menu account -->
            {include file="account_menu.tpl"}
			<!-- end menu account -->

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
    {literal}
    <script language=javascript>
        document.mainform.time.value = (new Date()).getTime();

        function checkform() {
            if (!document.mainform.code.value.match(/^[0-9]{6}$/)) {
                alert("Please type code!");
                document.mainform.code.focus();
                return false;
            }
            return true;
        }

    </script>
    {/literal}
    <script>
        $(document).ready(function() {
            $(".sx-close").click(function() {
                $(".modal-js.rex.animated-fast").removeClass("fadeIn active");
                $(".modal-js.rex.animated-fast").addClass("fadeOutDown");

            });
        });
    </script>
	{include file="tool_copy.tpl"}
	{include file="qr_fix.tpl"}

</body>


</html>
