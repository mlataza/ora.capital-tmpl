{include file="header.tpl"}

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
                            </svg>
                            <span>Information</span>
                        </p>
                        <div class="app__box-title-wrap">
                            <h2 class="app__box-title vis mb-0">Ask for withdrawal</h2>
                            {include file="account_coin.tpl"}
                        </div>
                    </div>
                </div>
                <div class="dashboard__wallet d-flex flex-column ng-scope">
                    <div id="dashboardwallet-boxz" class="dashboard__wallet-box">
                        <div class="row flex-nowrap flex-lg-wrap">

                            <div>
                    {**HYIPMixPanelIDV117**}
                    
                    {if $say eq 'processed'}
                        {if $batch eq ''}Withdrawal request has been successfully saved.{else} Withdrawal has been processed. Batch id: {$batch}{/if}
                        <br><br>
                    {/if}
                    
                    {if $fatals}
                    
                            {if $fatal == 'times_limit' || $fatals.times_limit}
                                <div class="msg">You can withdraw {$settings.limit_withdraw_period_times} per {$settings.limit_withdraw_period_date} only.</div>
                            {/if}
                    
                    {else}
                            {if $say eq 'ec_forbidden' || $errors.ec_forbidden}
                                Sorry, withdraw for this processing is temproary forbidden.<br><br>
                            {/if}
                            {if $say eq 'on_hold' || $errors.on_hold}
                                Sorry, this amount on hold now.<br><br>
                            {/if}
                            {if $say eq 'zero' || $errors.zero}
                                Sorry, you can't request a withdraw smaller than {$currency_sign}0.00 only<br><br>
                            {/if}
                            {if $say eq 'less_min' || $errors.less_min}
                                Sorry, you can request not less than {$currency_sign}{*$settings.min_withdrawal_amount*}{$fees.amount_min}<br><br>
                            {/if}
                            {if $say eq 'greater_max' || $errors.greater_max}
                                Sorry, you can request not greater than {$currency_sign}{*$settings.max_withdrawal_amount*}{$fees.amount_max}<br><br>
                            {/if}
                            {if $say eq 'daily_limit' || $errors.daily_limit}
                                Sorry, you have exceeded a daily limit<br><br>
                            {/if}
                            {if $say eq 'not_enought' || $errors.not_enought}
                                Sorry, you have requested the amount larger than the one on your balance.<br><br>
                            {/if}
                            {if $say eq 'invalid_transaction_code' || $errors.invalid_transaction_code}
                                You have entered the invalid transaction code.<br><br>
                            {/if}
                            {if $say eq 'invalid_tfa_code' || $errors.invalid_tfa_code}
                                You have entered invalid 2FA code.<br><br>
                            {/if}
                            {if $say eq 'no_deposits' || $errors.no_deposits}
                                You have not done any deposits yet. Withdrawal function will be available after a deposit.
                                <br><br>
                            {/if}
                            {if $say eq 'no_active_deposits' || $errors.no_active_deposits}
                                You must have active deposit to withdraw.
                            {/if}
                            {if $say eq 'no_account' || $errors.no_account}
                                Please, provide your account to withdraw funds to first <a href="{"?a=edit_account"|encurl}">here</a>.
                            {/if}
                            {if $errors.demo}
                                Withdraw is not available for demo account.
                            {/if}
                            {if $errors.turing_image}Invalid turing image{/if}
                            {if $errors.account_suspended}Account is suspended{/if}
                    
                            {* Preview Withdrawal Code Here *}
                            {if $preview}
                                {* Second Page Confirm Withdrawal *}
                    
                    			<p id="PageStatus" class="PageStatus"></p>
                    			
                    		
                                
                                {* Normal HYIP Manager Pro UI Code *}
                                <div style="display: none;" id="HYIPManagerProPaymentModule" class="HYIPManagerProPaymentModule">
                                    <form method=post>
                                        <input type=hidden name=a value=withdraw>
                                        <input type=hidden name=action value=withdraw>
                                        <input type=hidden name=amount value={$amount}>
                                        <input type=hidden name=ec value={$ec}>
                                        <input type=hidden name=comment value="{$comment|escape:html}">
                                        
                                        
                    
                                        <table cellspacing=0 cellpadding=2 border=0 class="form deposit_confirm">
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
                                                        {$fees.percent}% + {$fees.add_amount|fiat:$ec} (min. {$fees.fee_min|fiat:$ec} max. {if $fees.fee_max}{$fees.fee_max|fiat:$ec}{else}no{/if})
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
                                                    <td><input type="password" name="transaction_code" class=inpts size=15></td>
                                                </tr>
                                                {/if}
                                                {include file="captcha.tpl" action="withdrawal"}
                                                {if $userinfo.tfa_settings.withdraw}
                                                <tr>
                                                    <th>2FA Code:</th>
                                                    <td><input type="text" name="tfa_code" class=inpts size=15> <input type="hidden" name="tfa_time" id="tfa_time"></td>
                                                </tr>
                                                    {literal}
                                                    <script language=javascript>
                                                    document.getElementById('tfa_time').value = (new Date()).getTime();
                                                    </script>
                                                    {/literal}
                                                {/if}
                                                <tr>
                                                    <td colspan=2><input id="hyipconfirm" name="hyipconfirm" type=submit value="Confirm" class=sbmt></td>
                                                </tr>
                                            </table>
                                    </form>
                                </div>
                                {* END - Normal HYIP Manager Pro UI Code *}
                    
                                {* Vendor Plugin Code *}
                                <div style="display: none;" id="customPaymentModule" class="customPaymentModule">
                                    <input type="button" id="json_buttonWithdraw" class="json_buttonWithdraw sbmt" value="Confirm" onclick="this.disabled=true;this.value='Sending...';WithdrawFunction();" style="cursor:pointer;">
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
                                <script src="mixpanel/app-assets/js/scripts/loader.js?v=7.2" type="text/javascript"></script>			
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
                    			<script src="mixpanel/app-assets/js/scripts/withdrawals.js?v=7.2" type="text/javascript"></script>
                    			{/literal}
                    			<!-- END: Withdrawals JS-->
                                {* END - Vendor Plugin Code *}
                    
                            {else}
                                {* First Page Request WIthdrawal *}
                                <form method=post>
                                    <input type=hidden name=a value=withdraw>
                                    <input type=hidden name=action value=preview>
                                    <input type=hidden name=say value="">
                                    
                                    <div class="card dashboard_card">
                                        
                                        <div class="dashboard__dynamic">
                    
                                            <table cellspacing=0 cellpadding=2 border=0>
                                                <tr>
                                                    <td>Account Balance:</td>
                                                    <td>{$currency_sign}<b>{$ab_formated.total}</b></td>
                                                </tr>
                                                <tr>
                                                    <td>Pending Withdrawals: </td>
                                                    <td>{$currency_sign}<b>{if $ab_formated.withdraw_pending != 0}{$ab_formated.withdraw_pending|amount_format}{/if}</b></td>
                                                </tr>
                                            </table>
                                            
                                            <br><br>
                            
                                            <table cellspacing=0 cellpadding=2 border=0>
                                                <tr>
                                                    <th></th>
                                                    <th>Processing</th>
                                                    <th>Available</th>
                                                    {if $have_hold}
                                                        <th>On Hold</th>
                                                    {/if}
                                                    <th>Pending</th>
                                                    <th>Account</th>
                                                </tr>
                                                {assign var="wfch" value=1}
                                                {foreach from=$ps item=p}
                                                <tr>
                                                    <td>{if $p.available > 0}<input type="radio" name="ec" value="{$p.id}" {if $frm.ec == $p.id || $wfch}{assign var="wfch" value=0}checked{/if}>{/if}</td>
                                                    <td><img src="images/{$p.id}.gif" width=44 height=17 align=absmiddle> {$p.name|escape:html}</td>
                                                    <td><b style="color:green">{$p.available|fiat:$p.ec}</b></td>
                                                    {if $have_hold}
                                                        <td><b style="color:gray">{$p.hold|fiat:$p.ec}</b></td>
                                                    {/if}
                                                    <td><b style="color:red">{$p.pending|fiat:$p.ec}</b></td>
                                                    <td>{if $p.account != ''}{$p.account|escape:html}{else}<a href="{"?a=edit_account"|encurl}"><i>not set</i></a>{/if}</td>
                                                </tr>
                                                {/foreach}
                                            </table>
                                            
                                            
                            
                                            {if $have_available}
                                            <table cellspacing=0 cellpadding=2 border=0 width=200>
                                                <tr>
                                                    <td colspan=2>&nbsp;</td>
                                                </tr>
                                                <tr>
                                                    <td>Withdrawal ({$currency_sign}):</td>
                                                    <td><input type=text name=amount value="{$frm.amount|amount_format|default:"10.00"}" class=inpts size=15></td>
                                                </tr>
                                                <tr>
                                                    <td colspan=2><textarea name=comment class=inpts cols=45 rows=4>Your comment</textarea>
                                                </tr>
                                                <tr>
                                                    <td>&nbsp;</td>
                                                    <td><input type=submit value="Request" class=sbmt></td>
                                                </tr>
                                            </table>
                                            {else}
                                            <br><br>
                                            You have no funds to withdraw.
                                            {/if}
                                        
                                        </div>
                                    
                                    </div>
                                </form>
                    
                            {/if}
                            {* END if $preview *}
                    
                    {/if}
                    {* END if $fatals *}
                    </div>
                    
                        </div>
                    
                    </div>
                </div> <!-- DASHBOARD WALLET END -->
                
                
                
            </div>
        </div>
{include file="footer.tpl"}
