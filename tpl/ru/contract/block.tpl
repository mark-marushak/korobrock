{strip}
{if $list}
	{if $_cfg.contract_InBlock == 1}
		{$l = reset($list)}
		<div>
			<a href="{_link module='contract/show' chpu=[$l.cID, $l.cTopic]}">
				<h3>{$l.cTopic}</h3>
			</a>
			<small>{$l.cTS}</small>{if $l.cAttn}&nbsp;&nbsp;&nbsp;<b style="color: red;">Important!</b>{/if}
			<div>
				{$l.cAnnounce|nl2br}
			</div>
		</div>
	{else}
		{foreach name=list from=$list key=id item=l}
			<div>
				<a href="{_link module='contract/show' chpu=[$l.cID, $l.cTopic]}">
					<h3>{$l.cTopic}</h3>
				</a>
				<small>{$l.cTS}</small>{if $l.cAttn}&nbsp;&nbsp;&nbsp;<b style="color: red;">Important!</b>{/if}
				<div>
					{$l.cAnnounce|nl2br|truncate:100}
				</div>
			</div>
		{/foreach}
	{/if}
{/if}
{/strip}