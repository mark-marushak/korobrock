{strip}
<div class="_block">

<div class="date_of_neft">
  <iframe src="https://informers.mt5.com/ru/price_resources/run/s=3&type=0" frameborder="0" width="178" height="204" scrolling="no" title="MT5 - универсальный Форекс (Forex) портал для трейдеров"></iframe><noframes><a href="https://www.mt5.com/ru/">Форекс портал</a></noframes>
  </div>
  <div class="date_of_text">
    <iframe src="https://informers.mt5.com/ru/forex_terms/run/i=0&type=0&lang=ru" frameborder="0" width="170" height="170" scrolling="no" title="MT5 - универсальный Форекс (Forex) портал для трейдеров"></iframe><noframes><a href="https://www.mt5.com/ru/">Форекс портал</a></noframes>
  </div>
  <div class="data_of_market">
  <iframe src="https://informers.mt5.com/ru/rate/run/i=0&type=0" frameborder="0" width="188" height="314" scrolling="no" title="MT5 - универсальный Форекс (Forex) портал для трейдеров"></iframe><noframes><a href="https://www.mt5.com/ru/">Форекс портал</a></noframes>
</div>


  <!--
{include file='links.tpl' 
elements=[					
['admin', 'Control panel', 'count'=>$count_aopers, 'skip'=>($user.uLevel < 90)]
]
}
-->
 <!--  {$smenu=[
  100=>
  ['faq', 'FAQ'],
  ['depo/top', 'Учасники'],
  ['news', 'Отзывы']
  ]}
  {if _uid()}
  {include file='menu.tpl' 
  class='mainMenu' 
  elements=[
  ['admin', 'Панель управления', 'count'=>$count_aopers, 'skip'=>($user.uLevel < 90)],
  ['cabinet', 'Кабинет'],
  ['balance', 'Операции', 'count'=>$count_opers],
  ['depo', 'Депозиты'],
  ['message', 'Сообщения', 'count'=>$count_msg, 'skip'=>!$_cfg.Msg_Mode],
  ['balance/wallets', 'Платежные реквизиты'],
  ['tickets', 'Тикеты','count'=>$count_tickets],
  ['refsys', 'Реф.система', 'skip'=>!$_cfg.Ref_Word]
  ]+$smenu
  }
  {else}
  {include file='menu.tpl' 
  class='mainMenu' 
  elements=[
  ]+$smenu
  }
  {/if}
 -->
</div>
{/strip}