<?php

function aboutGetBlock($n = 0)
{
	global $db, $_cfg;
	if ($n <= 0)
		$n = exValue(5, $_cfg['About_InBlock']);
	$list = $db->fetchIDRows($db->select('About', '*', 
		'(aDBegin=0 or aDBegin<=?) and (aDEnd=0 or aDEnd>=?)', array(timeToStamp(), timeToStamp()),
		'aAttn desc, aTS desc, aID desc', $n), false, 'aID');
	stampTableToStr($list, 'aTS', 0);
	return $list;
}

?>