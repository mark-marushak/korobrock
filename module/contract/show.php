<?php

require_once('module/auth.php');

$table = 'contract';
$id_field = 'cID';
$out_link = moduleToLink('contractes');

try 
{

} 
catch (Exception $e) 
{
}

if (_GETN('id'))
	$el = $db->fetch1Row($db->select($table, '*', "$id_field=?d", array(_GETN('id'))));
if (!$el)
	goToURL($out_link);
stampArrayToStr($el, 'cTS', 0);
setPage('el', $el, 1);

showPage();

?>