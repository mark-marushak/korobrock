<?php

require_once('module/auth.php');

$table = 'About';
$id_field = 'aID';
$out_link = moduleToLink('aboutes');

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
stampArrayToStr($el, 'aTS', 0);
setPage('el', $el, 1);

showPage();

?>