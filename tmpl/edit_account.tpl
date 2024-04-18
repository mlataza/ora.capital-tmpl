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

                        {if $errors.turing_image}Invalid turing image{/if}
                        {if $errors.invalid_transaction_code}You have provided invalid Current Transaction Code{/if}
                        {if $errors.tfa_code}Invalid 2FA code{/if}
                        {if $errors.no_fullname}Please enter your full name{/if}
                        {if $errors.ip_exists_in_database}Your IP already exists in our database. Sorry, but registration impossible{/if}
                        {if $errors.invalid_username}Please enter valid username! It should contains English letters and digits only.{/if}
                        {if $errors.username_too_short}Username should contains {$errors.username_too_short} charaters at least{/if}
                        {if $errors.username_exists}The Username is already taken. Please try another Username.{/if}
                        {if $errors.password_confirm}Please correcty confirm your password{/if}
                        {if $errors.password_too_small}The password you provided is too small, please enter at least {$errors.password_too_small} characters!{/if}
                        {if $errors.invalid_email}Please valid email address{/if}
                        {if $errors.email_confirm}Please correcty confirm your email address{/if}
                        {if $errors.email_exists}An account with this email is already exist{/if}
                        {if $errors.no_address}Please enter your address{/if}
                        {if $errors.no_city}Please enter your city{/if}
                        {if $errors.no_state}Please enter your state{/if}
                        {if $errors.no_zip}Please enter your zip{/if}
                        {if $errors.no_country}Please enter your country{/if}
                        {if $errors.transaction_code_confirm}Please correcty confirm your transaction code{/if}
                        {if $errors.transaction_code_too_small}The transaction code you provided is too small, please enter at least {$errors.transaction_code_too_small} characters!{/if}
                        {if $errors.transaction_code_vs_password}The Transaction Code should not be equal to the Password you have defined{/if}
                        {if $errors.invalid_account_format}
                        {foreach from=$errors.invalid_account_format item=err}
                        {$err}
                        {/foreach}
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
                    <a class="menu__box-el d-flex align-items-center active" href="?a=edit_account">
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
                                        <h2 class="app__box-title vis mb-0">Account settings</h2>
                                        {include file="account_coin.tpl"}
                                    </div>
                                </div>
                            </div>

                            <div id="mainwalletbox-set" class="dashboard__wallet d-flex flex-column ng-scope">
                                <!-- end Empty Zone -->
                            </div>

                            <script defer src="styles/assets/app/video.js"></script>
							
							 <form action="" method=post onsubmit="return checkform()" name=editform class="ng-pristine ng-valid ng-valid-required ng-valid-minlength ng-valid-maxlength ng-valid-pattern">
                <input type=hidden name=a value=edit_account>
                <input type=hidden name=action value=edit_account>
                <input type=hidden name=fullname {if $userinfo.name=="" } value="{$userinfo.username}" {else} value="{$userinfo.name}" {/if}>
                <input type=hidden name=email value="{$userinfo.email|escape:html}">
                <input type=hidden name=say value="">
							
                            {counter name=rex_1 start=0 print=0}
                            <div class="dashboard__box">
                                <div class="row">
                                    <div class="col-12 col-xl-6 ng-scope" ng-controller="Settings2FACtrl as vm">
                                        <h2 class="dashboard__box-subtitle">Account Settings:</h2>
                                        <div class="card dashboard_card">
                                            <div class="card__head d-flex justify-content-between align-items-center"> <span>Account Name:</span>
                                                <span class="card__head">{counter name=rex_1}</span>
                                            </div>
                                            <div class="card__box">
                                                <div class="login__form-input">
                                                    <svg width="40px" height="40px">
                                                        <use xlink:href="#form_user"></use>
                                                    </svg>
                                                    <input type="text" value="{$userinfo.username}" class="form-control form-control_large ng-pristine ng-untouched ng-valid ng-empty ng-valid-required ng-valid-minlength ng-valid-maxlength" disabled="disabled" readonly="readonly">
                                                </div>
                                            </div>
                                        </div>
                                        {if $settings.use_user_location}
                                        <div class="card dashboard_card">
                                            <div class="card__head d-flex justify-content-between align-items-center"> <span>Account name:</span>
                                                <span class="card__head">{counter name=rex_1}</span>
                                            </div>
                                            <div class="card__box">
                                                <div class="login__form-input">
                                                    <svg width="40px" height="40px">
                                                        <use xlink:href="#form_user"></use>
                                                    </svg>
                                                    <input type=text name=address value="{$frm.address|default:$userinfo.address|escape:html}" class="form-control form-control_large ng-pristine ng-untouched ng-valid ng-empty ng-valid-required ng-valid-minlength ng-valid-maxlength">
                                                </div>
                                            </div>
                                        </div>

                                        <div class="card dashboard_card">
                                            <div class="card__head d-flex justify-content-between align-items-center"> <span>Your City:</span>
                                                <span class="card__head">{counter name=rex_1}</span>
                                            </div>
                                            <div class="card__box">
                                                <div class="login__form-input">
                                                    <svg width="40px" height="40px">
                                                        <use xlink:href="#form_user"></use>
                                                    </svg>
                                                    <input type=text name=city value="{$frm.city|default:$userinfo.city|escape:html}" class="form-control form-control_large ng-pristine ng-untouched ng-valid ng-empty ng-valid-required ng-valid-minlength ng-valid-maxlength">
                                                </div>
                                            </div>
                                        </div>

                                        <div class="card dashboard_card">
                                            <div class="card__head d-flex justify-content-between align-items-center"> <span>Your State:</span>
                                                <span class="card__head">{counter name=rex_1}</span>
                                            </div>
                                            <div class="card__box">
                                                <div class="login__form-input">
                                                    <svg width="40px" height="40px">
                                                        <use xlink:href="#form_user"></use>
                                                    </svg>
                                                    <input type=text name=state value="{$frm.state|default:$userinfo.state|escape:html}" class="form-control form-control_large ng-pristine ng-untouched ng-valid ng-empty ng-valid-required ng-valid-minlength ng-valid-maxlength">
                                                </div>
                                            </div>
                                        </div>

                                        <div class="card dashboard_card">
                                            <div class="card__head d-flex justify-content-between align-items-center"> <span>Your Zip:</span>
                                                <span class="card__head">{counter name=rex_1}</span>
                                            </div>
                                            <div class="card__box">
                                                <div class="login__form-input">
                                                    <svg width="40px" height="40px">
                                                        <use xlink:href="#form_user"></use>
                                                    </svg>
                                                    <input type=text name=zip value="{$frm.zip|default:$userinfo.zip|escape:html}" class="form-control form-control_large ng-pristine ng-untouched ng-valid ng-empty ng-valid-required ng-valid-minlength ng-valid-maxlength">
                                                </div>
                                            </div>
                                        </div>

                                        <div class="card dashboard_card">
                                            <div class="card__head d-flex justify-content-between align-items-center"> <span>Your Country:</span>
                                                <span class="card__head">{counter name=rex_1}</span>
                                            </div>
                                            <div class="card__box">
                                                <div class="login__form-input">
                                                    <svg width="40px" height="40px">
                                                        <use xlink:href="#form_user"></use>
                                                    </svg>
                                                    <select name=country class="form-control form-control_large ng-pristine ng-untouched ng-valid ng-empty ng-valid-required ng-valid-minlength ng-valid-maxlength">
                                                        <option value="">--Select--</option>
                                                        {foreach from=$countries item=c}
                                                        <option {if ($frm.country && $c.name==$frm.country) || (!$frm.country && $c.name==$userinfo.country)}selected{/if}>{$c.name|escape:html}</option>
                                                        {/foreach}
                                                    </select>
                                                </div>
                                            </div>
                                        </div>
                                        {/if}

                                        <div class="card dashboard_card">
                                            <div class="card__head d-flex justify-content-between align-items-center"> <span>E-mail address:</span>
                                                <span class="card__head">{counter name=rex_1}</span>
                                            </div>
                                            <div class="card__box">
                                                <div class="login__form-input">
                                                    <svg width="40px" height="40px">
                                                        <use xlink:href="#form_user"></use>
                                                    </svg>
                                                    <input type="text" name=email value="{$frm.email|default:$userinfo.email|escape:html}" class="form-control form-control_large ng-pristine ng-untouched ng-valid ng-empty ng-valid-required ng-valid-minlength ng-valid-maxlength" ng-model="vm.data.new_password" ng-required="vm.data.password" ng-minlength="6" maxlength="32" autocomplete="off">
                                                </div>
                                            </div>
                                        </div>

                                        {if $settings.use_transaction_code}
                                        {if $settings.use_transaction_code_edit_account != 1}
                                        {if $userinfo.transaction_code != ''}

                                        <div class="card dashboard_card">
                                            <div class="card__head d-flex justify-content-between align-items-center"> <span>Current Transaction Code:</span>
                                                <span class="card__head">{counter name=rex_1}</span>
                                            </div>
                                            <div class="card__box">
                                                <div class="login__form-input">
                                                    <svg width="40px" height="40px">
                                                        <use xlink:href="#form_user"></use>
                                                    </svg>
                                                    <input type=password name=transaction_code_current value="" class="form-control form-control_large ng-pristine ng-untouched ng-valid ng-empty ng-valid-required ng-valid-minlength ng-valid-maxlength" autocomplete="off">
                                                </div>
                                            </div>
                                        </div>

                                        {/if}
                                        {/if}

                                        <div class="card dashboard_card">
                                            <div class="card__head d-flex justify-content-between align-items-center"> <span>New Transaction Code:</span>
                                                <span class="card__head">{counter name=rex_1}</span>
                                            </div>
                                            <div class="card__box">
                                                <div class="login__form-input">
                                                    <svg width="40px" height="40px">
                                                        <use xlink:href="#form_user"></use>
                                                    </svg>
                                                    <input type=password name=transaction_code value="" class="form-control form-control_large ng-pristine ng-untouched ng-valid ng-empty ng-valid-required ng-valid-minlength ng-valid-maxlength" autocomplete="off">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="card dashboard_card">
                                            <div class="card__head d-flex justify-content-between align-items-center"> <span>Retype Transaction Code:</span>
                                                <span class="card__head">{counter name=rex_1}</span>
                                            </div>
                                            <div class="card__box">
                                                <div class="login__form-input">
                                                    <svg width="40px" height="40px">
                                                        <use xlink:href="#form_user"></use>
                                                    </svg>
                                                    <input type=password name=transaction_code2 value="" class="form-control form-control_large ng-pristine ng-untouched ng-valid ng-empty ng-valid-required ng-valid-minlength ng-valid-maxlength" autocomplete="off">
                                                </div>
                                            </div>
                                        </div>
                                        {/if}

                                        {if $settings.use_rcb}
                                        <div class="card dashboard_card">
                                            <div class="card__head d-flex justify-content-between align-items-center"> <span>New Transaction Code:</span>
                                                <span class="card__head">{counter name=rex_1}</span>
                                            </div>
                                            <div class="card__box">
                                                <div class="login__form-input">
                                                    <svg width="40px" height="40px">
                                                        <use xlink:href="#form_user"></use>
                                                    </svg>
                                                    <input type=text name="rcb" value="{$frm.rcb|default:$userinfo.rcb|number_format:2}" class="form-control form-control_large ng-pristine ng-untouched ng-valid ng-empty ng-valid-required ng-valid-minlength ng-valid-maxlength" autocomplete="off">
                                                </div>
                                            </div>
                                        </div>
                                        {/if}

                                        {if $settings.use_transaction_code_edit_account == 1}
                                        <div class="card dashboard_card">
                                            <div class="card__head d-flex justify-content-between align-items-center"> <span>New Transaction Code:</span>
                                                <span class="card__head">{counter name=rex_1}</span>
                                            </div>
                                            <div class="card__box">
                                                <div class="login__form-input">
                                                    <svg width="40px" height="40px">
                                                        <use xlink:href="#form_user"></use>
                                                    </svg>
                                                    <input type=password name=transaction_code_current value="" class="form-control form-control_large ng-pristine ng-untouched ng-valid ng-empty ng-valid-required ng-valid-minlength ng-valid-maxlength" autocomplete="off">
                                                </div>
                                            </div>
                                        </div>
                                        {/if}


                                        {if $userinfo.tfa_settings.edit_account}
                                        <div class="card dashboard_card">
                                            <div class="card__head d-flex justify-content-between align-items-center"> <span>New Transaction Code:</span>
                                                <span class="card__head">{counter name=rex_1}</span>
                                            </div>
                                            <div class="card__box">
                                                <div class="login__form-input">
                                                    <svg width="40px" height="40px">
                                                        <use xlink:href="#form_user"></use>
                                                    </svg>
                                                    <input type="text" name="tfa_code" class="form-control form-control_large ng-pristine ng-untouched ng-valid ng-empty ng-valid-required ng-valid-minlength ng-valid-maxlength" autocomplete="off">
                                                    <input type="hidden" name="tfa_time" id="tfa_time">
                                                </div>
                                            </div>
                                        </div>
                                        {literal}
                                        <script language=javascript>
                                            document.getElementById('tfa_time').value = (new Date()).getTime();

                                        </script>
                                        {/literal}
                                        {/if}


                                    </div>
									
									
									
                                    <div class="col-12 col-xl-6 ng-scope" ng-controller="SettingsSecurityCtrl as vm">
                                        <h2 class="dashboard__box-subtitle">Change password:</h2>
                                        <div class="card dashboard_card">
                                            <div class="card__head d-flex justify-content-between align-items-center"> <span>New password:</span>
                                                <span class="card__head">1</span>
                                            </div>
                                            <div class="card__box">
                                                <div class="login__form-input">
                                                    <svg width="40px" height="40px">
                                                        <use xlink:href="#lock"></use>
                                                    </svg>
                                                    <input type="password" name=password value="" class="form-control form-control_large ng-pristine ng-untouched ng-valid ng-empty ng-valid-required ng-valid-minlength ng-valid-maxlength" ng-model="vm.data.new_password" ng-required="vm.data.password" ng-minlength="6" maxlength="32" placeholder="**********" autocomplete="off">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="card dashboard_card">
                                            <div class="card__head d-flex justify-content-between align-items-center"> <span>Password confirmation:</span>
                                                <span class="card__head">2</span>
                                            </div>
                                            <div class="card__box">
                                                <div class="setting__qr-form-box d-flex flex-column ">
                                                    <div class="setting__qr-form-box-input d-flex flex-column flex-sm-row justify-content-sm-between">
                                                        <svg class="setting__qr-form-box-input-ico" width="40px" height="40px">
                                                            <use xlink:href="#lock"></use>
                                                        </svg>
                                                        <input type="password" name=password2 value="" class="form-control ng-pristine ng-untouched ng-valid ng-empty ng-valid-required ng-valid-pattern ng-valid-minlength ng-valid-maxlength" ng-model="vm.data.new_password_confirmation" ng-required="vm.data.password" ng-minlength="6" maxlength="32" placeholder="**********" autocomplete="off">
                                                        {if $ti.check.signup}
														{else}
 													    <button type="submit" class="setting__qr-form-box-input-btn_2fa btn btn-primary" ng-disabled="busy" sx-submit=""> <span>Update</span>
                                                        </button>
														{/if}
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
									    {if $userinfo.tfa_settings.edit_account}
										<div class="card dashboard_card">
                                            <div class="card__head d-flex justify-content-between align-items-center"> <span>Enter Code:</span>
                                                <span class="card__head">3</span>
                                            </div>
                                            <div class="card__box">
                                                <div class="setting__qr-form-box d-flex flex-column ">
                                                    <div class="setting__qr-form-box-input d-flex flex-column flex-sm-row justify-content-sm-between">
                                                        <svg class="setting__qr-form-box-input-ico" width="40px" height="40px">
                                                            <use xlink:href="#form_key"></use>
                                                        </svg>
                                                        <input name=validation_number ng-required="true" placeholder="enter your code" class="form-control ng-pristine ng-untouched ng-valid ng-empty ng-valid-required ng-valid-pattern ng-valid-minlength ng-valid-maxlength" autocomplete="off">
                                                        <span class="input-group-addon" style="padding: 0;padding-left: 0px;border: none;background: none;padding-left: 10px;">
                                                        <img id="codeimgz" src="{" ?a=show_validation_image&`$ti.session.name`=`$ti.session.id`&rand=`$ti.session.rand`"|encurl}">
                                                        </span>
														<button type="submit" class="setting__qr-form-box-input-btn_2fa btn btn-primary" ng-disabled="busy" sx-submit=""> <span>Update</span>
                                                        </button>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
										{/if}
                                        <!-- </form> -->
                                    </div>
                                </div>
                            </div>
							
							</form>
							
                        </div>
                    </div>
                    <!-- ngIf: alc.bsideState -->
                </div>
                <!-- </form> -->
                <!-- start Wallet Addresses -->
                <div id="address_book" class="dashboard__box ng-scope adressnf">
                    <!-- ngIf: vm.ready -->
                    <div class="row animated fadeIn ng-scope">
                        <div class="col-12">
                            <h2 class="dashboard__box-subtitle">Payment systems addresses management:</h2>
                            <div class="card dashboard__search dashboard_card ng-pristine ng-valid ng-valid-required ng-valid-pattern ng-valid-minlength ng-valid-maxlength" name="vm.form" autocomplete="off" novalidate="">
                                <!-- <form class="card dashboard__search dashboard_card ng-pristine ng-valid ng-valid-required ng-valid-pattern ng-valid-minlength ng-valid-maxlength" name="vm.form" autocomplete="off" novalidate=""> -->
                                <div class="card__head d-flex justify-content-between align-items-center"> <span>Add or change addresses to be used:</span>
                                    <span class="card__head_black">
                                        <svg width="45" height="45" viewBox="0 0 45 45" fill="none" xmlns="http://www.w3.org/2000/svg">
                                            <rect width="45" height="45" rx="8" fill="#41464F"></rect>
                                            <path d="M31.5 33H13.5C12.121 33 11 31.878 11 30.5V14.5C11 14.224 11.224 14 11.5 14C11.776 14 12 14.224 12 14.5V30.5C12 31.327 12.673 32 13.5 32H31.5C31.775 32 32 31.776 32 31.5V27.5C32 27.224 32.224 27 32.5 27C32.776 27 33 27.224 33 27.5V31.5C33 32.327 32.327 33 31.5 33Z" fill="white"></path>
                                            <path d="M32.5 22C32.224 22 32 21.776 32 21.5V17.5C32 17.224 31.775 17 31.5 17H13.5C12.121 17 11 15.878 11 14.5C11 13.122 12.121 12 13.5 12H28.5C29.327 12 30 12.673 30 13.5V16H31.5C32.327 16 33 16.673 33 17.5V21.5C33 21.776 32.776 22 32.5 22ZM13.5 13C12.673 13 12 13.673 12 14.5C12 15.327 12.673 16 13.5 16H29V13.5C29 13.224 28.775 13 28.5 13H13.5Z" fill="white"></path>
                                            <path d="M34.5 28H29.5C27.57 28 26 26.43 26 24.5C26 22.57 27.57 21 29.5 21H34.5C34.776 21 35 21.224 35 21.5V27.5C35 27.776 34.776 28 34.5 28ZM29.5 22C28.121 22 27 23.122 27 24.5C27 25.878 28.121 27 29.5 27H34V22H29.5Z" fill="#F8CC3D"></path>
                                            <path d="M29.4999 26C28.6729 26 27.9999 25.327 27.9999 24.5C27.9999 23.673 28.6729 23 29.4999 23C30.3269 23 30.9999 23.673 30.9999 24.5C30.9999 25.327 30.3269 26 29.4999 26ZM29.4999 24C29.2249 24 28.9999 24.224 28.9999 24.5C28.9999 24.776 29.2249 25 29.4999 25C29.7749 25 29.9999 24.776 29.9999 24.5C29.9999 24.224 29.7749 24 29.4999 24Z" fill="#F8CC3D"></path>
                                        </svg>
                                    </span>
                                </div>
                                <div class="card__box">
                                    <div class="row">
                                        <div class="col-12 col-xl-12 rowrex">
                                            {foreach item=ps from=$pay_accounts}
                                            <div class="card__box-input mb-3 ng-scope columnrex">
                                                <div class="card__box-input-row d-flex justify-content-between">
                                                    <div class="card__box-input-ico">
                                                        <img width="40px" height="40px" src="styles/assets/app/pay/{$ps.id}.svg" style="border-radius: 8px;" />
                                                        <span class="ng-binding">{$ps.name}</span>
                                                    </div>
                                                    <div class="card__box-input-form d-flex align-items-center">
                                                        <input type="text" name="pay_account[{$ps.id}]" placeholder="Enter Your Address {$ps.name}" value="{$frm.pay_account[$ps.id]|default:$ps.account|escape:html}" data-validate="{$ps.validate.func}" data-validate-{$ps.validate.func}="{$ps.validate[$ps.validate.func]}" data-validate-notice="{$ps.validate.notification|escape:html}" class="form-control e-borderless ng-pristine ng-valid ng-empty ng-valid-required ng-valid-pattern ng-valid-minlength ng-valid-maxlength ng-touched"> <span>
                                                            <!-- ngIf: account.address -->
                                                            <!-- ngIf: !account.address -->
                                                            {if $ps.account == ""}
                                                            <svg width="25" height="25" viewBox="0 0 25 25" fill="none" xmlns="http://www.w3.org/2000/svg" class="ng-scope">
                                                                <path d="M0 6.4C0 4.15979 0 3.03969 0.435974 2.18404C0.819467 1.43139 1.43139 0.819467 2.18404 0.435974C3.03969 0 4.15979 0 6.4 0H18.6C20.8402 0 21.9603 0 22.816 0.435974C23.5686 0.819467 24.1805 1.43139 24.564 2.18404C25 3.03969 25 4.15979 25 6.4V18.6C25 20.8402 25 21.9603 24.564 22.816C24.1805 23.5686 23.5686 24.1805 22.816 24.564C21.9603 25 20.8402 25 18.6 25H6.4C4.15979 25 3.03969 25 2.18404 24.564C1.43139 24.1805 0.819467 23.5686 0.435974 22.816C0 21.9603 0 20.8402 0 18.6V6.4Z" fill="#F8CC3D"></path>
                                                                <path d="M12.5 4C7.81305 4 4 7.81305 4 12.5C4 17.187 7.81305 21 12.5 21C17.187 21 21 17.187 21 12.5C21 7.81305 17.187 4 12.5 4ZM12.5 19.7857C8.48252 19.7857 5.21427 16.5175 5.21427 12.5C5.21427 8.48252 8.48252 5.21427 12.5 5.21427C16.5175 5.21427 19.7857 8.48252 19.7857 12.5C19.7857 16.5175 16.5175 19.7857 12.5 19.7857Z" fill="white"></path>
                                                                <path d="M12.5001 8.45239C12.1647 8.45239 11.8929 8.72419 11.8929 9.05954V15.9405C11.8929 16.2758 12.1647 16.5476 12.5001 16.5476C12.8354 16.5476 13.1072 16.2758 13.1072 15.9405V9.05954C13.1072 8.72419 12.8354 8.45239 12.5001 8.45239Z" fill="white"></path>
                                                                <path d="M15.9402 11.8928H9.0593C8.72395 11.8928 8.45215 12.1646 8.45215 12.5C8.45215 12.8353 8.72395 13.1071 9.0593 13.1071H15.9402C16.2756 13.1071 16.5474 12.8353 16.5474 12.5C16.5474 12.1646 16.2756 11.8928 15.9402 11.8928Z" fill="white"></path>
                                                            </svg>
                                                            {else}
                                                            <svg width="16px" height="16px" class="ng-scope">
                                                                <use xlink:href="#check2"></use>
                                                            </svg>
                                                            {/if}
                                                            <!-- end ngIf: !account.address -->
                                                        </span>
                                                    </div>
                                                </div>
                                            </div>
                                            {/foreach}

                                            {foreach item=p from=$mpay_accounts}
                                            {foreach item=ps from=$p.accounts}
                                            <div class="card__box-input mb-3 ng-scope columnrex">
                                                <div class="card__box-input-row d-flex justify-content-between">
                                                    <div class="card__box-input-ico">
                                                        <img width="40px" height="40px" src="styles/assets/app/pay/{$p.id}.svg" style="border-radius: 8px;" />
                                                        <span class="ng-binding">{$p.name}
                                                            <!-- {$ps.name} --></span>
                                                    </div>
                                                    <div class="card__box-input-form d-flex align-items-center">
                                                        <input type="text" name="pay_account[{$p.id}][{$ps.name|escape:html}]" value="{$frm.pay_account[$p.id][$ps.name]|default:$ps.value|escape:html}" class="form-control e-borderless ng-pristine ng-valid ng-empty ng-valid-required ng-valid-pattern ng-valid-minlength ng-valid-maxlength ng-touched"> <span>
                                                            <!-- ngIf: account.address -->
                                                            <!-- ngIf: !account.address -->
                                                            {if $ps.value == ""}
                                                            <svg width="25" height="25" viewBox="0 0 25 25" fill="none" xmlns="http://www.w3.org/2000/svg" class="ng-scope">
                                                                <path d="M0 6.4C0 4.15979 0 3.03969 0.435974 2.18404C0.819467 1.43139 1.43139 0.819467 2.18404 0.435974C3.03969 0 4.15979 0 6.4 0H18.6C20.8402 0 21.9603 0 22.816 0.435974C23.5686 0.819467 24.1805 1.43139 24.564 2.18404C25 3.03969 25 4.15979 25 6.4V18.6C25 20.8402 25 21.9603 24.564 22.816C24.1805 23.5686 23.5686 24.1805 22.816 24.564C21.9603 25 20.8402 25 18.6 25H6.4C4.15979 25 3.03969 25 2.18404 24.564C1.43139 24.1805 0.819467 23.5686 0.435974 22.816C0 21.9603 0 20.8402 0 18.6V6.4Z" fill="#F8CC3D"></path>
                                                                <path d="M12.5 4C7.81305 4 4 7.81305 4 12.5C4 17.187 7.81305 21 12.5 21C17.187 21 21 17.187 21 12.5C21 7.81305 17.187 4 12.5 4ZM12.5 19.7857C8.48252 19.7857 5.21427 16.5175 5.21427 12.5C5.21427 8.48252 8.48252 5.21427 12.5 5.21427C16.5175 5.21427 19.7857 8.48252 19.7857 12.5C19.7857 16.5175 16.5175 19.7857 12.5 19.7857Z" fill="white"></path>
                                                                <path d="M12.5001 8.45239C12.1647 8.45239 11.8929 8.72419 11.8929 9.05954V15.9405C11.8929 16.2758 12.1647 16.5476 12.5001 16.5476C12.8354 16.5476 13.1072 16.2758 13.1072 15.9405V9.05954C13.1072 8.72419 12.8354 8.45239 12.5001 8.45239Z" fill="white"></path>
                                                                <path d="M15.9402 11.8928H9.0593C8.72395 11.8928 8.45215 12.1646 8.45215 12.5C8.45215 12.8353 8.72395 13.1071 9.0593 13.1071H15.9402C16.2756 13.1071 16.5474 12.8353 16.5474 12.5C16.5474 12.1646 16.2756 11.8928 15.9402 11.8928Z" fill="white"></path>
                                                            </svg>
                                                            {else}
                                                            <svg width="16px" height="16px" class="ng-scope">
                                                                <use xlink:href="#check2"></use>
                                                            </svg>
                                                            {/if}
                                                            <!-- end ngIf: !account.address -->
                                                        </span>
                                                    </div>
                                                </div>
                                            </div>
                                            {/foreach}
                                            {/foreach}


                                        </div>


                                    </div>
                                    <div class="card__box card__box_2fa">
                                        <div class="setting__qr-form-box d-flex flex-column ">
                                            <button type="submit" class="setting__qr-form-box-input-btn_2fa btn btn-primary m-0" ng-disabled="busy" sx-submit="">
                                                <svg width="40px" height="40px">
                                                    <use xlink:href="#check1"></use>
                                                </svg> <span>Apply changes</span>
                                            </button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- </form> -->
                        </div>
                    </div>
                    <!-- end ngIf: vm.ready -->
					
					
					
					
					
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

    <script>
        $(document).ready(function() {
            $(".sx-close").click(function() {
                $(".modal-js.rex.animated-fast").removeClass("fadeIn active");
                $(".modal-js.rex.animated-fast").addClass("fadeOutDown");

            });
        });

    </script>

</body>


</html>
