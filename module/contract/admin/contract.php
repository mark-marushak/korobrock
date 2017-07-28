<?php

$_auth = 90;
require_once('module/auth.php');

$table = 'contract';
$id_field = 'cID';
$out_link = moduleToLink('contract/admin/contractes');

try 
{

	if (sendedForm()) 
	{
		checkFormSecurity();
		
		$a = $_IN;
		strArrayToStamp($a, 'cTS', 0);
		strArrayToStamp($a, 'cDBegin', 1);
		strArrayToStamp($a, 'cDEnd', 2);
		if (!$a['cTS'])
			setError('date_empty');
		if (!$a['cTopic'])
			setError('topic_empty');
		if (!$a['cAnnounce'])
			setError('ann_empty');
		if (!$a['cText'])
			setError('text_empty');
		if ($id = $db->save($table, $a, 
			'cDBegin, cDEnd, cTS, cTopic, cAttn, cAnnounce, cText', $id_field))
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