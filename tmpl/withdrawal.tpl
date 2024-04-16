{include file="header.tpl"}

<div class="dashboard__box">
    <div class="row flex-nowrap">
        <div class="dashboard__col1">
            <div class="dashboard__main flex-grow-1">
                <div class="dashboard__main-head d-flex flex-column">
                    <div class="dashboard__main-head-mobile d-flex justify-content-between">
                        <button id="dashboardMenuhead"
                            class="btn dashboard__main-head-btn dashboard__main-head-btn_menu js-open-menu js-burger d-flex d-lg-none justify-content-start"
                            ng-click="alc.toggleAside(true)">
                            <svg width="22" height="24" viewBox="0 0 22 24" fill="none"
                                xmlns="http://www.w3.org/2000/svg">
                                <path d="M22 19.5H0V22.5H22V19.5Z" fill="#fff"></path>
                                <path d="M22 10.5H0V13.5H22V10.5Z" fill="#fff"></path>
                                <path d="M22 1.5H0V4.50003H22V1.5Z" fill="#fff"></path>
                            </svg>
                        </button>
                        <a href="/"
                            class="dashboard__logo d-flex d-lg-none align-items-center justify-content-lg-start m-0">
                            <img class="header__logo-svg" src="styles/assets/app/img/18.png"
                                srcset="styles/assets/app/img/18.png 1x, styles/assets/app/img/18@2x.png 2x" alt="">
                        </a>
                        <button id="AccountdeState" type="button"
                            class="btn dashboard__main-head-btn dashboard__main-head-btn_user js-sidebar"
                            ng-click="alc.toggleBside()">
                            <!-- ngSwitchWhen: true -->
                            <!-- ngSwitchWhen: false --><span ng-switch-when="false" class="ng-scope">Open</span>
                            <!-- end ngSwitchWhen: -->
                            <svg width="12px" height="12px">
                                <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 12 12"
                                    id="arr_right_grey">
                                    <path
                                        d="M9.334 5.532 3.994.192A.652.652 0 0 0 3.528 0a.652.652 0 0 0-.464.192l-.393.393a.657.657 0 0 0 0 .928l4.484 4.485-4.49 4.489a.652.652 0 0 0-.19.464c0 .176.067.34.19.464l.394.393a.652.652 0 0 0 .464.192c.176 0 .34-.068.464-.192l5.346-5.345a.653.653 0 0 0 .191-.465.652.652 0 0 0-.191-.466z"
                                        fill="#5C677D"></path>
                                </svg>
                            </svg>
                        </button>
                    </div>
                    <div class="d-flex flex-column flex-grow-1">
                        <p class="app__box-subtitle vis">
                            <svg width="12px" height="12px">
                                <svg id="circle" xmlns="http://www.w3.org/2000/svg"
                                    xmlns:xlink="http://www.w3.org/1999/xlink" viewBox="0 0 7 8">
                                    <defs>
                                        <linearGradient id="Degradado_sin_nombre_12" y1="4" x2="7" y2="4"
                                            gradientUnits="userSpaceOnUse">
                                            <stop offset="0" stop-color="#f2bf19" />
                                            <stop offset="1" stop-color="#fed85d" />
                                        </linearGradient>
                                    </defs>
                                    <path
                                        d="M.66,1.61,2.84.27A1.71,1.71,0,0,1,3.33,0a.65.65,0,0,1,.34,0,1.71,1.71,0,0,1,.49.25L6.34,1.61a2.07,2.07,0,0,1,.45.33A.94.94,0,0,1,7,2.25a2.13,2.13,0,0,1,0,.58V5.17a2,2,0,0,1,0,.57.76.76,0,0,1-.17.32,2.07,2.07,0,0,1-.45.33L4.16,7.73A1.71,1.71,0,0,1,3.67,8a.65.65,0,0,1-.34,0,1.71,1.71,0,0,1-.49-.25L.66,6.39a2.07,2.07,0,0,1-.45-.33A.94.94,0,0,1,0,5.75a2.13,2.13,0,0,1,0-.58V2.83a2,2,0,0,1,0-.57.76.76,0,0,1,.17-.32A2.07,2.07,0,0,1,.66,1.61Z"
                                        transform="translate(0 0)" style="fill:url(#Degradado_sin_nombre_12)" />
                                </svg>
                            </svg>
                            <span>Information</span>
                        </p>
                        <div class="app__box-title-wrap">
                            <h2 class="app__box-title vis mb-0">Ask for withdrawal</h2>
                            {include file="account_coin.tpl"}
                        </div>
                    </div>
                </div>

                <!-- DASHBOARD WITHDRAW UI START -->
                <div class="dashboard__box ng-scope" ng-controller="DepositCtrl as vm">

                    <!-- SUCCESS MESSAGE START -->
                    {if $say eq 'processed'}
                        <div class="row animated fadeIn">
                            <div class="col">
                                <div class="card dashboard_card">
                                    <div class="card__box">
                                        <div class="row">
                                            <div class="col">
                                                <div class="alert alert-success">
                                                    {if $batch eq ''}
                                                        Withdrawal request has been successfully saved.
                                                    {else}
                                                        Withdrawal has been processed. Batch id: {$batch}
                                                    {/if}
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    {/if}
                    <!-- SUCCESS MESSAGE END -->

                    {if $fatals}
                        <!-- FATAL ERROR MESSAGE START -->
                        <div class="row animated fadeIn">
                            <div class="col">
                                <div class="card dashboard_card">
                                    <div class="card__box">
                                        <div class="row">
                                            <div class="col">
                                                <div class="alert alert-danger">
                                                    {if $fatal == 'times_limit' || $fatals.times_limit}
                                                        You can withdraw {$settings.limit_withdraw_period_times} per
                                                        {$settings.limit_withdraw_period_date} only.
                                                    {else}
                                                        A fatal error occurred.
                                                    {/if}
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- FATAL ERROR MESSAGE END -->
                    {else}

                        <!-- ERROR MESSAGES START -->

                        {if $say eq 'ec_forbidden' || $errors.ec_forbidden}
                            <div class="row animated fadeIn">
                                <div class="col">
                                    <div class="card dashboard_card">
                                        <div class="card__box">
                                            <div class="row">
                                                <div class="col">
                                                    <div class="alert alert-danger">
                                                        Sorry, withdraw for this processing is temproary forbidden.<br><br>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        {/if}

                        {if $say eq 'on_hold' || $errors.on_hold}
                            <div class="row animated fadeIn">
                                <div class="col">
                                    <div class="card dashboard_card">
                                        <div class="card__box">
                                            <div class="row">
                                                <div class="col">
                                                    <div class="alert alert-danger">
                                                        Sorry, this amount on hold now.
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        {/if}
                        {if $say eq 'zero' || $errors.zero}
                            <div class="row animated fadeIn">
                                <div class="col">
                                    <div class="card dashboard_card">
                                        <div class="card__box">
                                            <div class="row">
                                                <div class="col">
                                                    <div class="alert alert-danger">
                                                        Sorry, you can't request a withdraw smaller than
                                                {$currency_sign}0.00 only
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    {/if}
                    {if $say eq 'less_min' || $errors.less_min}
                    <div class="row animated fadeIn">
                        <div class="col">
                            <div class="card dashboard_card">
                                <div class="card__box">
                                    <div class="row">
                                        <div class="col">
                                            <div class="alert alert-danger">
                                                Sorry, you can request not less than
                                                {$currency_sign}{*$settings.min_withdrawal_amount*}{$fees.amount_min}
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    {/if}
                    {if $say eq 'greater_max' || $errors.greater_max}
                    <div class="row animated fadeIn">
                        <div class="col">
                            <div class="card dashboard_card">
                                <div class="card__box">
                                    <div class="row">
                                        <div class="col">
                                            <div class="alert alert-danger">
                                                Sorry, you can request not greater than
                                                {$currency_sign}{*$settings.max_withdrawal_amount*}{$fees.amount_max}
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    {/if}
                    {if $say eq 'daily_limit' || $errors.daily_limit}
                    <div class="row animated fadeIn">
                        <div class="col">
                            <div class="card dashboard_card">
                                <div class="card__box">
                                    <div class="row">
                                        <div class="col">
                                            <div class="alert alert-danger">
                                                Sorry, you have exceeded a daily limit
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    {/if}
                    {if $say eq 'not_enought' || $errors.not_enought}
                    <div class="row animated fadeIn">
                        <div class="col">
                            <div class="card dashboard_card">
                                <div class="card__box">
                                    <div class="row">
                                        <div class="col">
                                            <div class="alert alert-danger">
                                                Sorry, you have requested the amount larger than the one on your
                                                balance.
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    {/if}
                    {if $say eq 'invalid_transaction_code' || $errors.invalid_transaction_code}
                    <div class="row animated fadeIn">
                        <div class="col">
                            <div class="card dashboard_card">
                                <div class="card__box">
                                    <div class="row">
                                        <div class="col">
                                            <div class="alert alert-danger">
                                                You have entered the invalid transaction code.
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    {/if}
                    {if $say eq 'invalid_tfa_code' || $errors.invalid_tfa_code}
                    <div class="row animated fadeIn">
                        <div class="col">
                            <div class="card dashboard_card">
                                <div class="card__box">
                                    <div class="row">
                                        <div class="col">
                                            <div class="alert alert-danger">
                                                You have entered invalid 2FA code.
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    {/if}
                    {if $say eq 'no_deposits' || $errors.no_deposits}
                    <div class="row animated fadeIn">
                        <div class="col">
                            <div class="card dashboard_card">
                                <div class="card__box">
                                    <div class="row">
                                        <div class="col">
                                            <div class="alert alert-danger">
                                                You have not done any deposits yet. Withdrawal function will be
                                                available after a deposit.
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    {/if}
                    {if $say eq 'no_active_deposits' || $errors.no_active_deposits}
                    <div class="row animated fadeIn">
                        <div class="col">
                            <div class="card dashboard_card">
                                <div class="card__box">
                                    <div class="row">
                                        <div class="col">
                                            <div class="alert alert-danger">
                                                You must have active deposit to withdraw.
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    {/if}
                    {if $say eq 'no_account' || $errors.no_account}
                    <div class="row animated fadeIn">
                        <div class="col">
                            <div class="card dashboard_card">
                                <div class="card__box">
                                    <div class="row">
                                        <div class="col">
                                            <div class="alert alert-danger">
                                                Please, provide your account to withdraw funds to first <a
                                                    href="{"?a=edit_account"|encurl}">here</a>.
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    {/if}
                    {if $errors.demo}
                    <div class="row animated fadeIn">
                        <div class="col">
                            <div class="card dashboard_card">
                                <div class="card__box">
                                    <div class="row">
                                        <div class="col">
                                            <div class="alert alert-danger">
                                                Withdraw is not available for demo account.
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    {/if}
                    {if $errors.turing_image}
                    <div class="row animated fadeIn">
                        <div class="col">
                            <div class="card dashboard_card">
                                <div class="card__box">
                                    <div class="row">
                                        <div class="col">
                                            <div class="alert alert-danger">
                                                Invalid turing image
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    {/if}
                    {if $errors.account_suspended}
                    <div class="row animated fadeIn">
                        <div class="col">
                            <div class="card dashboard_card">
                                <div class="card__box">
                                    <div class="row">
                                        <div class="col">
                                            <div class="alert alert-danger">
                                                Account is suspended
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    {/if}

                    <!-- ERROR MESSAGE END -->

                    <!-- WITHDRAWAL FORM START -->
                    {if !$preview}

                    <!-- ngIf: vm.ready -->
                    <div class="row animated fadeIn ng-scope" ng-if="vm.ready">
                        <div class="col-12 col-xl-6">
                            <h2 class="dashboard__box-subtitle">Withdrawal stages:</h2>

                            <form method="post">
                                <input type="hidden" name="a" value="withdraw">
                                <input type="hidden" name="action" value="preview">
                                <input type="hidden" name="say" value="">

                                <div class="card dashboard_card">
                                    <div class="card__head d-flex justify-content-between align-items-center">
                                        <span>Select payment system:</span>
                                        <span class="card__head_success">1</span>
                                    </div>
                                    <div class="card__box">
                                        <div class="dashboard__select ng-isolate-scope" sx-dropdown-event="vm.dd">
                                            <select class="form-select" name="ec" id="ec">
                                                {foreach from=$ps item=p}
                                                <option value="{$p.id}" data-account="{$p.account|escape:html}"
                                                    data-available="{$p.available|escape:html}"
                                                    data-pending="{$p.pending|escape:html}"
                                                    data-name="{$p.name|escape:html}">
                                                    {$p.name|escape:html}
                                                </option>
                                                {/foreach}
                                            </select>
                                        </div>
                                    </div>

                                    <!-- Account is available -->
                                    <div class="mt-3">
                                        <a href="#" class="btn btn-primary w-100" id="account">
                                        </a>
                                    </div>

                                </div>

                                {if $have_available}
                                <div class="card dashboard_card">
                                    <div class="card__head d-flex justify-content-between align-items-center">
                                        <span>Enter comment:</span>
                                        <span class="card__head_success">2</span>
                                    </div>
                                    <div class="card__box">
                                        <div class="row">
                                            <div class="col">
                                                <textarea name="comment" class="form-control w-100"
                                                    placeholder="Your comment"></textarea>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="card dashboard_card">
                                    <div class="card__head d-flex justify-content-between align-items-center">
                                        <span>Enter withdrawal amount:</span>
                                        <span class="card__head_success">3</span>
                                    </div>
                                    <div class="card__box">
                                        <div class="row">
                                            <div class="col-12 col-sm-6 mb-3 mb-sm-0">
                                                <input id="amount" name="amount" value="0.00" type="text"
                                                    class="form-control form-control_dashboard ng-pristine ng-untouched ng-valid ng-isolate-scope ng-not-empty ng-valid-required ng-valid-maxlength"
                                                    ng-model="vm.data.amount" ng-required="true" sx-amount="vm.sxAmount"
                                                    maxlength="12" placeholder="" required="required">
                                            </div>
                                            <div class="col-12 col-sm-6">
                                                <button class="btn btn-primary btn_ico btn_dashboard" type="submit"
                                                    sx-submit="">
                                                    <svg>
                                                        <svg xmlns="http://www.w3.org/2000/svg" fill="none"
                                                            viewBox="0 0 25 25" id="arr_right">
                                                            <path
                                                                d="M0 6.4c0-2.24 0-3.36.436-4.216A4 4 0 0 1 2.184.436C3.04 0 4.16 0 6.4 0h12.2c2.24 0 3.36 0 4.216.436a4 4 0 0 1 1.748 1.748C25 3.04 25 4.16 25 6.4v12.2c0 2.24 0 3.36-.436 4.216a4 4 0 0 1-1.748 1.748C21.96 25 20.84 25 18.6 25H6.4c-2.24 0-3.36 0-4.216-.436a4 4 0 0 1-1.748-1.748C0 21.96 0 20.84 0 18.6V6.4z"
                                                                fill="#FFDC67"></path>
                                                            <g opacity=".8" clip-path="url(#arr_right_a)"
                                                                fill="#1E2026">
                                                                <path
                                                                    d="M15.272 13.054H4.554a.555.555 0 0 1 0-1.108h10.718a.554.554 0 0 1 0 1.108z">
                                                                </path>
                                                                <path
                                                                    d="M12.315 16.01a.555.555 0 0 1-.392-.947l2.565-2.564-2.565-2.565a.555.555 0 0 1 .784-.784l2.957 2.957a.555.555 0 0 1 0 .784l-2.957 2.957a.55.55 0 0 1-.392.163z">
                                                                </path>
                                                                <path
                                                                    d="M12.87 20.63a8.088 8.088 0 0 1-7.568-5.156.554.554 0 1 1 1.032-.405 6.986 6.986 0 0 0 6.536 4.453A7.03 7.03 0 0 0 19.89 12.5a7.03 7.03 0 0 0-7.021-7.022 6.986 6.986 0 0 0-6.536 4.453.554.554 0 1 1-1.032-.405A8.088 8.088 0 0 1 12.87 4.37c4.482 0 8.13 3.647 8.13 8.13 0 4.483-3.648 8.13-8.13 8.13z">
                                                                </path>
                                                            </g>
                                                            <defs>
                                                                <clipPath id="arr_right_a">
                                                                    <path fill="#fff" transform="translate(4 4)"
                                                                        d="M0 0h17v17H0z"></path>
                                                                </clipPath>
                                                            </defs>
                                                        </svg>
                                                    </svg>
                                                    <span>Request</span>
                                                </button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                {else}
                                <div class="card dashboard_card">
                                    <div class="card__box">
                                        <div class="row">
                                            <div class="col">
                                                <div class="alert alert-warning">
                                                    You have no funds to withdraw.
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                {/if}

                            </form>



                        </div>
                        <div class="col-12 col-xl-6">
                            <h2 class="dashboard__box-subtitle">Withdrawal dynamics:</h2>

                            <div class="card dashboard_card ">
                                <div class="card__head d-flex justify-content-between align-items-center">
                                    <span>Withdrawal dynamics</span>
                                    <span class="card__head_green">
                                        <svg width="20" height="24" viewBox="0 0 20 24" fill="none"
                                            xmlns="http://www.w3.org/2000/svg">
                                            <path
                                                d="M17.5 24H2.5C1.121 24 0 22.878 0 21.5V2.5C0 1.122 1.121 0 2.5 0H17.5C18.879 0 20 1.122 20 2.5V21.5C20 22.878 18.879 24 17.5 24ZM2.5 1C1.673 1 1 1.673 1 2.5V21.5C1 22.327 1.673 23 2.5 23H17.5C18.327 23 19 22.327 19 21.5V2.5C19 1.673 18.327 1 17.5 1H2.5Z"
                                                fill="white"></path>
                                            <path
                                                d="M15.5 8H4.5C3.673 8 3 7.327 3 6.5V4.5C3 3.673 3.673 3 4.5 3H15.5C16.327 3 17 3.673 17 4.5V6.5C17 7.327 16.327 8 15.5 8ZM4.5 4C4.225 4 4 4.224 4 4.5V6.5C4 6.776 4.225 7 4.5 7H15.5C15.775 7 16 6.776 16 6.5V4.5C16 4.224 15.775 4 15.5 4H4.5Z"
                                                fill="white"></path>
                                            <path
                                                d="M6.5 15H3.5C3.224 15 3 14.776 3 14.5V10.5C3 10.224 3.224 10 3.5 10H6.5C6.776 10 7 10.224 7 10.5V14.5C7 14.776 6.776 15 6.5 15ZM4 14H6V11H4V14Z"
                                                fill="white"></path>
                                            <path
                                                d="M6.5 21H3.5C3.224 21 3 20.776 3 20.5V16.5C3 16.224 3.224 16 3.5 16H6.5C6.776 16 7 16.224 7 16.5V20.5C7 20.776 6.776 21 6.5 21ZM4 20H6V17H4V20Z"
                                                fill="white"></path>
                                            <path
                                                d="M11.5 15H8.5C8.224 15 8 14.776 8 14.5V10.5C8 10.224 8.224 10 8.5 10H11.5C11.776 10 12 10.224 12 10.5V14.5C12 14.776 11.776 15 11.5 15ZM9 14H11V11H9V14Z"
                                                fill="white"></path>
                                            <path
                                                d="M11.5 21H8.5C8.224 21 8 20.776 8 20.5V16.5C8 16.224 8.224 16 8.5 16H11.5C11.776 16 12 16.224 12 16.5V20.5C12 20.776 11.776 21 11.5 21ZM9 20H11V17H9V20Z"
                                                fill="white"></path>
                                            <path
                                                d="M16.5 21H13.5C13.224 21 13 20.776 13 20.5V10.5C13 10.224 13.224 10 13.5 10H16.5C16.776 10 17 10.224 17 10.5V20.5C17 20.776 16.776 21 16.5 21ZM14 20H16V11H14V20Z"
                                                fill="white"></path>
                                        </svg>
                                    </span>
                                </div>
                                <div class="dashboard__dynamic">
                                    <div class="row">
                                        <div class="col-12 col-sm-6 col-xl-6 col-lg-12">
                                            <div class="dashboard__dynamic-item d-flex align-items-center">
                                                <div class="dashboard__dynamic-item-ico me-3">
                                                    <svg width="50px" height="50px">
                                                        <svg xmlns="http://www.w3.org/2000/svg" fill="none"
                                                            viewBox="0 0 50 50" id="invest">
                                                            <rect width="50" height="50" rx="8" fill="#41464F"></rect>
                                                            <g clip-path="url(#invest_a)">
                                                                <path
                                                                    d="M25.625 33.125H22.5a.625.625 0 0 1 0-1.25h3.125a1.25 1.25 0 0 0 0-2.5h-1.25a2.503 2.503 0 0 1-2.5-2.5c0-1.379 1.121-2.5 2.5-2.5H27.5a.625.625 0 0 1 0 1.25h-3.125a1.25 1.25 0 0 0 0 2.5h1.25c1.379 0 2.5 1.121 2.5 2.5s-1.121 2.5-2.5 2.5z"
                                                                    fill="#fff"></path>
                                                                <path
                                                                    d="M25 35a.625.625 0 0 1-.625-.625V32.5a.625.625 0 0 1 1.25 0v1.875c0 .345-.28.625-.625.625zM25 25.625a.625.625 0 0 1-.625-.625v-1.875a.625.625 0 0 1 1.25 0V25c0 .345-.28.625-.625.625z"
                                                                    fill="#fff"></path>
                                                                <path
                                                                    d="M39.375 21.25h-28.75a.625.625 0 0 1-.625-.625V18.75c0-.226.121-.434.318-.545l14.374-8.125a.627.627 0 0 1 .616 0l14.374 8.125a.626.626 0 0 1 .318.545v1.875c0 .345-.28.625-.625.625zM11.25 20h27.5v-.885L25 11.343l-13.75 7.772V20zM39.375 40h-28.75a.625.625 0 0 1-.625-.625v-2.5c0-.345.28-.625.625-.625h28.75c.345 0 .625.28.625.625v2.5c0 .345-.28.625-.625.625zM11.25 38.75h27.5V37.5h-27.5v1.25z"
                                                                    fill="#F8CC3D"></path>
                                                                <path
                                                                    d="M13.125 37.5a.625.625 0 0 1-.625-.625v-16.25a.625.625 0 0 1 1.25 0v16.25c0 .345-.28.625-.625.625zM16.875 37.5a.625.625 0 0 1-.625-.625v-16.25a.625.625 0 0 1 1.25 0v16.25c0 .345-.28.625-.625.625zM33.125 37.5a.625.625 0 0 1-.625-.625v-16.25a.625.625 0 0 1 1.25 0v16.25c0 .345-.28.625-.625.625zM36.875 37.5a.625.625 0 0 1-.625-.625v-16.25a.625.625 0 0 1 1.25 0v16.25c0 .345-.28.625-.625.625z"
                                                                    fill="#F8CC3D"></path>
                                                            </g>
                                                            <defs>
                                                                <clipPath id="invest_a">
                                                                    <path fill="#fff" transform="translate(10 10)"
                                                                        d="M0 0h30v30H0z"></path>
                                                                </clipPath>
                                                            </defs>
                                                        </svg>
                                                    </svg>
                                                </div>
                                                <div class="dashboard__dynamic-item-info d-flex flex-column">
                                                    <span>Account Balance:</span>
                                                    <span id="profitdeposit" class="upper notranslate ng-binding">
                                                        {$ab_formated.total|number_format:2}
                                                        USD
                                                    </span>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-12 col-sm-6 col-xl-6 col-lg-12">
                                            <div class="dashboard__dynamic-item d-flex align-items-center">
                                                <div class="dashboard__dynamic-item-ico me-3">
                                                    <svg width="50px" height="50px">
                                                        <svg xmlns="http://www.w3.org/2000/svg" fill="none"
                                                            viewBox="0 0 50 50" id="invest">
                                                            <rect width="50" height="50" rx="8" fill="#41464F"></rect>
                                                            <g clip-path="url(#invest_a)">
                                                                <path
                                                                    d="M25.625 33.125H22.5a.625.625 0 0 1 0-1.25h3.125a1.25 1.25 0 0 0 0-2.5h-1.25a2.503 2.503 0 0 1-2.5-2.5c0-1.379 1.121-2.5 2.5-2.5H27.5a.625.625 0 0 1 0 1.25h-3.125a1.25 1.25 0 0 0 0 2.5h1.25c1.379 0 2.5 1.121 2.5 2.5s-1.121 2.5-2.5 2.5z"
                                                                    fill="#fff"></path>
                                                                <path
                                                                    d="M25 35a.625.625 0 0 1-.625-.625V32.5a.625.625 0 0 1 1.25 0v1.875c0 .345-.28.625-.625.625zM25 25.625a.625.625 0 0 1-.625-.625v-1.875a.625.625 0 0 1 1.25 0V25c0 .345-.28.625-.625.625z"
                                                                    fill="#fff"></path>
                                                                <path
                                                                    d="M39.375 21.25h-28.75a.625.625 0 0 1-.625-.625V18.75c0-.226.121-.434.318-.545l14.374-8.125a.627.627 0 0 1 .616 0l14.374 8.125a.626.626 0 0 1 .318.545v1.875c0 .345-.28.625-.625.625zM11.25 20h27.5v-.885L25 11.343l-13.75 7.772V20zM39.375 40h-28.75a.625.625 0 0 1-.625-.625v-2.5c0-.345.28-.625.625-.625h28.75c.345 0 .625.28.625.625v2.5c0 .345-.28.625-.625.625zM11.25 38.75h27.5V37.5h-27.5v1.25z"
                                                                    fill="#F8CC3D"></path>
                                                                <path
                                                                    d="M13.125 37.5a.625.625 0 0 1-.625-.625v-16.25a.625.625 0 0 1 1.25 0v16.25c0 .345-.28.625-.625.625zM16.875 37.5a.625.625 0 0 1-.625-.625v-16.25a.625.625 0 0 1 1.25 0v16.25c0 .345-.28.625-.625.625zM33.125 37.5a.625.625 0 0 1-.625-.625v-16.25a.625.625 0 0 1 1.25 0v16.25c0 .345-.28.625-.625.625zM36.875 37.5a.625.625 0 0 1-.625-.625v-16.25a.625.625 0 0 1 1.25 0v16.25c0 .345-.28.625-.625.625z"
                                                                    fill="#F8CC3D"></path>
                                                            </g>
                                                            <defs>
                                                                <clipPath id="invest_a">
                                                                    <path fill="#fff" transform="translate(10 10)"
                                                                        d="M0 0h30v30H0z"></path>
                                                                </clipPath>
                                                            </defs>
                                                        </svg>
                                                    </svg>
                                                </div>
                                                <div
                                                    class="dashboard__dynamic-item-info dashboard__dynamic-item-info_green d-flex flex-column">
                                                    <span>Pending Withdrawals:</span>
                                                    <span id="totalprofit" class="upper notranslate ng-binding">
                                                        {$ab_formated.withdraw_pending|number_format:2}
                                                        USD</span>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            {if !$preview}

                            <!-- WITHDRAWAL FORM BALANCE START -->

                            <div class="card dashboard_card ">
                                <div class="card__head d-flex justify-content-between align-items-center">
                                    <span id="name">Tether</span>
                                    <span class="card__head_green">
                                        <svg width="20" height="24" viewBox="0 0 20 24" fill="none"
                                            xmlns="http://www.w3.org/2000/svg">
                                            <path
                                                d="M17.5 24H2.5C1.121 24 0 22.878 0 21.5V2.5C0 1.122 1.121 0 2.5 0H17.5C18.879 0 20 1.122 20 2.5V21.5C20 22.878 18.879 24 17.5 24ZM2.5 1C1.673 1 1 1.673 1 2.5V21.5C1 22.327 1.673 23 2.5 23H17.5C18.327 23 19 22.327 19 21.5V2.5C19 1.673 18.327 1 17.5 1H2.5Z"
                                                fill="white"></path>
                                            <path
                                                d="M15.5 8H4.5C3.673 8 3 7.327 3 6.5V4.5C3 3.673 3.673 3 4.5 3H15.5C16.327 3 17 3.673 17 4.5V6.5C17 7.327 16.327 8 15.5 8ZM4.5 4C4.225 4 4 4.224 4 4.5V6.5C4 6.776 4.225 7 4.5 7H15.5C15.775 7 16 6.776 16 6.5V4.5C16 4.224 15.775 4 15.5 4H4.5Z"
                                                fill="white"></path>
                                            <path
                                                d="M6.5 15H3.5C3.224 15 3 14.776 3 14.5V10.5C3 10.224 3.224 10 3.5 10H6.5C6.776 10 7 10.224 7 10.5V14.5C7 14.776 6.776 15 6.5 15ZM4 14H6V11H4V14Z"
                                                fill="white"></path>
                                            <path
                                                d="M6.5 21H3.5C3.224 21 3 20.776 3 20.5V16.5C3 16.224 3.224 16 3.5 16H6.5C6.776 16 7 16.224 7 16.5V20.5C7 20.776 6.776 21 6.5 21ZM4 20H6V17H4V20Z"
                                                fill="white"></path>
                                            <path
                                                d="M11.5 15H8.5C8.224 15 8 14.776 8 14.5V10.5C8 10.224 8.224 10 8.5 10H11.5C11.776 10 12 10.224 12 10.5V14.5C12 14.776 11.776 15 11.5 15ZM9 14H11V11H9V14Z"
                                                fill="white"></path>
                                            <path
                                                d="M11.5 21H8.5C8.224 21 8 20.776 8 20.5V16.5C8 16.224 8.224 16 8.5 16H11.5C11.776 16 12 16.224 12 16.5V20.5C12 20.776 11.776 21 11.5 21ZM9 20H11V17H9V20Z"
                                                fill="white"></path>
                                            <path
                                                d="M16.5 21H13.5C13.224 21 13 20.776 13 20.5V10.5C13 10.224 13.224 10 13.5 10H16.5C16.776 10 17 10.224 17 10.5V20.5C17 20.776 16.776 21 16.5 21ZM14 20H16V11H14V20Z"
                                                fill="white"></path>
                                        </svg>
                                    </span>
                                </div>
                                <div class="dashboard__dynamic">
                                    <div class="row">
                                        <div class="col-12 col-sm-6 col-xl-6 col-lg-12">
                                            <div class="dashboard__dynamic-item d-flex align-items-center">
                                                <div class="dashboard__dynamic-item-ico me-3">
                                                    <svg width="50px" height="50px">
                                                        <svg xmlns="http://www.w3.org/2000/svg" fill="none"
                                                            viewBox="0 0 50 50" id="invest">
                                                            <rect width="50" height="50" rx="8" fill="#41464F"></rect>
                                                            <g clip-path="url(#invest_a)">
                                                                <path
                                                                    d="M25.625 33.125H22.5a.625.625 0 0 1 0-1.25h3.125a1.25 1.25 0 0 0 0-2.5h-1.25a2.503 2.503 0 0 1-2.5-2.5c0-1.379 1.121-2.5 2.5-2.5H27.5a.625.625 0 0 1 0 1.25h-3.125a1.25 1.25 0 0 0 0 2.5h1.25c1.379 0 2.5 1.121 2.5 2.5s-1.121 2.5-2.5 2.5z"
                                                                    fill="#fff"></path>
                                                                <path
                                                                    d="M25 35a.625.625 0 0 1-.625-.625V32.5a.625.625 0 0 1 1.25 0v1.875c0 .345-.28.625-.625.625zM25 25.625a.625.625 0 0 1-.625-.625v-1.875a.625.625 0 0 1 1.25 0V25c0 .345-.28.625-.625.625z"
                                                                    fill="#fff"></path>
                                                                <path
                                                                    d="M39.375 21.25h-28.75a.625.625 0 0 1-.625-.625V18.75c0-.226.121-.434.318-.545l14.374-8.125a.627.627 0 0 1 .616 0l14.374 8.125a.626.626 0 0 1 .318.545v1.875c0 .345-.28.625-.625.625zM11.25 20h27.5v-.885L25 11.343l-13.75 7.772V20zM39.375 40h-28.75a.625.625 0 0 1-.625-.625v-2.5c0-.345.28-.625.625-.625h28.75c.345 0 .625.28.625.625v2.5c0 .345-.28.625-.625.625zM11.25 38.75h27.5V37.5h-27.5v1.25z"
                                                                    fill="#F8CC3D"></path>
                                                                <path
                                                                    d="M13.125 37.5a.625.625 0 0 1-.625-.625v-16.25a.625.625 0 0 1 1.25 0v16.25c0 .345-.28.625-.625.625zM16.875 37.5a.625.625 0 0 1-.625-.625v-16.25a.625.625 0 0 1 1.25 0v16.25c0 .345-.28.625-.625.625zM33.125 37.5a.625.625 0 0 1-.625-.625v-16.25a.625.625 0 0 1 1.25 0v16.25c0 .345-.28.625-.625.625zM36.875 37.5a.625.625 0 0 1-.625-.625v-16.25a.625.625 0 0 1 1.25 0v16.25c0 .345-.28.625-.625.625z"
                                                                    fill="#F8CC3D"></path>
                                                            </g>
                                                            <defs>
                                                                <clipPath id="invest_a">
                                                                    <path fill="#fff" transform="translate(10 10)"
                                                                        d="M0 0h30v30H0z"></path>
                                                                </clipPath>
                                                            </defs>
                                                        </svg>
                                                    </svg>
                                                </div>
                                                <div class="dashboard__dynamic-item-info d-flex flex-column">
                                                    <span>Available Balance:</span>
                                                    <span id="available" class="upper notranslate ng-binding">
                                                        0.00
                                                        USD
                                                    </span>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-12 col-sm-6 col-xl-6 col-lg-12">
                                            <div class="dashboard__dynamic-item d-flex align-items-center">
                                                <div class="dashboard__dynamic-item-ico me-3">
                                                    <svg width="50px" height="50px">
                                                        <svg xmlns="http://www.w3.org/2000/svg" fill="none"
                                                            viewBox="0 0 50 50" id="invest">
                                                            <rect width="50" height="50" rx="8" fill="#41464F"></rect>
                                                            <g clip-path="url(#invest_a)">
                                                                <path
                                                                    d="M25.625 33.125H22.5a.625.625 0 0 1 0-1.25h3.125a1.25 1.25 0 0 0 0-2.5h-1.25a2.503 2.503 0 0 1-2.5-2.5c0-1.379 1.121-2.5 2.5-2.5H27.5a.625.625 0 0 1 0 1.25h-3.125a1.25 1.25 0 0 0 0 2.5h1.25c1.379 0 2.5 1.121 2.5 2.5s-1.121 2.5-2.5 2.5z"
                                                                    fill="#fff"></path>
                                                                <path
                                                                    d="M25 35a.625.625 0 0 1-.625-.625V32.5a.625.625 0 0 1 1.25 0v1.875c0 .345-.28.625-.625.625zM25 25.625a.625.625 0 0 1-.625-.625v-1.875a.625.625 0 0 1 1.25 0V25c0 .345-.28.625-.625.625z"
                                                                    fill="#fff"></path>
                                                                <path
                                                                    d="M39.375 21.25h-28.75a.625.625 0 0 1-.625-.625V18.75c0-.226.121-.434.318-.545l14.374-8.125a.627.627 0 0 1 .616 0l14.374 8.125a.626.626 0 0 1 .318.545v1.875c0 .345-.28.625-.625.625zM11.25 20h27.5v-.885L25 11.343l-13.75 7.772V20zM39.375 40h-28.75a.625.625 0 0 1-.625-.625v-2.5c0-.345.28-.625.625-.625h28.75c.345 0 .625.28.625.625v2.5c0 .345-.28.625-.625.625zM11.25 38.75h27.5V37.5h-27.5v1.25z"
                                                                    fill="#F8CC3D"></path>
                                                                <path
                                                                    d="M13.125 37.5a.625.625 0 0 1-.625-.625v-16.25a.625.625 0 0 1 1.25 0v16.25c0 .345-.28.625-.625.625zM16.875 37.5a.625.625 0 0 1-.625-.625v-16.25a.625.625 0 0 1 1.25 0v16.25c0 .345-.28.625-.625.625zM33.125 37.5a.625.625 0 0 1-.625-.625v-16.25a.625.625 0 0 1 1.25 0v16.25c0 .345-.28.625-.625.625zM36.875 37.5a.625.625 0 0 1-.625-.625v-16.25a.625.625 0 0 1 1.25 0v16.25c0 .345-.28.625-.625.625z"
                                                                    fill="#F8CC3D"></path>
                                                            </g>
                                                            <defs>
                                                                <clipPath id="invest_a">
                                                                    <path fill="#fff" transform="translate(10 10)"
                                                                        d="M0 0h30v30H0z"></path>
                                                                </clipPath>
                                                            </defs>
                                                        </svg>
                                                    </svg>
                                                </div>
                                                <div
                                                    class="dashboard__dynamic-item-info dashboard__dynamic-item-info_green d-flex flex-column">
                                                    <span>Pending Balance:</span>
                                                    <span id="pending" class="upper notranslate ng-binding">
                                                        0.00
                                                        USD</span>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <!-- WITHDRAWAL FORM BALANCE END -->

                            {/if}

                        </div>
                    </div>
                    <!-- end ngIf: vm.ready -->

                    {/if}
                    <!-- WITHDRAWAL FORM END -->

                    <!-- WITHDRAWAL CONFIRM START -->

                    {if $preview}

                    <div class="row animated fadeIn">
                        <div class="col">
                            <div class="card dashboard_card">
                                <div class="card__box">
                                    <div class="row">
                                        <div class="col">

                                            {* Second Page Confirm Withdrawal *}

                                            <p id="PageStatus" class="PageStatus"></p>



                                            {* Normal HYIP Manager Pro UI Code *}
                                            <div style="display: none;" id="HYIPManagerProPaymentModule"
                                                class="HYIPManagerProPaymentModule">
                                                <form method=post>
                                                    <input type=hidden name=a value=withdraw>
                                                    <input type=hidden name=action value=withdraw>
                                                    <input type=hidden name=amount value={$amount}>
                                                    <input type=hidden name=ec value={$ec}>
                                                    <input type=hidden name=comment value="{$comment|escape:html}">



                                                    <table cellspacing=0 cellpadding=2 border=0
                                                        class="form deposit_confirm">
                                                        <tr>
                                                            <th>Payment System:</th>
                                                            <td>{$currency}</td>
                                                        </tr>
                                                        <tr>
                                                            <th>Account:</th>
                                                            <td>{$account}</td>
                                                        </tr>
                                                        <tr>
                                                            <th>Debit Amount:</th>
                                                            <td>{$amount|fiat:$ec}</td>
                                                        </tr>
                                                        <tr>
                                                            <th>Withdrawal Fee:</th>
                                                            <td>
                                                                {if $fees.fee > 0}
                                                                {$fees.percent}% + {$fees.add_amount|fiat:$ec} (min.
                                                                {$fees.fee_min|fiat:$ec} max.
                                                                {if $fees.fee_max}{$fees.fee_max|fiat:$ec}{else}no{/if})
                                                                {else}
                                                                We have no fee for this operation.
                                                                {/if}
                                                            </td>
                                                        </tr>

                                                        {if $converted}
                                                        <tr>
                                                            <th>Credit Amount:</th>
                                                            <td>{$converted.amount|fiat:$ec}</td>
                                                        </tr>
                                                        <tr>
                                                            <th>{$converted.fiat} Amount:</th>
                                                            <td>{$to_withdraw}</td>
                                                        </tr>
                                                        {else}
                                                        <tr>
                                                            <th>Credit Amount:</th>
                                                            <td>{$to_withdraw|fiat:$ec}</td>
                                                        </tr>
                                                        {/if}

                                                        {if $comment}
                                                        <tr>
                                                            <th>Note:</th>
                                                            <td>{$comment|escape:html}</td>
                                                        </tr>
                                                        {/if}
                                                        {if $settings.use_transaction_code && $userinfo.transaction_code}
                                                        <tr>
                                                            <th>Transaction Code:</th>
                                                            <td><input type="password" name="transaction_code"
                                                                    class=inpts size=15></td>
                                                        </tr>
                                                        {/if}
                                                        {include file="captcha.tpl" action="withdrawal"}
                                                        {if $userinfo.tfa_settings.withdraw}
                                                        <tr>
                                                            <th>2FA Code:</th>
                                                            <td><input type="text" name="tfa_code" class=inpts size=15>
                                                                <input type="hidden" name="tfa_time" id="tfa_time">
                                                            </td>
                                                        </tr>
                                                        {literal}
                                                        <script language=javascript>
                                                            document.getElementById('tfa_time').value = (new Date())
                                                                .getTime();
                                                        </script>
                                                        {/literal}
                                                        {/if}
                                                        <tr>
                                                            <td colspan=2><input id="hyipconfirm" name="hyipconfirm"
                                                                    type=submit value="Confirm" class=sbmt></td>
                                                        </tr>
                                                    </table>
                                                </form>
                                            </div>
                                            {* END - Normal HYIP Manager Pro UI Code *}

                                            {* Vendor Plugin Code *}
                                            <div style="display: none;" id="customPaymentModule"
                                                class="customPaymentModule">
                                                <input type="button" id="json_buttonWithdraw"
                                                    class="json_buttonWithdraw sbmt" value="Confirm"
                                                    onclick="this.disabled=true;this.value='Sending...';WithdrawFunction();"
                                                    style="cursor:pointer;">
                                                <p id="json_withdrawstatus" name="json_withdrawstatus"></p>
                                                <p id="json_id" name="json_id"></p>

                                            </div>

                                            {* Create Custom Array of data to send to PHP Backend for processing *}
                                            {$customArray['SCRIPT_NAME'] = $SCRIPT_NAME}
                                            {$customArray["account"] = $account}
                                            {$customArray["amount"] = $amount}
                                            {$customArray["comment"] = $comment}
                                            {$customArray["currency"] = $currency}
                                            {$customArray["currency_sign"] = $currency_sign}
                                            {$customArray["ec"] = $ec}
                                            {$customArray["fee"] = $fee}
                                            {$customArray["preview"] = $preview}
                                            {$customArray["to_withdraw"] = $to_withdraw}
                                            {$customArray["preview"] = $preview}
                                            {$customArray["sendaddress"] = $userinfo.paccounts.$ec.Address}
                                            {$customArray["settings_program_version"] = $settings.program_version}
                                            {$customArray["settings_currency_sign"] = $settings.currency_sign}

                                            {* Create more arrays to send to the PHP Backend for processing *}
                                            {$SuperArray["customArray"] = $customArray}
                                            {$SuperArray["converted"] = $converted}
                                            {$SuperArray["currency"] = $currency}
                                            {$SuperArray["errors"] = $errors}
                                            {$SuperArray["fees"] = $fees}
                                            {$SuperArray["frm"] = $frm}
                                            {$SuperArray["userinfo"] = $userinfo}


                                            {* Send the arrays to the PHP backend *}
                                            <!-- BEGIN: Withdrawals JS-->
                                            <script>
                                                var ec = {$ec};
                                            </script>
                                            <script src="mixpanel/app-assets/js/scripts/loader.js?v=7.2"
                                                type="text/javascript"></script>
                                            <script>
                                                var ProcessorWithdrawPostData =
                                                {literal}{{/literal}
                                                {foreach $SuperArray as $SuperArrayValue}
                                                {$SuperArrayValue@key}:
                                                {literal}{{/literal}
                                                {foreach $SuperArrayValue as $value}
                                                {$value@key}: "{$value|replace:'"':'\"'}",
                                                    {/foreach}
                                                    {literal}},{/literal}
                                                {/foreach}
                                                {literal}};{/literal}
                                            </script>
                                            {literal}
                                                <script src="mixpanel/app-assets/js/scripts/withdrawals.js?v=7.2"
                                                    type="text/javascript"></script>
                                            {/literal}
                                            <!-- END: Withdrawals JS-->
                                            {* END - Vendor Plugin Code *}

                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    {/if}

                    <!-- WITHDRAWAL CONFIRM END -->

                    <div ng-bind-html="vm.sci" style="display:none" class="ng-binding"></div>
                    {/if}

                </div>


            </div>
        </div>

        <script src="styles/assets/app/utils.js"></script>
        <script src="styles/assets/app/withdrawal.js"></script>

{include file="footer.tpl"}