{strip}
{include file='header.tpl' title='About'}

<h1>About</h1>

{if $list}
	<table class="formatTable" width="600px">
	{foreach name=list from=$list key=id item=l}
		<tr>
			<td>
				<h2>{$l.aTopic}</h2>
				{if $l.aAttn}&nbsp;&nbsp;&nbsp;<b style="color: red;">Important!</b>{/if}
				<div>
                    {$l.aText}
				</div>
			</td>
		</tr>
		

	{/foreach}
	</table>
	{include file='pl.tpl'}
	<br>
{/if}

{include file='footer.tpl'}
{/strip}