{strip}
{if $list}
	{if $_cfg.About_InBlock == 1}
		{$l = reset($list)}
		<div>
			<a href="{_link module='about/show' chpu=[$l.aID, $l.aTopic]}">
				<h3>{$l.aTopic}</h3>
			</a>
			<small>{$l.aTS}</small>{if $l.aAttn}&nbsp;&nbsp;&nbsp;<b style="color: red;">Important!</b>{/if}
			<div>
				{$l.aAnnounce|nl2br}
			</div>
		</div>
	{else}
		{foreach name=list from=$list key=id item=l}
			<div>
				<a href="{_link module='about/show' chpu=[$l.aID, $l.aTopic]}">
					<h3>{$l.aTopic}</h3>
				</a>
				<small>{$l.aTS}</small>{if $l.aAttn}&nbsp;&nbsp;&nbsp;<b style="color: red;">Important!</b>{/if}
				<div>
					{$l.aAnnounce|nl2br|truncate:100}
				</div>
			</div>
		{/foreach}
	{/if}
{/if}
{/strip}