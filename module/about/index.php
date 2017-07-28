<?php

require_once('module/auth.php');

$table = 'About';
$id_field = 'aID';
	
try 
{

} 
catch (Exception $e) 
{
}

$n = $_cfg['About_ShowCount'];
if (!$n)
	$n = 10;
$list = opPageGet(_GETN('page'), $n, $table, '*', 
	'(aDBegin=0 or aDBegin<=?) and (aDEnd=0 or aDEnd>=?)', array(timeToStamp(), timeToStamp()),
	array(
		'aTS' => array('aAttn desc, aTS desc, aID desc')
	),
	_GET('sort'), $id_field
);
stampTableToStr($list, 'aTS', 0);
setPage('list', $list,'el', $el, 1);
stampArrayToStr($el, 'aTS', 0);

showPage();

?>