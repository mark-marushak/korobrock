{strip}
<td>
	{$l.cID}
</td>
<td class="nowrap">
	<small>{$l.cTS}</small>
</td>
<td>
	<a href="{_link module='contract/admin/contract'}?id={$l.cID}">{$l.cAnnounce|truncate: 70}</a>
</td>
<td>
	<small>{$l.cDBegin}</small>
</td>
<td>
	<small>{$l.cDEnd}</small>
</td>
<td>
	{if $l.cAttn}Yes{/if}
</td>
{/strip}