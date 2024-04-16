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
                     <svg width="22" height="24" viewBox="0 0 22 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                        <path d="M22 19.5H0V22.5H22V19.5Z" fill="#fff"></path>
                        <path d="M22 10.5H0V13.5H22V10.5Z" fill="#fff"></path>
                        <path d="M22 1.5H0V4.50003H22V1.5Z" fill="#fff"></path>
                     </svg>
                  </button>
                  <a href="/" class="dashboard__logo d-flex d-lg-none align-items-center justify-content-lg-start m-0">
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
                        <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 12 12" id="arr_right_grey">
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
                        <svg id="circle" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink"
                           viewBox="0 0 7 8">
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
                     <h2 class="app__box-title vis mb-0">Internal Transfer</h2>
                     {include file="account_coin.tpl"}
                  </div>
               </div>
            </div>

            <!-- DASHBOARD WITHDRAW UI START -->
            <div class="dashboard__box ng-scope" ng-controller="DepositCtrl as vm">

               <!-- SUCCESS MESSAGE START -->
               {if $say == 'processed'}
                  <div class="row animated fadeIn">
                     <div class="col">
                        <div class="card dashboard_card">
                           <div class="card__box">
                              <div class="row">
                                 <div class="col">
                                    <div class="alert alert-success">
                                       Internal transfer has been successfully completed.
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

                  <!-- FATAL ERRORS START -->
                  <div class="row animated fadeIn">
                     <div class="col">
                        <div class="card dashboard_card">
                           <div class="card__box">
                              <div class="row">
                                 <div class="col">
                                    <div class="alert alert-danger">
                                       {if $fatals.forbidden}Internal transfers are forbidden.{/if}
                                       {if $fatals.no_deposits}You can not send funds before you make any deposit.{/if}
                                       {if $fatals.times_limit}
                                          You can send internal transfer {$settings.limit_transfer_period_times} per
                                          {$settings.limit_transfer_period_date} only.
                                       {/if}
                                    </div>
                                 </div>
                              </div>
                           </div>
                        </div>
                     </div>
                  </div>
                  <!-- FATAL ERRORS END -->

               {else}

                  {if $errors}

                     <!-- ERROR MESSAGE START -->
                     <div class="row animated fadeIn">
                        <div class="col">
                           <div class="card dashboard_card">
                              <div class="card__box">
                                 <div class="row">
                                    <div class="col">
                                       <div class="alert alert-danger">

                                          {if $errors.turing_image}Invalid turing image{/if}
                                          {if $errors.user_not_found}The recipient's username entered has not been found or has been suspended.{/if}
                                          {if $errors.less_min}You can transfer the amount not less {$errors.less_min} only.{/if}
                                          {if $errors.too_big_amount}You have no such amount on your balance.{/if}
                                          {if $errors.too_big_amount_plus_fee}
                                             You have no enough funds to complte the transaction. Total amount
                                             you should have to send {$frm.amount|fiat:$frm.ec} + fee is <b>{$errors.too_big_amount_plus_fee}</b>.
                                          {/if}
                                          {if $errors.greater_max}Maximum amount you can send is {$errors.greater_max}.{/if}
                                          {if $errors.invalid_transaction_code}Invalid Transaction Code.{/if}
                                          {if $errors.invalid_tfa_code}You have entered invalid 2FA code.{/if}

                                       </div>
                                    </div>
                                 </div>
                              </div>
                           </div>
                        </div>
                     </div>
                     <!-- ERROR MESSAGE END -->

                  {/if}

                  {if $preview}
                  
                     <!-- PREVIEW FORM START -->
                     <form method=post>
                        <input type=hidden name=a value=internal_transfer>
                        <input type=hidden name=action value=confirm>
                        <input type=hidden name=amount value="{$amount}">
                        <input type=hidden name=account value="{$user.username|escape:html}">
                        <input type=hidden name=ec value="{$ec}">
                        <input type=hidden name=comment value="{$comment|escape:html}">

                        <table cellspacing=0 cellpadding=2 border=0 class="form internal_transfer_confirm">
                           <tr>
                              <th>Payment System:</th>
                              <td>{$currency}</td>
                           </tr>
                           <tr>
                              <th>Recipient:</th>
                              <td>{$user.username|escape:html}</td>
                           </tr>
                           <tr>
                              <th>Fee:</th>
                              <td>
                                 {if $fee > 0}
                                 {$settings.internal_transfer_fee}% (min.
                                 {$currency_sign}{$settings.minimum_internal_transfer_fee})
                                 {else}
                                 We have no fee for this operation.
                                 {/if}
                              </td>
                           </tr>
                           <tr>
                              <th>Debit Amount:</th>
                              <td>{$to_send|fiat:$ec}</td>
                           </tr>
                           <tr>
                              <th>Credit Amount:</th>
                              <td>{$to_receive|fiat:$ec}</td>
                           </tr>
                           {if $comment}
                           <tr>
                              <th>With comments:</th>
                              <td>{$comment|escape:html}</th>
                           </tr>
                           {/if}
                           {if $settings.use_transaction_code && $userinfo.transaction_code}
                           <tr>
                              <th>Transaction Code:</th>
                              <td><input type="password" name="transaction_code" class=inpts size=15></td>
                           </tr>
                           {/if}
                           {include file="captcha.tpl" action="internal_transfer"}
                           {if $userinfo.tfa_settings.withdraw}
                           <tr>
                              <th>2FA Code:</th>
                              <td><input type="text" name="tfa_code" class=inpts size=15> <input type="hidden" name="tfa_time"
                                    id="tfa_time">
                              </td>
                           </tr>
                           {literal}
                           <script language=javascript>
                              document.getElementById('tfa_time').value = (new Date()).getTime();
                                 </script>
                              {/literal}
                           {/if}
                           <tr>
                              <td colspan=2><br><input type=submit value="Confirm" class=sbmt></td>
                           </tr>
                        </table>
                     </form>
                     <!-- PREVIEW FORM END -->

                  {else}

                     <!-- INTERNAL TRANSFER FORM START -->
                     <div class="row animated fadeIn ng-scope" ng-if="vm.ready">
                        <div class="col-12 col-xl-6">
                           <h2 class="dashboard__box-subtitle">Internal transfer stages:</h2>

                           <form method="post">
                              <input type="hidden" name="a" value="internal_transfer">
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
                                             <option value="{$p.id}"
                                                data-available="{$p.available|escape:html}"
                                                data-name="{$p.name|escape:html}">
                                                {$p.name|escape:html}
                                             </option>
                                          {/foreach}
                                       </select>
                                    </div>
                                 </div>
                              </div>

                              <div class="card dashboard_card">
                                 <div class="card__head d-flex justify-content-between align-items-center">
                                    <span>To account:</span>
                                    <span class="card__head_success">2</span>
                                 </div>
                                 <div class="card__box">
                                    <div class="row">
                                       <div class="col">
                                          <input type="text" name="account" class="form-control form-control_dashboard ng-pristine ng-untouched ng-valid ng-isolate-scope ng-not-empty ng-valid-required ng-valid-maxlength" 
                                             placeholder="Email" value="{$frm.account|escape:htmlall}">
                                       </div>
                                    </div>
                                 </div>
                              </div>

                              <div class="card dashboard_card">
                                 <div class="card__head d-flex justify-content-between align-items-center">
                                    <span>Enter comment:</span>
                                    <span class="card__head_success">3</span>
                                 </div>
                                 <div class="card__box">
                                    <div class="row">
                                       <div class="col">
                                          <textarea name="comment" class="form-control w-100" placeholder="Your comment">
                                             {$frm.comment|escape:htmlall}
                                          </textarea>
                                       </div>
                                    </div>
                                 </div>
                              </div>

                              <div class="card dashboard_card">
                                 <div class="card__head d-flex justify-content-between align-items-center">
                                    <span>Enter transfer amount:</span>
                                    <span class="card__head_success">4</span>
                                 </div>
                                 <div class="card__box">
                                    <div class="row">
                                       <div class="col-12 col-sm-6 mb-3 mb-sm-0">
                                          <input id="amount" name="amount" value="{if $frm.amount}{$frm.amount|escape:htmlall}{else}10.00{/if}" type="text"
                                             class="form-control form-control_dashboard ng-pristine ng-untouched ng-valid ng-isolate-scope ng-not-empty ng-valid-required ng-valid-maxlength"
                                             maxlength="12" placeholder="">
                                       </div>
                                       <div class="col-12 col-sm-6">
                                          <button class="btn btn-primary btn_ico btn_dashboard" type="submit">
                                             <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 25 25" id="arr_right">
                                                <path
                                                   d="M0 6.4c0-2.24 0-3.36.436-4.216A4 4 0 0 1 2.184.436C3.04 0 4.16 0 6.4 0h12.2c2.24 0 3.36 0 4.216.436a4 4 0 0 1 1.748 1.748C25 3.04 25 4.16 25 6.4v12.2c0 2.24 0 3.36-.436 4.216a4 4 0 0 1-1.748 1.748C21.96 25 20.84 25 18.6 25H6.4c-2.24 0-3.36 0-4.216-.436a4 4 0 0 1-1.748-1.748C0 21.96 0 20.84 0 18.6V6.4z"
                                                   fill="#FFDC67"></path>
                                                <g opacity=".8" clip-path="url(#arr_right_a)" fill="#1E2026">
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
                                         
                                             <span>Send</span>
                                          </button>
                                       </div>
                                    </div>
                                 </div>
                              </div>

                           </form>

                        </div>

                        <div class="col-12 col-xl-6">
                           <h2 class="dashboard__box-subtitle">Transfer dynamics:</h2>

                           <div class="card dashboard_card">
                              <div class="card__head d-flex justify-content-between align-items-center">
                                 <span>Transfer dynamics</span>
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
                           </div>
                        </div>

                     </div>
                     <!-- INTERNAL TRANSFER FORM END -->

                  {/if}

               {/if}

            </div>
            <!-- DASHBOARD WITHDRAW UI END -->

         </div>
      </div>

      <script src="styles/assets/app/utils.js"></script>

{include file="footer.tpl"}