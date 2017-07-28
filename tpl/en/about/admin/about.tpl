{strip}
{include file='admin/header.tpl' title='About'}

{include file='edit.tpl'
	title='About'
    title_new='About'
	fields=[
		'aID'=>[],
		'aTS'=>
			[
				'DT', 
				'Publication date!!',
				[
					'date_empty'=>'input date'
				], 
				'default'=>$today
			],
		'aTopic'=>
			[
				'L', 
				'Topic!!',
				[
					'topic_empty'=>'input topic'
				], 
				size=>50
			],
		'aAttn'=>
			[
				'CC', 
				'Important'
			],
		'aAnnounce'=>
			[
				'W',
				'Announce!!',
				[
					'ann_empty'=>'укажите анонс'
				], 
				'size'=>5
			],
		'aText'=>
			[
				'Y', 
				'Full text!!', 
				[
					'text_empty'=>'укажите текст новости'
				], 
				'size'=>15
			],
		'aDBegin'=>
			[
				'D', 
				'Show from'
			],
		'aDEnd'=>
			[
				'D', 
				'To'
			]
	]
	values=$el
}

{include file='admin/footer.tpl'}
{/strip}