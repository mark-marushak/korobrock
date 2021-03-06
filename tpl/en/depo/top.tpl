{strip}
{include file='header.tpl' title='Top of inviters'}

<h1>Top of inviters</h1>

<h2>By amount</h2>
{if $list1}
	<table class="FormatTable" border="1">
		<tr>
			<th>User</th>
			<th>Amount</th>
		</tr>
		{foreach from=$list1 key=i item=r}
			{if $r.RSUM > 0}
				<tr>
					<td>{$r.uLogin}</td>
					<td align="right">{_z($r.RSUM, 1)}</td>
				</tr>
			{/if}
		{/foreach}
	</table>
{/if}
<br>

<h2>By count</h2>
{if $list2}
	<table class="FormatTable" border="1">
		<tr>
			<th>User</th>
			<th>Count</th>
		</tr>
		{foreach from=$list2 key=i item=r}
			{if $r.RCNT > 0}
				<tr>
					<td>{$r.uLogin}</td>
					<td align="right">{$r.RCNT}</td>
				</tr>
			{/if}
		{/foreach}
	</table>
{/if}

{include file='footer.tpl'}
{/strip}