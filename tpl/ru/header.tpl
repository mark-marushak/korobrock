{strip}
<!DOCTYPE HTML">
<html>
	<head>
		<meta http-equiv="content-type" content="text/html; charset=utf-8" />
		<title>{if $title}{$title} | {/if}{$_cfg.Sys_SiteName}</title>
		<base href="{$root_url}" />
		<link rel="shortcut icon" href="favicon.ico">
        <link rel="stylesheet" type="text/css" href="../css/common.css">
		<link rel="stylesheet" type="text/css" href="{$img_path}main.css">
		<link rel="stylesheet" type="text/css" href="font-awesome/css/font-awesome.css">
		<script type="text/javascript" src="js/jquery.js"></script>
		<script type="text/javascript" src="js/common.js"></script>
		<script src="https://vk.com/js/api/openapi.js?146" type="text/javascript"></script>
	</head>
	<body>
	<div class="wrapper">
	{if !$short}
		<div class="main_fon"></div>

		{include file='line.top.tpl'}
		<div class="main" id="main">
		{if $_cfg.UI_TopPanel}
			{include file='panel.top.tpl'}
		{/if}
		<div class="main_container">
		<div class="main_row">
			{if $_cfg.UI_LeftPanel}
				<div class="aside aside_left">
					{include file='panel.left.tpl'}
				</div>
			{/if}
			<div class="main_contant">
				{include file='line.main.tpl'}
				{include file='info.tpl' _info=$tpl_info}
				<div class="main_contant-full">
	{/if}
{/strip}