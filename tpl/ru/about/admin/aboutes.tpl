{strip}
{include file='admin/header.tpl' title='About'}

{include file='list.tpl' 
    title='About'
	url='*'
	fields=[
		'aID'=>['ID'],
		'aTS'=>['Date'],
		'aAnnounce'=>['Announce'],
		'aDBegin'=>['Show from'],
		'aDEnd'=>['To'],
		'aAttn'=>['<small>Important</small>']
	]
	values=$list
	row='*'
	btns=['del'=>'Delete']
}

<a href="{_link module='about/admin/about'}?add" class="button-green">Add news</a><br>

{include file='admin/footer.tpl'}
{/strip}