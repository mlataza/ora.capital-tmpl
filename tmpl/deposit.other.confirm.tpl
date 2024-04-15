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
                            <h2 class="app__box-title vis mb-0">Please confirm your deposit</h2>
                            {include file="account_coin.tpl"}
                        </div>
                    </div>
                </div>

<div class="dashboard__wallet d-flex flex-column ng-scope">
                    <div id="dashboardwallet-boxz">
                        <div class="row flex-nowrap flex-lg-wrap">
                            
                            <div class="card dashboard_card">
                                        
                                <div class="dashboard__dynamic">

<!-- START -->
<div>
{**HYIPMixPanelIDV117**}


{if $ok == 1}
	
	{include file="mixpanel.tpl"}

    
    <div style="display: none;" id="HYIPManagerProPaymentModule" class="HYIPManagerProPaymentModule">
        {$description}<br><br>

        <table cellspacing=0 cellpadding=2 class="form deposit_confirm">
            {if $deposit.id > 0}
                <tr>
                    <th>Plan:</th>
                    <td>{$deposit.name|escape:html}</td>
                </tr>
                <tr>
                    <th>Profit:</th>
                    <td>{$deposit.percent}% {if $deposit.period == 'end' || $deposit.period == 'endh'}after {$deposit.periods}
                            {$deposit.time_units}{if $deposit.periods != 1}s{/if}{else}{$deposit.period_name} for
                            {if $deposit.periods == 0}lifelong
                            {else}{$deposit.periods}
                                {$deposit.time_units}{if $deposit.periods != 1}s{/if} {if $deposit.work_week}(mon-fri){/if}{/if}{/if}
                            </td>
                        </tr>
                        <tr>
                            <th>Principal Return:</th>
                            <td>{if $deposit.principal_return}Yes
                                    {if $deposit.principal_return_hold_percent > 0}, with
                                    {$deposit.principal_return_hold_percent|number_format:2}% fee{/if}
                                {else}No (included in profit)
                                {/if}</td>
                        </tr>
                        <tr>
                            <th>Principal Withdraw:</th>
                            <td>
                                {if $deposit.principal_withdraw}Available with
                                    {foreach from=$deposit.principal_withdraw_terms item=t name=wpt}
                                        {$t.percent}% fee {if $t.duration > 0}after {$t.duration} days{/if}{if !$smarty.foreach.wpt.last} or
                                    {/if}
                                {/foreach}
                                {if $deposit.principal_withdraw_duration_max} but before
                                {$deposit.principal_withdraw_duration_max|number_format} days{/if}
                            {else}Not available
                            {/if}
                        </td>
                    </tr>
                    {if $deposit.use_compound == 1}
                        <tr>
                            <th>Compound:</th>
                            <td>{$deposit.compound|number_format}%</td>
                        </tr>
                    {/if}
                {/if} {* $deposit.id *}
                {if $deposit.ec_fees.fee}
                    <tr>
                        <th>Credit Amount:</th>
                        <td>{$currency_sign}{$deposit.user_amount}</td>
                    </tr>
                    <tr>
                        <th>Deposit Fee:</th>
                        <td>{$deposit.ec_fees.percent}% + {$currency_sign}{$deposit.ec_fees.add_amount} (min.
                            {$currency_sign}{$deposit.ec_fees.fee_min} max. {$currency_sign}{$deposit.ec_fees.fee_max})</td>
                    </tr>
                {/if}
                {if $deposit.converted_amount}
                    <tr>
                        <th>Debit Amount:</th>
                        <td>{$currency_sign}{$deposit.converted_amount}</td>
                    </tr>
                    <tr>
                        <th>{$deposit.converted_fiat} Debit Amount:</th>
                        <td>{$deposit.amount}</td>
                    </tr>
                {else}
                    <tr>
                        <th>Debit Amount:</th>
                        <td>{$currency_sign}{$deposit.amount}</td>
                    </tr>
                {/if}
            </table>
            <br><br>
            <form name=spend method=post>
                <input type=hidden name=a value=deposit>
                <input type=hidden name=action value=confirm>
                <input type=hidden name=type value={$type}>
                <input type=hidden name=h_id value={$h_id}>
                <input type=hidden name=compound value={$compound}>
                <INPUT type=hidden name=amount value="{$famount}">



                {if $fields}
                    <table cellspacing=0 cellpadding=2 border=0>
                        <tr>
                            <td colspan=2><b>Required Information:</b></td>
                        </tr>
                        {section name=f loop=$fields}
                            <tr>
                                <td>{$fields[f].name}</td>
                                <td><input type="text" name="fields[{$fields[f].id}]" value="" class=inpts></td>
                            </tr>
                        {/section}
                    </table>


                    <br><input type=submit value="Save" class=sbmt> &nbsp;
                    <input type=button class=sbmt value="Cancel" onclick="document.location='?a=deposit'">
                
            {/if}
            </form>

        {else}

            {if $max_deposit_less == 1}
                Sorry, the maximal deposit is {$max_deposit_format}.<br>
            {/if}
            {if $wrong_paln == 1} The Plan does not exist. {/if}
            {if $not_enough_funds == 1} You have not enough funds to complete the operation.<br>{/if}
            {if $less_than_min == 1}
                The minimal spend amount for '{$plan_name}' is {$currency_sign}{$min_amount}.<br>
            {/if}
            {if $zero_amount}
                You should enter amount grater than zero.<br>
            {/if}

            <br>
            Click <a href="?a=deposit">here</a> and try again.


        {/if}
    </div>
    
    {include file="mixpanel_plugin.tpl"}
    </div> <!-- END -->
    
    </div>
    </div> <!-- END CARD -->
    
    
    </div>
    </div>
    </div>
    
    
            </div>
        </div>


    {include file="footer.tpl"}