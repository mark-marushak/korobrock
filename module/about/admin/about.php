<?php

$_auth = 90;
require_once('module/auth.php');

$table = 'About';
$id_field = 'aID';
$out_link = moduleToLink('about/admin/aboutes');

try 
{

	if (sendedForm()) 
	{
		checkFormSecurity();
		
		$a = $_IN;
		strArrayToStamp($a, 'aTS', 0);
		strArrayToStamp($a, 'aDBegin', 1);
		strArrayToStamp($a, 'aDEnd', 2);
		if (!$a['aTS'])
			setError('date_empty');
		if (!$a['aTopic'])
			setError('topic_empty');
		if (!$a['aAnnounce'])
			setError('ann_empty');
		if (!$a['aText'])
			setError('text_empty');
		if ($id = $db->save($table, $a, 
			'aDBegin, aDEnd, aTS, aTopic, aAttn, aAnnounce, aText', $id_field))
			showInfo('Saved', $out_link . "?id=$id");
		showInfo('*Error');
	}

} 
catch (Exception $e) 
{
}

if (!isset($_GET['add']))
{
	if (_GETN('id'))
		$el = $db->fetch1Row($db->select($table, '*', "$id_field=?d", array(_GETN('id'))));
	if (!$el)
		goToURL(moduleToLink() . '?add');
	stampArrayToStr($el, 'aTS', 0);
	stampArrayToStr($el, 'aDBegin, aDEnd', 1);
	setPage('el', $el, 2);
}
else
	setPage('today', timeToStr(time(), 0));

showPage();

?>