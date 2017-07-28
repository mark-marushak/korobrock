{strip}
<!DOCTYPE HTML">
<html>
	<head>
		<meta http-equiv="content-type" content="text/html; charset=utf-8" />
		<title>{if $title}{$title}{if $up_category} - {$up_category}{/if} | {/if}Control panel | {$_cfg.Sys_SiteName}</title>
		<base href="{$root_url}" />
		<link rel="shortcut icon" href="favicon.ico">
      <link rel="stylesheet" type="text/css" href="../css/common.css">
        <link rel="stylesheet" type="text/css" href="{$img_path}style.css">
		<script type="text/javascript" src="js/jquery.js"></script>
	</head>
	<body>
	<div class="wrapper">
	{if !$short}
		{include file='line.top.tpl'}
		<div class="_body">
		<table class="formatTable" width="100%">
		<tr>
			<td align="center" valign="top">
				{if $needupdatedb}
					<p class="note">
						<b>WARNING!</b><br>
						You must update the database structure through <a href="{$_cfg.cfg_link}">Configurator</a> 
					</p>
				{/if}
				{include file='admin/line.module.tpl'}
				{include file='info.tpl' _info=$tpl_info}
				<div class="_content">
	{/if}
{/strip}