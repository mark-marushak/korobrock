{strip}
{include file='header.tpl' title='contract'}

<h1>contract</h1>

<h2>{$el.cTopic}</h2>

<div style="width: 600px; text-align: left;">
	<small>{$el.cTS}</small>
	{if $el.cAttn}&nbsp;&nbsp;&nbsp;<b style="color: red;">Important!</b>{/if}
	<div style="padding: 10px; background-color: #F3F3F3;">
		{$el.cText}
	</div>
</div>
<br>

{include file='footer.tpl'}
{/strip}