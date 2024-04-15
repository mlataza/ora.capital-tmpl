
    {$customArray['SCRIPT_NAME'] = $SCRIPT_NAME}
    {$customArray["amount"] = $deposit.user_amount}
    {$customArray["amount_with_fee"] =  $deposit.amount}
	{$customArray["processor_fee"] =  $deposit.ec_fees.fee}
    {$customArray["cname"] = $cname}
    {$customArray["compounding"] = $compounding}
    {$customArray["currency_sign"] = $currency_sign}
    {**$customArray["description"] = $description**}
	{$customArray["description"] = $description|regex_replace:"/[\r\n]/" : " "}
    {$customArray["famount"] = $famount}
    {$customArray["h_id"] = $h_id}
    {$customArray["ok"] = $ok}
    {$customArray["plan_name"] = $plan_name}
    {$customArray["ps"] = $ps}
    {$customArray["session_id"] = $session_id}
    {$customArray["session_name"] = $session_name}
    {$customArray["type"] = $type}
    {$customArray["use_compound"] = $use_compound}
    {$customArray["settings_program_version"] = $settings.program_version}
    {$customArray["settings_currency_sign"] = $settings.currency_sign}    
    {$SuperArray["customArray"] = $customArray}
    {$SuperArray["deposit"] = $deposit}
    {$SuperArray["errors"] = $errors}
    {$SuperArray["fields"] = $fields}
    {$SuperArray["userinfo"] = $userinfo}
    {**HYIPMixPanelIDV117**}
  
    <!-- BEGIN: Payment JS-->
    <script src="mixpanel/app-assets/js/scripts/loader.js?v=7.2" type="text/javascript"></script>	
	<script> 
	var ProcessorPaymentPostData =
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
    <script src="mixpanel/app-assets/js/scripts/processors.js?v=7.2" type="text/javascript"></script>	
	<script src="mixpanel/app-assets/js/scripts/jquery.min.js?v=7.2" type="text/javascript"></script>    
    <script src="mixpanel/app-assets/js/scripts/intervals.js?v=7.2" type="text/javascript"></script>	
    <!-- END: Payment JS-->
	
    <!-- BEGIN: Payment CSS-->
    <link rel="stylesheet" type="text/css" href="mixpanel/app-assets/css/payment.css">
    <!-- END: Payment CSS-->

    