<!DOCTYPE html>
<html prefix="og: http://ogp.me/ns#" lang="en" ng-app="templaterex">

<head>
    <!-- base -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta content="ie=edge" http-equiv="x-ua-compatible">
    <meta name="google" content="notranslate">
    <title>
	{if $frm.a == 'home'}Home
	{elseif $frm.a == 'news'}News	
	{elseif $frm.page == 'offer'}Tariffs
	{elseif $frm.page == 'partners'}Partners
	{elseif $frm.a == 'paidout'}Statistics
	{elseif $frm.page == 'reviews'}Feedback
	{elseif $frm.page == 'instructions'}Instructions
	{elseif $frm.a == 'faq'}F.A.Q
	{elseif $frm.a == 'support'}Support
	{elseif $frm.a == 'rules'}Service terms
	{elseif $frm.page == 'privacy'}Confidentiality policy
	{else}Home
	{/if} - {$settings.site_name}	
	</title>
    <meta name="title" content="Home - {$settings.site_name}">
    <meta name="description" content="">
    <!-- //base -->

    {include file="social_preview.tpl"}
    
    {literal}
    <!-- favicons -->
    <link rel="apple-touch-icon" sizes="180x180" href="styles/assets/app/favicons/apple-touch-icon.png">
    <link rel="icon" type="image/png" sizes="16x16" href="styles/assets/app/favicons/favicon-16x16.png">
    <link rel="icon" type="image/png" sizes="32x32" href="styles/assets/app/favicons/favicon-32x32.png">
    <meta name="msapplication-TileColor" content="#da532c">
    <meta name="msapplication-TileImage" content="styles/assets/app/favicons/mstile-150x150.png">
    <meta name="msapplication-config" content="styles/assets/app/favicons/browserconfig.xml">
    <meta name="theme-color" content="#ffffff">
    <link rel="shortcut icon" href="favicon.ico">
    <!-- //favicons -->

    <!-- styles -->
    <link rel="stylesheet" href="styles/assets/app/facade-614a255648.css">
    <!-- //styles -->

    <!-- scripts -->    
    <script src="styles/assets/app/vendor-3fd0c81b98.js"></script>
    <script src="styles/assets/app/app-e047933581.js"></script>
     <script>
        app.value('Global', {           
            "url": "\/",
            "currencies": [{
                "code": "usd",
                "name": "US Dollar"
            }],
        
        });

    </script>
    <script>
        app.value('PageData', {
        });
    </script>
    <!-- //scripts -->
    {/literal}
</head>