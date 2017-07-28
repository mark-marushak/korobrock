<?php

if ($_cfg['About_InBlock'] > 0)
{
	useLib('about');
	setPage('leftabout', aboutGetBlock(), 1);
}

?>