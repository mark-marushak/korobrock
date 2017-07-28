<?php

function contractGetBlock($n = 0)
{
	global $db, $_cfg;
	if ($n <= 0)
		$n = exValue(5, $_cfg['contract_InBlock']);
	$list = $db->fetchIDRows($db->select('contract', '*', 
		'(cDBegin=0 or cDBegin<=?) and (cDEnd=0 or cDEnd>=?)', array(timeToStamp(), timeToStamp()),
		'cAttn desc, cTS desc, cID desc', $n), false, 'cID');
	stampTableToStr($list, 'cTS', 0);
	return $list;
}

?>