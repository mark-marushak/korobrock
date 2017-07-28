<?php

require_once('module/auth.php');

$table = 'Contract';
$id_field = 'cID';
	
try 
{

} 
catch (Exception $e) 
{
}

$n = $_cfg['Contract_ShowCount'];
if (!$n)
	$n = 10;
$list = opPageGet(_GETN('page'), $n, $table, '*', 
	'(cDBegin=0 or cDBegin<=?) and (cDEnd=0 or cDEnd>=?)', array(timeToStamp(), timeToStamp()),
	array(
		'cTS' => array('cAttn desc, cTS desc, cID desc')
	),
	_GET('sort'), $id_field
);
stampTableToStr($list, 'cTS', 0);
setPage('list', $list,'el', $el, 1);
stampArrayToStr($el, 'cTS', 0);

showPage();

?>