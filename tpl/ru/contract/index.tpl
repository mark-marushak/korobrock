{strip}
{include file='header.tpl' title='contract'}
{if $list}
	<table class="formatTable" width="600px">
	{foreach name=list from=$list key=id item=l}
		<tr>
			<td>
				<h2>{$l.cTopic}</h2>
				{if $l.cAttn}&nbsp;&nbsp;&nbsp;<b style="color: red;">Important!</b>{/if}
				<div>
                    {$l.cText}
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