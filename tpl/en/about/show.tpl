{strip}
{include file='header.tpl' title='About'}

<h1>about</h1>

<h2>{$el.aTopic}</h2>

<div style="width: 600px; text-align: left;">
	<small>{$el.aTS}</small>
	{if $el.aAttn}&nbsp;&nbsp;&nbsp;<b style="color: red;">Important!</b>{/if}
	<div style="padding: 10px; background-color: #F3F3F3;">
		{$el.aText}
	</div>
</div>
<br>

{include file='footer.tpl'}
{/strip}