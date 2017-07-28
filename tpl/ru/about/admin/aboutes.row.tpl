{strip}
<td>
	{$l.aID}
</td>
<td class="nowrap">
	<small>{$l.aTS}</small>
</td>
<td>
	<a href="{_link module='about/admin/about'}?id={$l.aID}">{$l.aAnnounce|truncate: 70}</a>
</td>
<td>
	<small>{$l.aDBegin}</small>
</td>
<td>
	<small>{$l.aDEnd}</small>
</td>
<td>
	{if $l.aAttn}Yes{/if}
</td>
{/strip}