{strip}
{include file='admin/header.tpl' title='contract'}

{include file='edit.tpl'
	title='contract'
    title_new='contract'
	fields=[
		'cID'=>[],
		'cTS'=>
			[
				'DT', 
				'Publication date!!',
				[
					'date_empty'=>'input date'
				], 
				'default'=>$today
			],
		'cTopic'=>
			[
				'L', 
				'Topic!!',
				[
					'topic_empty'=>'input topic'
				], 
				size=>50
			],
		'cAttn'=>
			[
				'CC', 
				'Important'
			],
		'cAnnounce'=>
			[
				'W',
				'Announce!!',
				[
					'ann_empty'=>'укажите анонс'
				], 
				'size'=>5
			],
		'cText'=>
			[
				'Y', 
				'Full text!!', 
				[
					'text_empty'=>'укажите текст новости'
				], 
				'size'=>15
			],
		'cDBegin'=>
			[
				'D', 
				'Show from'
			],
		'cDEnd'=>
			[
				'D', 
				'To'
			]
	]
	values=$el
}

{include file='admin/footer.tpl'}
{/strip}