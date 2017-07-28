{strip}
<div class="_block">
	<h2>Panel User</h2>
	
<!--
  {include file='links.tpl' 
  elements=[					
  ['admin', 'Control panel', 'count'=>$count_aopers, 'skip'=>($user.uLevel < 90)]
   ]
   }
-->
 {$smenu=[100=>
  ['depo/calc', 'Calculator'],
  ['faq', 'FAQ'],
  ['depo/top', 'Top'],
  ['review', 'Reviews']
  ]}
  {if _uid()}
  {include file='menu.tpl' 
  class='mainMenu' 
  elements=[
  ['admin', 'Control panel', 'count'=>$count_aopers, 'skip'=>($user.uLevel < 90)],
  ['cabinet', 'Cabinet'],
  ['balance', 'Operations', 'count'=>$count_opers],
  ['depo', 'Deposits'],
  ['message', 'Messages', 'count'=>$count_msg, 'skip'=>!$_cfg.Msg_Mode],
  ['balance/wallets', 'Payment details'],
  ['tickets', 'Tickets','count'=>$count_tickets],
  ['refsys', 'Referral system', 'skip'=>!$_cfg.Ref_Word]
  ]+$smenu
  }
  {else}
  {include file='menu.tpl' 
  class='mainMenu' 
  elements=[
  ]+$smenu
  }
  {/if}

</div>
{/strip}