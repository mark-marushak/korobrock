{strip}
<div class="_block">
  <div><!-- Put this script tag to the <head> of your page -->

    <script type="text/javascript">
      {literal}
      VK.init({apiId:, onlyWidgets: true});
      {/literal}
    </script>

    <!-- Put this div tag to the place, where the Like block will be -->
    <div id="vk_recommended"></div>
    <script type="text/javascript">
      {literal}
      VK.Widgets.Recommended("vk_recommended", {limit: 5});
      {/literal}
    </script>
    </div>
  <div class="lang"><p>Выберете язык :
    <a href="/interface?lang=ru"><span class="ru"></span></a>
    <a href="/interface?lang=en"><span class="en"></span></a>
    </p></div>
  <ul>
    <li><a href="#">2% в День - 730% в год</a></li>

    {if _uid()}

    
    {if $curr1}
    <li>
      <a href="{_link module='balance' chpu=[$curr1.cID, $curr1.wBal,2]}">{_z($curr1.wBal, $curr1.cID, 2)} Рублей на счету</a>
    </li>
    {/if}
    <li>
      <a href="">5583 Довольных инвесторов</a>
    </li>
    <li><a href="">Заработок без вложений</a></li>
    <li><a href="">3 - 7% Рефералов</a></li>
    {/if}
  </ul>
  <br>
   <div class="data_colendar">
    <iframe src="https://informers.mt5.com/ru/calendar/run/i=0&type=0" frameborder="0" width="254" height="252" scrolling="no" title="MT5 - универсальный Форекс (Forex) портал для трейдеров"></iframe><noframes><a href="https://www.mt5.com/ru/">Форекс портал</a></noframes>
  </div>
  <br>
  <div class="vig_social">   
<!--     {include file='widget/vk/index.tpl'}-->

    {include file='widget/facebook/index.tpl'}
  </div>
  
</div>
{/strip}