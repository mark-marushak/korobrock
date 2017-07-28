{strip}
{include file='admin/header.tpl' title='contract'}

{include file='list.tpl' 
    title='contract'
	url='*'
	fields=[
		'cID'=>['ID'],
		'cTS'=>['Date'],
		'cAnnounce'=>['Announce'],
		'cDBegin'=>['Show from'],
		'cDEnd'=>['To'],
		'cAttn'=>['<small>Important</small>']
	]
	values=$list
	row='*'
	btns=['del'=>'Delete']
}

<a href="{_link module='contract/admin/contract'}?add" class="button-green">Add news</a><br>

{include file='admin/footer.tpl'}
{/strip}