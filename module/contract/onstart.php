<?php

if ($_cfg['contract_InBlock'] > 0)
{
	useLib('contract');
	setPage('leftcontract', contractGetBlock(), 1);
}

?>