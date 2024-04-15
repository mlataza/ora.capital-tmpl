{**HYIPMixPanelIDV117**}

<style>
th {
    text-align: left;
}

.deposit-process-wrap .deposit-process{
    cursor: pointer;
}

.deposit-cancel-wrap .deposit-cancel{
    cursor: pointer;
}
</style>
     
	 
	<div id ="customPaymentModuleData" >   
    <table cellspacing=0 cellpadding=2 class="form deposit_confirm">
            {if $deposit.id > 0}
                <tr>
                    <th>Plan:</th>
                    <td>{$deposit.name|escape:html}</td>
					<td rowspan="6"><img style="display: none;margin: 0 auto;" id="qr_code" name="qr_code" class="qr_code" src="" alt="qr code" width="150" height="150"></td>
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
						<td rowspan="6" style="padding-left: 40px;"><img style="display: none;margin: 0 auto;" id="qr_code" name="qr_code" class="qr_code" src="" alt="qr code" width="110" height="110"></td>
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
	</div>
    <p id="Createtransaction"><b>Order status: </b><span class="createtransstatus">Creating payment order</span></p>
    <p id="PageStatus" class="PageStatus"></p>
    
    {* --- Custom Vendor Code for UI --- *}
    <div style="display: none;" id="customPaymentModule" name="customPaymentModule" class="customPaymentModule">	
        <!-- TIP: Remove The Comment From The Line Where You Want To Show The Field -->
        <!-- <p id="paymentprocessorname" class="paymentprocessorname">Payment Processor: </p> -->
        <!-- <p id="txn_id" class="txn_id">Transaction created with ID: </p> -->
        <p id="payment_details" class="payment_details">Please send exactly <b id="payment_amount"></b> <b id="currency2"></b> to address <span style="text-decoration: underline;font-style: italic;color: #666699;" id="payment_address"></span>
        <!-- <p id="global_status_url">Payment: <span id="status_url" class="status_url" ></span></p> --> 		
        <div style="display: none;" id ="PerfectMoneyModule" name="PerfectMoneyModule" class="PerfectMoneyModule">
            
			<form id ="PerfectMoneyForm" name="PerfectMoneyForm" class="PerfectMoneyForm" action="" method="POST">
                <p>
                    <input type="hidden" id="PAYEE_ACCOUNT" name="PAYEE_ACCOUNT" value="">
                    <input type="hidden" id="PAYEE_NAME" name="PAYEE_NAME" value="">
                    <input type="hidden" id="PAYMENT_AMOUNT" name="PAYMENT_AMOUNT" value="">
                    <input type="hidden" id="PAYMENT_UNITS" name="PAYMENT_UNITS" value="">
                    <input type="hidden" id="PAYMENT_ID" name="PAYMENT_ID" value="">
                    <input type="hidden" id="STATUS_URL" name="STATUS_URL" value="">
                    <input type="hidden" id="PAYMENT_URL" name="PAYMENT_URL" value="">
                    <input type="hidden" id="NOPAYMENT_URL" name="NOPAYMENT_URL" value="">
                    <input type="hidden" id="BAGGAGE_FIELDS" name="BAGGAGE_FIELDS" value="">
                    <input type="hidden" id="ORDER_NUM" name="ORDER_NUM" value="">
                    <input type="hidden" id="CUST_NUM" name="CUST_NUM" value="">
                    
					
					<span class="deposit-process-wrap"> <input id="PAYMENT_METHOD" name="PAYMENT_METHOD" type="submit" value="Process" class="sbmt deposit-process"> </span>
					<span class="deposit-cancel-wrap"> <input type="button" value="Cancel" class="sbmt deposit-cancel" onclick="history.go(-1)"> </span>
                </p>
            </form>
        </div>

        <div style="display: none;" id ="PayeerModule" name="PayeerModule" class="PayeerModule">            
            
			<form method="post" id="PayeerForm" name="PayeerForm" class="PayeerForm" action="">
                <input type="hidden" id="m_shop" name="m_shop" value="">
                <input type="hidden" id="m_orderid" name="m_orderid" value="">
                <input type="hidden" id="m_amount" name="m_amount" value="">
                <input type="hidden" id="m_curr" name="m_curr" value="">
                <input type="hidden" id="m_desc" name="m_desc" value="">
                <input type="hidden" id="m_sign" name="m_sign" value="">               
               
				
				<span class="deposit-process-wrap"> <input name="m_process" type="submit" value="Process" class="sbmt deposit-process"> </span>
				<span class="deposit-cancel-wrap"> <input type="button" value="Cancel" class="sbmt deposit-cancel" onclick="history.go(-1)"> </span>
            </form>
        </div>
		
		<div style="display: none;" id ="PaykassaUSDModule" name="PaykassaUSDModule" class="PaykassaUSDModule">
            
			<form id ="PaykassaUSDForm" name="PaykassaUSDForm" class="PaykassaUSDForm" action="" method="POST">
                <p>
					<span class="deposit-process-wrap"> <input type="submit" value="Process" class="sbmt deposit-process"> </span>
					<span class="deposit-cancel-wrap"> <input type="button" value="Cancel" class="sbmt deposit-cancel" onclick="history.go(-1)"> </span>
                </p>
            </form>
        </div>
		
		<div style="display: none;" id ="EpaycoreUSDModule" name="EpaycoreUSDModule" class="EpaycoreUSDModule">
            
			<form id ="EpaycoreUSDForm" name="EpaycoreUSDForm" class="EpaycoreUSDForm" action="" method="POST">
            <input type="hidden" id="epc_merchant_id" name="epc_merchant_id" value="">
            <input type="hidden" id="epc_merchant_password" name="epc_merchant_password" value="">
            <input type="hidden" id="epc_commission" name="epc_commission" value="">
            <input type="hidden" id="epc_amount" name="epc_amount" value="">
            <input type="hidden" id="epc_currency_code" name="epc_currency_code" value="">
            <input type="hidden" id="epc_order_id" name="epc_order_id" value="">
            <input type="hidden" id="epc_success_url" name="epc_success_url" value="">
            <input type="hidden" id="epc_cancel_url" name="epc_cancel_url" value="">
            <input type="hidden" id="epc_status_url" name="epc_status_url" value="">
            <input type="hidden" id="epc_descr" name="epc_descr" value="">
            <input type="hidden" id="epc_sign" name="epc_sign" value="">			
                <p>
					<span class="deposit-process-wrap"> <input type="submit" value="Process" class="sbmt deposit-process"> </span>
					<span class="deposit-cancel-wrap"> <input type="button" value="Cancel" class="sbmt deposit-cancel" onclick="history.go(-1)"> </span>
                </p>
            </form>
        </div>



        <div id="transstatusdiv" name="transstatusdiv" class="transstatusdiv">
            <br/>
            <div><b>Order status: </b><span id="transstatus" class="transstatus">Waiting for payment...</span></div>
			<div id="transtatusdate" class="transtatusdate"></div>
        </div>
    </div>