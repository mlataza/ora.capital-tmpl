<html prefix="og: http://ogp.me/ns#" lang="en" ng-app="{$settings.site_name}" class="ng-scope" style="height: 100%;">

<head>
    {literal}
    <style type="text/css">
        @charset "UTF-8";

        [ng\:cloak],
        [ng-cloak],
        [data-ng-cloak],
        [x-ng-cloak],
        .ng-cloak,
        .x-ng-cloak,
        .ng-hide:not(.ng-hide-animate) {
            display: none !important;
        }

        ng\:form {
            display: block;
        }

        .ng-animate-shim {
            visibility: hidden;
        }

        .ng-anchor {
            position: absolute;
        }

    </style>
    {/literal}
    <!-- base -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta content="ie=edge" http-equiv="x-ua-compatible">
    <meta name="google" content="notranslate">
    {include file="social_preview.tpl"}
	<title>
	{if $frm.a == 'account'}Account Overview
	{elseif $frm.a == 'deposit_list'}Shares Equity		
	{elseif $frm.a == 'deposit'}Open deposit
	{elseif $frm.a == 'withdraw'}Request Withdrawal
    {elseif $frm.a == 'deposit_history'}Transaction History
    {elseif $frm.page == 'address'}Wallet Addresses
    {elseif $frm.a == 'referals'}Referral Program
    {elseif $frm.a == 'referallinks'}Promotion banners
	{elseif $frm.a == 'edit_account'}Account settings
    {elseif $frm.a == 'security'}Security Settings
	{else}Account Overview
	{/if} - {$settings.site_name}	
	</title>
    <meta name="title" content="Account Overview - {$settings.site_name}">
    <meta name="description" content="">
    <!-- //base -->
    <!-- opengraph -->
    <meta property="og:type" content="website">
    <meta property="og:title" content="Account Overview - {$settings.site_name}">
    <meta property="og:description" content="">
    <meta property="og:site_name" content="{$settings.site_name}">
    <meta property="og:image:width" content="1200">
    <meta property="og:image:height" content="630">
    <meta name="twitter:card" content="summary_large_image">
    <meta property="og:image" content="styles/assets/app/img/preview.png">
    <link rel="image_src" href="styles/assets/app/img/preview.png">
    <meta name="twitter:image" content="styles/assets/app/img/preview.png">
    <!-- //opengraph -->
    <!-- favicons -->
    <link rel="apple-touch-icon" sizes="180x180" href="styles/assets/app/favicons/apple-touch-icon.png">
    <link rel="icon" type="image/png" sizes="16x16" href="styles/assets/app/favicons/favicon-16x16.png">
    <link rel="icon" type="image/png" sizes="32x32" href="styles/assets/app/favicons/favicon-32x32.png">
    <meta name="msapplication-TileColor" content="#da532c">
    <meta name="msapplication-TileImage" content="styles/assets/app/favicons/mstile-150x150.png">
    <meta name="msapplication-config" content="styles/assets/app/favicons/browserconfig.xml">
    <meta name="theme-color" content="#ffffff">
    <!-- //favicons -->
    <!-- styles -->
    <link rel="stylesheet" href="styles/assets/app/account-c72e34e09a.css">
    <style>
        .dashboard__dynamic-profit-graph {
            padding-top: 7px;
        }
    </style>

</head>