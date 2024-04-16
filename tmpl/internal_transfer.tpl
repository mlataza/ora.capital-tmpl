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

               {if $say == 'processed'}
                  <div class="success">Internal transfer has been successfully completed.</div>
               {/if}

               {if $fatals}

                  {if $fatals.forbidden}<div class="error">Internal transfers are forbidden.</div>{/if}
                  {if $fatals.no_deposits}<div class="error">You can not send funds before you make any deposit.</div>{/if}
                  {if $fatals.times_limit}<div class="error">You can send internal transfer
                        {$settings.limit_transfer_period_times} per
                     {$settings.limit_transfer_period_date} only.</div>{/if}

               {else}
                  {if $errors}
                     {if $errors.turing_image}<div class="error">Invalid turing image</div>{/if}
                     {if $errors.user_not_found}<div class="error">The recipient's username entered has not been found or has
                  been suspended.
               </div>{/if}
               {if $errors.less_min}<div class="error">You can transfer the amount not less {$errors.less_min} only.
               </div>{/if}
               {if $errors.too_big_amount}<div class="error">You have no such amount on your balance.</div>{/if}
               {if $errors.too_big_amount_plus_fee}<div class="error">You have no enough funds to complte the
                  transaction. Total amount
                  you should have to send {$frm.amount|fiat:$frm.ec} + fee is <b>{$errors.too_big_amount_plus_fee}</b>.
               </div>{/if}
               {if $errors.greater_max}<div class="error">Maximum amount you can send is {$errors.greater_max}.</div>
               {/if}
               {if $errors.invalid_transaction_code}<div class="error">Invalid Transaction Code.</div>{/if}
               {if $errors.invalid_tfa_code}<div class="error">You have entered invalid 2FA code.</div>{/if}
               {/if}

               {if $preview}

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

               {else}

               <form method=post>
                  <input type=hidden name=a value=internal_transfer>
                  <input type=hidden name=action value=preview>
                  <input type=hidden name=say value="">

                  <table cellspacing=0 cellpadding=2 border=0>
                     <tr>
                        <td>Account Balance:</td>
                        <td>{$currency_sign}<b>{$userinfo.balance_totals.balance|amount_format}</b></td>
                     </tr>
                  </table>

                  <table cellspacing=0 cellpadding=2 border=0>
                     <tr>
                        <th></th>
                        <th>Processing</th>
                        <th>Available</th>
                        {if $have_hold}
                           <th>On Hold</th>
                        {/if}
                     </tr>
                     {assign var="wfch" value=1}
                     {foreach from=$ps item=p}
                        <tr>
                           <td>{if $p.available > 0}<input type="radio" name="ec" value="{$p.id}"
                                    {if $frm.ec == $p.id || $wfch}{assign var="wfch" value=0}checked{/if}>{/if}</td>
                              <td><img src="images/{$p.id}.gif" width=44 height=17 align=absmiddle> {$p.name|escape:html}</td>
                              <td><b>{$p.available|fiat:$p.ec}</b></td>
                              {if $have_hold}
                                 <td><b style="color:gray">{$p.hold|fiat:$p.ec}</b></td>
                              {/if}
                           </tr>
                        {/foreach}
                     </table>

                     <table cellspacing=0 cellpadding=2 border=0 width=200>
                        <tr>
                           <td colspan=2>&nbsp;</td>
                        </tr>
                        <tr>
                           <td>Transfer ({$currency_sign}):</td>
                           <td><input type=text name=amount
                                 value="{if $frm.amount}{$frm.amount|escape:htmlall}{else}10.00{/if}" class=inpts size=15>
                           </td>
                        </tr>
                        <tr>
                           <td>To Account:</td>
                           <td><input type=text name=account value="{$frm.account|escape:htmlall}" class=inpts size=15>
                           </td>
                        </tr>
                        <tr>
                           <td colspan=2><textarea name=comment class=inpts cols=45
                                 rows=4>{if $frm.comment}{$frm.comment|escape:htmlall}{else}Your comment{/if}</textarea>
                        </tr>
                        <tr>
                           <td>&nbsp;</td>
                           <td><input type=submit value="Send" class=sbmt></td>
                        </tr>
                     </table>
                  </form>

               {/if}

               {/if}

            </div>
            <!-- DASHBOARD WITHDRAW UI END -->


         </div>
      </div>

{include file="footer.tpl"}